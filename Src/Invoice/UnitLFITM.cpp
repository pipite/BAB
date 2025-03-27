//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UnitLFITM.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormLFITM *FormLFITM;
//---------------------------------------------------------------------------
__fastcall TFormLFITM::TFormLFITM(TComponent* Owner)
	: TForm(Owner)
{
}

void __fastcall TFormLFITM::FormShow(TObject *Sender)
{
	WLF->Open();
	WITM->Open();
	DBEditQty->OnChange = NULL;
	if (Mode == "Modify") {
		WLFITM->Open();
		WLFITM->Locate("LFITM_ID",DM->TLFITMLFITM_ID->Value);
		WLF->Locate("LF_ID",WLFITMLFITM_LF_ID->Value);
		WITM->Locate("ITM_ID",WLFITMLFITM_ITM_ID->Value);
		InitialQty = DBEditQty->Text.ToInt();
		ButtonDelete->Enabled = true;
		WLFITM->Edit();
		Caption = "  Modify Existing Line";
	}

	if (Mode == "New") {
		Caption = "  New ";
		WLFITM->Filter = "LFITM_LF_ID = " + DM->TLFLF_ID->Text;
		WLFITM->Filtered = true;
		WLFITM->Open();
		if ( WLFITM->Locate("LFITM_ITM_ID",DM->TITMITM_ID->Value) ) {
			// Modify Existing
			WLF->Locate("LF_ID",WLFITMLFITM_LF_ID->Value);
			WITM->Locate("ITM_ID",WLFITMLFITM_ITM_ID->Value);
			InitialQty = DBEditQty->Text.ToInt();
			WLFITM->Edit();    // Existant
			ButtonDelete->Enabled = true;
			Caption = "  Modify Existing Line";
		} else {
			// Add New
			WLF->Locate("LF_ID",DM->TLFLF_ID->Value);
			WITM->Locate("ITM_ID",DM->TITMITM_ID->Value);
			InitialQty = 0;
			WLFITM->Append();  // Nouveau
			ButtonDelete->Enabled = false;
			DBEditQty->Text = "1";
			Caption = "  Create New Line";
		}
	}
	DBEditQty->OnChange = DBEditQtyChange;
	DBEditQtyChange(NULL);
}

void __fastcall TFormLFITM::FormClose(TObject *Sender, TCloseAction &Action)
{
	WLF->Close();
	WLFITM->Close();
	WLFITM->Filtered = false;
	WLFITM->Filter = "";
	WITM->Close();
}

void __fastcall TFormLFITM::ButtonOKClick(TObject *Sender)
{
	DBEditQty->OnChange = NULL;
	WLFITMLFITM_LF_ID->Value     = WLFLF_ID->Value;
	WLFITMLFITM_ITM_ID->Value    = WITMITM_ID->Value;
	WLFITMLFITM_DATE->AsDateTime = Now();
	WLFITM->Post();
	DM->UpdateSystemLFITM(WITMITM_ID->Value);
	DM->RefreshAll();
	DM->TLFITM->Locate("LFITM_ID",WLFITMLFITM_ID->Value);
	Close();
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
void __fastcall TFormLFITM::ButtonDeleteClick(TObject *Sender)
{
	if (MessageDlg("Confirm Delete?", mtInformation, TMsgDlgButtons() << mbOK << mbCancel, 1) == mrOk) {
		DBEditQty->OnChange = NULL;
		WLFITM->Delete();
		DM->TryRemoveITM(WITMITM_ID->Value);
		DM->RefreshAll();
		Close();
	}
}
//---------------------------------------------------------------------------
void __fastcall TFormLFITM::ButtonCancelClick(TObject *Sender)
{
	DBEditQty->OnChange = NULL;
	Close();
}
//---------------------------------------------------------------------------
void __fastcall TFormLFITM::ButtonQtyPlusClick(TObject *Sender)
{
	if (DBEditQty->Text.ToInt() == -1) {
		DBEditQty->Text = "1";
	} else {
		DBEditQty->Text = UnicodeString(DBEditQty->Text.ToInt() + 1);
	}
}
//---------------------------------------------------------------------------
void __fastcall TFormLFITM::ButtonQtyMoinsClick(TObject *Sender)
{
	if (DBEditQty->Text.ToInt() == 1) {
		DBEditQty->Text = "-1";
	} else {
		DBEditQty->Text = UnicodeString(DBEditQty->Text.ToInt() - 1);
	}
}
//---------------------------------------------------------------------------
void __fastcall TFormLFITM::DBEditQtyChange(TObject *Sender)
{
	try
	{
		if (Mode == "Modify") {
			LabelQty->Caption = "Quantity   " + UnicodeString(InitialQty);
			if (DBEditQty->Text.ToInt() - InitialQty >=0) LabelQty->Caption = LabelQty->Caption + "+";
			LabelQty->Caption = LabelQty->Caption + UnicodeString(DBEditQty->Text.ToInt() - InitialQty) + "  = ";
		}
		if (Mode == "Add") {
			LabelQty->Caption = "Quantity";
		}
		LabelNextStock->Caption = WITMStock->Value + DBEditQty->Text.ToInt() - InitialQty;
	}
	catch (...) {
		LabelNextStock->Caption = "???";
	}
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
