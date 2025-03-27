//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UnitINV.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormINV *FormINV;
//---------------------------------------------------------------------------
__fastcall TFormINV::TFormINV(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFormINV::FormShow(TObject *Sender)
{
	WCNT->Open();
	WINV->Open();
	if (Type == "Purchase") { INV = DM->TPUR; INVITM = DM->TPURITM; invtype = "P"; }
	if (Type == "Sale")     { INV = DM->TSAL; INVITM = DM->TSALITM; invtype = "S"; }
	CBAllowModify->Visible = true;

	if (Mode == "Modify") {
		CBAllowModify->Checked = false;
		WINV->Locate("INV_ID", INV->FieldByName("INV_ID")->Value);
		WCNT->Locate("CNT_ID",WINVINV_CNT_ID->Value);
		WINVPAY->Filter    = "INVPAY_INV_ID = " + UnicodeString(WINVINV_ID->Value);
		WINVPAY->Filtered  = true;
		WINVPAY->Open();
		WINV->Edit();

		Caption = "  Modify " + Type + " N° " + WINVINV_NUMBER->Text;
		MonthCalendar1->Date = WINVINV_DATE->AsDateTime;

		total     = INV->FieldByName("Total")->Value;
		due       = INV->FieldByName("Due")->Value;
		itemcount = INVITM->RecordCount;
	}

	if (Mode == "New") {
		CBAllowModify->Checked = true;
		WCNT->Locate("CNT_ID",DM->TCNTCNT_ID->Value);
		WINV->Append();
		if (Type == "Purchase") WINVINV_NUMBER->Value = FMain->GetNextPURCode();
		if (Type == "Sale")     WINVINV_NUMBER->Value = FMain->GetNextSALCode();

		Caption = "  Create New " + Type + " N° " + WINVINV_NUMBER->Value;
		MonthCalendar1->Date = Now();

		total     = 0;
		due       = 0;
		itemcount = 0;
	}

	if (Mode == "Lock") {
		CBAllowModify->Visible = false;
		WINV->Locate("INV_ID", INV->FieldByName("INV_ID")->Value);
		WCNT->Locate("CNT_ID",WINVINV_CNT_ID->Value);
		CBAllowModify->Checked = true;
		Caption = "  Consult " + Type + " N° " + WINVINV_NUMBER->Value + " (Locked)";
		WINVPAY->Filter    = "INVPAY_INV_ID = " + UnicodeString(WINVINV_ID->Value);
		WINVPAY->Filtered  = true;
		WINVPAY->Open();
		MonthCalendar1->Date = WINVINV_DATE->AsDateTime;
	}
	EnableDisable();
}

void __fastcall TFormINV::FormClose(TObject *Sender, TCloseAction &Action)
{
	WINVPAY->Close();
	WINV->Close();
	WCNT->Close();
}

void __fastcall TFormINV::ButtonCancelClick(TObject *Sender)
{
	Close();
}

void __fastcall TFormINV::ButtonOKClick(TObject *Sender)
{
	UpdateINV();
	Close();
}

void __fastcall TFormINV::ButtonNewContactClick(TObject *Sender)
{
	DM->TCNT->Append();
}

//---------------------------------------------------------------------------
// INV
//---------------------------------------------------------------------------

void __fastcall TFormINV::UpdateINV(void)
{
	UnicodeString status;
	TDateTime dt = TDateTime(0);

	if ( (status = DM->GetINVStatus(due,total,itemcount)) == "Close") dt = Now();

	WINVINV_CNT_ID->Value        = WCNTCNT_ID->Value;
	WINVINV_DATE->AsDateTime     = MonthCalendar1->Date;
	WINVINV_TYPE->Value          = invtype;
	WINVINV_STATUS->Value        = status;
	WINVINV_LOCKDATE->AsDateTime = dt;
	WINV->Post();

	if (Type == "Purchase") DM->RefreshPUR(WINVINV_ID->Value);
	if (Type == "Sale")     DM->RefreshSAL(WINVINV_ID->Value);
	if (Mode == "New")      INV->Last();
}

//---------------------------------------------------------------------------
// INVPAY
//---------------------------------------------------------------------------

void __fastcall TFormINV::EnableDisable(void)
{
	bool admin  = FMain->Admin();
	bool lock   = !FMain->AllowModify();
	bool item0  = ( itemcount == 0 );
	bool due0   = ( due == 0 );
	bool total0 = ( total == 0);
	bool e1, e2, e3, i;

	e1 = e2 = e3 = true;

	i = CBAllowModify->Checked;
	if (due0)    e2 = false;
	if (total0)  e1 = e2 = e3 = false;
	if (item0)   e1 = e2 = e3 = false;
	if (lock)    e1 = e2 = e3 = i = false;
	if (Mode == "New") i = true;
	if (Mode == "Lock") e1 = e2 = e3 = i = false;
	if (admin)   e1 = e2 = e3 = i = true;

	GINVPAY->Enabled          = e1;
	ButtonAddPayment->Enabled = e2;
	ButtonPayAll->Enabled     = e2;
	DBNavigator->Enabled      = e3;

	ButtonOK->Enabled         = i;
	DBEditComment->Enabled    = i;
	ButtonNewContact->Enabled = i;
	DBGrid2->Enabled          = i;
	MonthCalendar1->Enabled   = i;
}

void __fastcall TFormINV::ButtonAddPaymentClick(TObject *Sender)
{
	amount = due;
	comment = "";
	FormINVPAY->ShowModal();

	if (amount > 0) {
		WINVPAY->Append();
		WINVPAYINVPAY_INV_ID->Value      = WINVINV_ID->Value;
		WINVPAYINVPAY_DATE->AsDateTime   = invpaydate;
		WINVPAYINVPAY_AMOUNT->AsCurrency = double(amount);
		WINVPAYINVPAY_COMMENT->Value     = comment;
		WINVPAY->Post();
		due -= amount;
		UpdateINV();
		WINV->Edit();
		EnableDisable();
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormINV::WINVPAYBeforeDelete(TDataSet *DataSet)
{
	due += int (WINVPAYINVPAY_AMOUNT->AsCurrency+0.5);
}
//---------------------------------------------------------------------------

void __fastcall TFormINV::WINVPAYAfterDelete(TDataSet *DataSet)
{
	UpdateINV();
	WINV->Edit();
	EnableDisable();
}
//---------------------------------------------------------------------------

void __fastcall TFormINV::ButtonPayAllClick(TObject *Sender)
{
	if (due > 0) {
		WINVPAY->Append();
		WINVPAYINVPAY_INV_ID->Value      = WINVINV_ID->Value;
		WINVPAYINVPAY_DATE->AsDateTime   = Now();
		WINVPAYINVPAY_AMOUNT->AsCurrency = double(due);
		WINVPAYINVPAY_COMMENT->Value     = "";
		WINVPAY->Post();
		due = 0;
		UpdateINV();
        WINV->Edit();
		Close();
	}

}
//---------------------------------------------------------------------------

void __fastcall TFormINV::CBAllowModifyClick(TObject *Sender)
{
	EnableDisable();
}
//---------------------------------------------------------------------------

