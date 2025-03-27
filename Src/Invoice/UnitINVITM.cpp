//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UnitINVITM.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormINVITM *FormINVITM;
//---------------------------------------------------------------------------
__fastcall TFormINVITM::TFormINVITM(TComponent* Owner)
	: TForm(Owner)
{
	Shunt = false;
	DialogType = "";
	Mode = "";
}

void __fastcall TFormINVITM::FormShow(TObject *Sender)
{
	//DM->DisableCtrl();
	PanelExist->Visible = false;
	ButtonDelete->Enabled = false;
	if (DialogType == "Purchase") {
		INVITM = DM->TPURITM;
		INV = DM->TPUR;
	}
	if (DialogType == "Sale") {
		INVITM = DM->TSALITM;
		INV = DM->TSAL;
	}

	if (Mode == "Add")    WITM->ParamByName("ITMID")->Value = DM->TITMITM_ID->Value;
	if (Mode == "Modify") WITM->ParamByName("ITMID")->Value = INVITM->FieldByName("INVITM_ITM_ID")->Value;
	WITM->Open();
	ITMCode = WITMITM_CP->Value + WITMITM_CODE->Value + WITMITM_INDICE->Value;

	WINVITM->Filter = "INVITM_INV_ID = " + INV->FieldByName("INV_ID")->Text;
	WINVITM->Filtered = true;
	WINVITM->Open();
	if (DialogType == "Purchase") Price = WITMITM_PURCHASE->Value;
	if (DialogType == "Sale")     Price = WITMITM_SALE->Value;

	DBEditCalcChange(NULL);
	if (WITMITM_CP->Value == "V") {
		LabelItem->Caption = "Virtual Item:";
	} else {
		LabelItem->Caption = "Item:";
	}

	if (Mode == "Add") {
		Caption = "  Add Selected Item <";
		// Verify if dupplicate Item
		if ( WINVITM->Locate("INVITM_ITM_ID", WITMITM_ID->Value) ) {
			// Dupplicate Item Found
			PanelExist->Visible = true;
			LabelExist->Caption = INVITM->FieldByName("INVITM_QTY")->Text + " Item " + ITMCode + " (" + WITMITM_NAME->Value + ") already exist in this " + DialogType;
			QINVITM->ParamByName("INVID")->Value = INV->FieldByName("INV_ID")->Value;
			QINVITM->ParamByName("ITMID")->Value = WITMITM_ID->Value;
			QINVITM->Open();
		} else {
			AddNew();
			UpdateInfo();
		}
	}

	if (Mode == "Modify") {
		ModifyExisting();
		UpdateInfo();
	}
	if (DM->TITMITM_CP->Value != "V") {
		LbDiscountUnit->Visible = true;
		LbDiscountTotal->Visible = true;
		LabelDiscountUnit->Visible = true;
		LabelDiscountTotal->Visible = true;
	} else {
		LbDiscountUnit->Visible = false;
		LbDiscountTotal->Visible = false;
		LabelDiscountUnit->Visible = false;
		LabelDiscountTotal->Visible = false;
	}

}

void __fastcall TFormINVITM::ButtonModifySelectedItemClick(TObject *Sender)
{
	PanelExist->Visible = false;
	WITM->ParamByName("ITMID")->Value = QINVITMINVITM_ITM_ID->Value;
	INVITM->Locate("INVITM_ID",QINVITMINVITM_ID->Value);
	Mode = "Modify";
	ModifyExisting();
	UpdateInfo();
}

void __fastcall TFormINVITM::ButtonCreateTwoSeparateLineClick(TObject *Sender)
{
    PanelExist->Visible = false;
	AddNew();
	UpdateInfo();
}

void __fastcall TFormINVITM::UpdateInfo(void) {
	Caption = Caption + ITMCode + "> in " + DialogType + " N° ";
	Caption = Caption + INV->FieldByName("INV_NUMBER")->Text;
	LbDiscountUnit->Caption = "Discount Unit";
	LbDiscountTotal->Caption = "Discount Total";
}

void __fastcall TFormINVITM::ModifyExisting(void) {
	if ( (WITMStock->Value >= INVITM->FieldByName("INVITM_QTY")->AsInteger) || (WITMITM_CP->Value == "V") || FMain->Admin() ) ButtonDelete->Enabled = true;
	if (DialogType == "Sale") ButtonDelete->Enabled = true;
	Caption = "  Modify Item <";
	WINVITM->Locate("INVITM_ID",INVITM->FieldByName("INVITM_ID")->Value);
	InitialQty = WINVITMINVITM_QTY->Value;
	DBEditCalcChange(NULL);
	WINVITM->Edit();
}

