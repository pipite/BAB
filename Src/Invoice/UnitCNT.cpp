//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UnitCNT.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormCNT *FormCNT;
//---------------------------------------------------------------------------
__fastcall TFormCNT::TFormCNT(TComponent* Owner)
	: TForm(Owner)
{
}

void __fastcall TFormCNT::FormShow(TObject *Sender)
{
	WCNT->Open();
	if (Mode == "Modify") {
		WCNT->Locate("CNT_ID",DM->TCNTCNT_ID->Value);
		OriginalName = DM->TCNTCNT_FIRSTNAME->Value;
		Caption = "  Modify Contact: <" + OriginalName + ">";
		WCNT->Edit();
	}
	if (Mode == "New") {
		OriginalName = "";
		Caption = "  Create New Contact.";
		WCNT->Append();
	}
}

void __fastcall TFormCNT::ButtonCancelClick(TObject *Sender)
{
	Close();
}

void __fastcall TFormCNT::ButtonOKClick(TObject *Sender)
{
	if (Trim(DBEditName->Text) == "") {
		MessageDlg("Contact Name cannot be Empty." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	DBEditName->Text = FMain->MajMin(DBEditName->Text);
	DM->WCNT->Open();
	if (DBEditName->Text != OriginalName) {
		if ( DM->WCNT->Locate("CNT_FIRSTNAME",Trim(DBEditName->Text)) ) {
			MessageDlg(DBEditName->Text + " Already Exist. Dupplicate Name Not Allowed!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
			DBEditName->Text = OriginalName;
			DM->WCNT->Close();
			return;
		}
	}
	DM->WCNT->Close();
	WCNT->Post();
	DM->RefreshCNT(DM->TCNTCNT_ID->Value);
	if (FormINV->WCNT->Active) {
		DM->RefreshQ(FormINV->WCNT,"CNT_ID", DM->TCNTCNT_ID->Value);
	}

	if (Mode == "Modify") DM->RefreshAll();
	Close();
}

void __fastcall TFormCNT::FormClose(TObject *Sender, TCloseAction &Action)
{
	WCNT->Close();
}
//---------------------------------------------------------------------------

