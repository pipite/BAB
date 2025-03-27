//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UnitASMITM.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormASMITM *FormASMITM;
//---------------------------------------------------------------------------
__fastcall TFormASMITM::TFormASMITM(TComponent* Owner)
	: TForm(Owner)
{
	Mode = "";
}
//---------------------------------------------------------------------------
void __fastcall TFormASMITM::FormShow(TObject *Sender)
{
	WASM->Open();
	WASMITM->Open();
	WITM->Open();
	DBEditQty->OnChange = NULL;
	if (Mode == "Modify") {
		WASMITM->Open();
		WASMITM->Locate("ASMITM_ID",DM->TASMITMASMITM_ID->Value);
		WASM->Locate("ASM_ID",WASMITMASMITM_ASM_ID->Value);
		WITM->Locate("ITM_ID",WASMITMASMITM_ITM_ID->Value);
		InitialQty = DBEditQty->Text.ToInt();
		ButtonDelete->Enabled = true;
		WASMITM->Edit();
		Caption = "  Modify Existing Item in Assembly.";
	}

	if (Mode == "New") {
		Caption = "  New ";
		if ( WASMITM->Locate("ASMITM_ITM_ID",DM->TITMITM_ID->Value) ) {
			// Modify Existing
			WASMITM->Filter = "ASMITM_ASM_ID = " + DM->TASMASM_ID->Text;
			WASMITM->Filtered = true;
			WASMITM->Open();
			WASM->Locate("ASM_ID",WASMITMASMITM_ASM_ID->Value);
			WITM->Locate("ITM_ID",WASMITMASMITM_ITM_ID->Value);
			InitialQty = DBEditQty->Text.ToInt();
			WASMITM->Edit();    // Existant
			ButtonDelete->Enabled = true;
			Caption = "  Modify Existing Item in Assembly.";
		} else {
			// Add New
			//WASM->First();
			WASMITM->Open();
			WASM->Locate("ASM_ID",DM->TASMITMASMITM_ASM_ID->Value);
			WITM->Locate("ITM_ID",DM->TITMITM_ID->Value);
			InitialQty = 0;
			WASMITM->Append();  // Nouveau
			WASMITMASMITM_QTY->Value = 1;
			ButtonDelete->Enabled = false;
			DBEditQty->Text = "1";
			Caption = "  Add Selected Item In Assembly.";
		}
	}
	DBEditQty->OnChange = DBEditQtyChange;
	DBEditQtyChange(NULL);
}

void __fastcall TFormASMITM::FormClose(TObject *Sender, TCloseAction &Action)
{
	WASM->Close();
	WASMITM->Close();
	WITM->Close();
}

void __fastcall TFormASMITM::ButtonOKClick(TObject *Sender)
{
	WASMITMASMITM_ASM_ID->Value   = WASMASM_ID->Value;
	WASMITMASMITM_ITM_ID->Value   = WITMITM_ID->Value;
	WASMITMASMITM_QTY->Value      = DBEditQty->Text.ToInt();
	WASMITM->Post();
	WASMITM->Active = false;
	DM->RefreshAll();
	Close();
}

void __fastcall TFormASMITM::ButtonCancelClick(TObject *Sender)
{
    Close();
}

void __fastcall TFormASMITM::ButtonDeleteClick(TObject *Sender)
{
	if (MessageDlg("Confirm Delete?", mtInformation, TMsgDlgButtons() << mbOK << mbCancel, 1) == mrOk) {
		WASMITM->Delete();
		DM->RefreshAll();
		Close();
	}
}

void __fastcall TFormASMITM::ButtonQtyPlusClick(TObject *Sender)
{
	if (WITMITM_CP->Value != "V") {
		if (WITMStock->Value < 0 ) {
			if ( (DBEditQty->Text.ToInt() + 1 <= InitialQty) || (LabelNextStock->Caption.ToInt() > 0 ) ||FMain->Admin() ) {
				WASMITMASMITM_QTY->Value = WASMITMASMITM_QTY->Value + 1;
			}
		} else {
			if ( ( LabelNextStock->Caption.ToInt() > 0 ) || FMain->Admin() ) {
				WASMITMASMITM_QTY->Value = WASMITMASMITM_QTY->Value + 1;
			}
		}
	} else {
		WASMITMASMITM_QTY->Value = WASMITMASMITM_QTY->Value + 1;
	}
}

void __fastcall TFormASMITM::ButtonQtyMoinsClick(TObject *Sender)
{
	if ( DBEditQty->Text.ToInt() - 1 > 0 ) {
		WASMITMASMITM_QTY->Value = WASMITMASMITM_QTY->Value - 1;
	}
}

void __fastcall TFormASMITM::DBEditQtyChange(TObject *Sender)
{
	TColor c;

	LabelNextStock->Caption = UnicodeString( WITMStock->Value - (WASMITMASMITM_QTY->Value - InitialQty) );

	c = FMain->ColorDisabled;
	if ( LabelNextStock->Caption.ToInt() == 0 ) c = FMain->ColorWarning;
	if ( LabelNextStock->Caption.ToInt() < 0 ) c = FMain->ColorError;
	LabelNextStock->Font->Color = c;
	Label7->Font->Color = c;

	if (Mode == "Modify") {
		LabelQty->Caption = "Quantity     " + UnicodeString(InitialQty);
		if (WASMITMASMITM_QTY->Value - InitialQty >=0) LabelQty->Caption = LabelQty->Caption + "+";
		LabelQty->Caption = LabelQty->Caption + UnicodeString(WASMITMASMITM_QTY->Value - InitialQty) + "  = ";
	}
	if (Mode == "Add") {
		LabelQty->Caption = "Quantity";
	}
}