void __fastcall TFormINVITM::AddNew(void) {
	// New Item OR two separate lines
	InitialQty = 0;
	WINVITM->Append();
	WINVITMINVITM_INV_ID->Value   = INV->FieldByName("INV_ID")->Value;
	WINVITMINVITM_ITM_ID->Value   = WITMITM_ID->Value;
	WINVITMINVITM_QTY->Value      = 1;
	WINVITMINVITM_DELIVERY->Value = "Yes";
	WINVITMINVITM_AMOUNT->Value   = Price;
}

void __fastcall TFormINVITM::FormClose(TObject *Sender, TCloseAction &Action)
{
	WITM->Close();
	WINVITM->Close();
	if ( QINVITM->Active ) QINVITM->Close();
	Shunt = false;
	DM->EnableCtrl();
}

void __fastcall TFormINVITM::ButtonCancelClick(TObject *Sender)
{
	Close();
}

void __fastcall TFormINVITM::ButtonOKClick(TObject *Sender)
{
	int delta;
	int code;
	int itmid;
	int invitmid;
	int stock;
	int qty = 0;
	bool virt;

	WINVITM->Post();
	invitmid = WINVITMINVITM_ID->Value;

	if (DialogType == "Purchase") {
		if (Mode == "Modify") qty = InitialQty - WINVITMINVITM_QTY->Value;
		if (Mode == "Add")    qty = WINVITMINVITM_QTY->Value;
		if (qty != 0)         DM->UpdateSystemLFITM(WITMITM_ID->Value);
		DM->RefreshPUR(NULL);
		DM->RefreshPURITM(invitmid);
	}

	if (DialogType == "Sale") {
		if (Mode == "Modify") qty = WINVITMINVITM_QTY->Value - InitialQty;
		if (Mode == "Add")    qty = WINVITMINVITM_QTY->Value;
		if (qty != 0)         DM->UpdateSystemLFITM(WITMITM_ID->Value);
		DM->RefreshSAL(NULL);
		DM->RefreshSALITM(invitmid);
	}
	DM->RefreshITM(NULL);

	Close();
}

//---------------------------------------------------------------------------
void __fastcall TFormINVITM::DBEditCalcChange(TObject *Sender)
{
	double v;
	TColor c;

	if (DialogType == "Purchase") {
		if (WITMITM_CP->Value != "V") {
			if ( WINVITMINVITM_AMOUNT->Value > WITMITM_PURCHASE->Value ) {
				LabelDiscountUnit->Font->Color = FMain->ColorWarning;
				LabelDiscountTotal->Font->Color = FMain->ColorWarning;
			} else if (WINVITMINVITM_AMOUNT->Value < WITMITM_PURCHASE->Value ){
				LabelDiscountUnit->Font->Color = FMain->ColorValid;
				LabelDiscountTotal->Font->Color = FMain->ColorValid;
			} else {
				LabelDiscountUnit->Font->Color = FMain->ColorDisabled;
				LabelDiscountTotal->Font->Color = FMain->ColorDisabled;
			}
		} else {
				LabelDiscountUnit->Font->Color = FMain->ColorDisabled;
				LabelDiscountTotal->Font->Color = FMain->ColorDisabled;
		}
		v = WINVITMINVITM_AMOUNT->Value - WITMITM_PURCHASE->Value;
		LabelDiscountUnit->Caption = CurrToStrF(v, ffCurrency, 0);

		v = (WINVITMINVITM_AMOUNT->Value - WITMITM_PURCHASE->Value) * WINVITMINVITM_QTY->AsFloat;
		LabelDiscountTotal->Caption = CurrToStrF(v, ffCurrency, 0);

		v = WINVITMINVITM_AMOUNT->AsFloat * WINVITMINVITM_QTY->AsFloat;
		LabelTotalPrice->Caption = CurrToStrF(v, ffCurrency, 0);

		LabelNextStock->Caption = UnicodeString( WITMStock->Value - (InitialQty - WINVITMINVITM_QTY->Value) );
	}

	if (DialogType == "Sale") {
		if (WITMITM_CP->Value != "V") {
			if ( WINVITMINVITM_AMOUNT->Value > WITMITM_SALE->Value ) {                               //
				LabelDiscountUnit->Font->Color = FMain->ColorWarning;
				LabelDiscountTotal->Font->Color = FMain->ColorWarning;
			} else if (WINVITMINVITM_AMOUNT->Value < WITMITM_SALE->Value ){                           // modif
				LabelDiscountUnit->Font->Color = FMain->ColorValid;
				LabelDiscountTotal->Font->Color = FMain->ColorValid;
			} else {
				LabelDiscountUnit->Font->Color = FMain->ColorDisabled;
				LabelDiscountTotal->Font->Color = FMain->ColorDisabled;
			}
		} else {
				LabelDiscountUnit->Font->Color = FMain->ColorDisabled;
				LabelDiscountTotal->Font->Color = FMain->ColorDisabled;
		}
		v = WINVITMINVITM_AMOUNT->Value - WITMITM_SALE->Value;                                               // modif
		LabelDiscountUnit->Caption = CurrToStrF(v, ffCurrency, 0);

		v = (WINVITMINVITM_AMOUNT->Value - WITMITM_SALE->Value) * WINVITMINVITM_QTY->AsFloat;                // modif
		LabelDiscountTotal->Caption = CurrToStrF(v, ffCurrency, 0);

		v = WINVITMINVITM_AMOUNT->AsFloat * WINVITMINVITM_QTY->AsFloat;
		LabelTotalPrice->Caption = CurrToStrF(v, ffCurrency, 0);

		LabelNextStock->Caption = UnicodeString( WITMStock->Value - (WINVITMINVITM_QTY->Value - InitialQty) );    // modif

	}
	c = FMain->ColorDisabled;
	if ( LabelNextStock->Caption.ToInt() == 0 ) c = FMain->ColorWarning;
	if ( LabelNextStock->Caption.ToInt() < 0 ) c = FMain->ColorError;
	LabelNextStock->Font->Color = c;
	Label7->Font->Color = c;

	if (Mode == "Modify") {
		LabelQty->Caption = "Quantity     " + UnicodeString(InitialQty);
		if (WINVITMINVITM_QTY->Value - InitialQty >=0) LabelQty->Caption = LabelQty->Caption + "+";
		LabelQty->Caption = LabelQty->Caption + UnicodeString(WINVITMINVITM_QTY->Value - InitialQty) + "  = ";
	}
	if (Mode == "Add") {
		LabelQty->Caption = "Quantity";
	}
}
//---------------------------------------------------------------------------
void __fastcall TFormINVITM::ButtonQtyPlusClick(TObject *Sender)
{
	if (DialogType == "Purchase") {
		WINVITMINVITM_QTY->Value = WINVITMINVITM_QTY->Value + 1;
	}
	if (DialogType == "Sale") {
		if ( (WITMITM_CP->Value != "V") && (WITMITM_CODE->Value != -1) ) {
			if (WITMStock->Value < 0 ) {
				if ( (DBEditQty->Text.ToInt() + 1 <= InitialQty) || (LabelNextStock->Caption.ToInt() > 0 ) || FMain->Admin() || !FMain->CBLockItemZero->Checked) {
					WINVITMINVITM_QTY->Value = WINVITMINVITM_QTY->Value + 1;
				}
			} else {
				if ( ( LabelNextStock->Caption.ToInt() > 0 ) || FMain->Admin() || !FMain->CBLockItemZero->Checked) {
					WINVITMINVITM_QTY->Value = WINVITMINVITM_QTY->Value + 1;
				}
			}
		} else {
			WINVITMINVITM_QTY->Value = WINVITMINVITM_QTY->Value + 1;
		}
	}
}
//---------------------------------------------------------------------------
void __fastcall TFormINVITM::ButtonQtyMoinsClick(TObject *Sender)
{
	if (DialogType == "Purchase") {
		if (WITMITM_CP->Value != "V") {
			if (WITMStock->Value < 0 ) {
				if ( ((DBEditQty->Text.ToInt() - 1 >= InitialQty) && (DBEditQty->Text.ToInt() - 1 > 0)) || FMain->Admin() || !FMain->CBLockItemZero->Checked) {
					WINVITMINVITM_QTY->Value = WINVITMINVITM_QTY->Value - 1;
				}
			} else {
				if ( (InitialQty - (DBEditQty->Text.ToInt()- 1) <= WITMStock->Value) && (DBEditQty->Text.ToInt() - 1 > 0) || !FMain->Admin() || FMain->CBLockItemZero->Checked) {
					WINVITMINVITM_QTY->Value = WINVITMINVITM_QTY->Value - 1;
				}
			}
		} else {
			if ( (DBEditQty->Text.ToInt() - 1 >= 1) || FMain->Admin() || !FMain->CBLockItemZero->Checked) {
				WINVITMINVITM_QTY->Value = WINVITMINVITM_QTY->Value - 1;
			}
		}
	}
	if (DialogType == "Sale") {
		if ( (DBEditQty->Text.ToInt() - 1 > 0) || FMain->Admin() || !FMain->CBLockItemZero->Checked) {
			WINVITMINVITM_QTY->Value = WINVITMINVITM_QTY->Value - 1;
		}
	}
}
//---------------------------------------------------------------------------
void __fastcall TFormINVITM::ButtonDeleteClick(TObject *Sender)
{
	if (MessageDlg("Confirm Delete?", mtInformation, TMsgDlgButtons() << mbOK << mbCancel, 1) == mrOk) {
		WINVITM->Delete();
		Close();
	}
}
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------


