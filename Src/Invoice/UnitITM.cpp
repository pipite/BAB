//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UnitITM.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormITM *FormITM;
//---------------------------------------------------------------------------
__fastcall TFormITM::TFormITM(TComponent* Owner)
	: TForm(Owner)
{
}

//---------------------------------------------------------------------------
void __fastcall TFormITM::FormShow(TObject *Sender)
{
	Exit = true;

	Label1->Font->Color = FMain->ColorDisabled;
	Label2->Font->Color = FMain->ColorDisabled;
	EditStepQty->Text = "1";
	DM->WGRP->Open();
	DM->WITM->Open();
	DM->WITM->Locate("ITM_ID",DM->TITMITM_ID->Value);
	InitialCode = DM->TITMITM_CODE->Value;
	InitialFullCode = DM->TITMITM_CP->Value + DM->TITMITM_CODE->Text + DM->TITMITM_INDICE->Value;

	LabelStep7->Visible = true;
	EditStepQty->Visible = true;
	LabelStep5->Visible = true;
	DBEditStep5->Visible = true;
	LabelStep1->Font->Color = FMain->ColorError;
	LabelStep2->Font->Color = FMain->ColorError;
	LabelStep3->Font->Color = FMain->ColorDisabled;
	LabelStep4->Font->Color = FMain->ColorError;
	LabelStep5->Font->Color = FMain->ColorError;
	LabelStep6->Font->Color = FMain->ColorError;
	LabelStep7->Font->Color = FMain->ColorDisabled;
	ButtonNormal->Enabled = true;
	ButtonDrop->Enabled = true;
	ButtonWorkshop->Enabled = true;
	ButtonImmo->Enabled = true;
	ButtonVirtual->Enabled = true;
	DBEditCODE->Enabled = true;
	DBEditINDICE->Enabled = true;
	ButtonPlus->Visible    = true;
	ButtonMoins->Visible   = true;

	if (Mode == "Purchase") {
		GBCategory->Visible = false;
		ClientHeight = GBNew->Height + 3;
		Caption = "  Create New Item in Purchase.";
		GBNew->Caption = "Purchase New Item.";
		DM->WITM->Append();
		DM->WITMITM_GRP_ID->Value = DM->TGRPGRP_ID->Value;
		DM->WITMITM_UNIT->Value = "U";
		DM->WITMITM_CODE->Value = FMain->GetNextItemCode();
	} else if (Mode == "Indice") {
		GBCategory->Visible = false;
		ClientHeight = GBNew->Height + 3;
		Caption = "  Create New Item Indice of <" + InitialFullCode + "> in Purchase";
		GBNew->Caption = " Purchase Item New Indice. ";
		LabelStep1->Font->Color = FMain->ColorDisabled;
		LabelStep2->Font->Color = FMain->ColorDisabled;
		LabelStep3->Font->Color = FMain->ColorDisabled;
		LabelStep4->Font->Color = FMain->ColorDisabled;
		LabelStep5->Font->Color = FMain->ColorDisabled;
		LabelStep6->Font->Color = FMain->ColorDisabled;
		LabelStep7->Font->Color = FMain->ColorDisabled;
		DM->WITM->Append();
		DM->WITMITM_CP->Value = DM->TITMITM_CP->Value;
		DM->WITMITM_GRP_ID->Value = DM->TITMITM_GRP_ID->Value;
		DM->WITMITM_UNIT->Value = DM->TITMITM_UNIT->Value;
		DM->WITMITM_CODE->Value = DM->TITMITM_CODE->Value;
		DM->WITMITM_NAME->Value = DM->TITMITM_NAME->Value;
		DM->WITMITM_PURCHASE->Value = DM->TITMITM_PURCHASE->Value;
		DM->WITMITM_SALE->Value = DM->TITMITM_SALE->Value;
		DM->WITM_NEXTIND->ParamByName("CODE")->Value = DM->TITMITM_CODE->Value;
		DM->WITM_NEXTIND->Open();
		DM->WINVITM->Filter = "INVITM_CODE = " + DM->TITMITM_CODE->Value;
		UnicodeString indice = DM->WITM_NEXTINDITM_INDICE->Value;
		if ( ( indice == NULL) || (indice == "")) {
			DM->WITMITM_INDICE->Value = "A";
		} else {
			char c = indice[1] + 1;
			DM->WITMITM_INDICE->Value = UnicodeString(c);
		}
	} else if (Mode == "UnknownItem") {
		GBCategory->Visible = false;
		ClientHeight = GBNew->Height + 3;
		Caption = "  Sale an Item without Code.";
		GBNew->Caption = " New Item in Category <* Sale Negative Item>";
		DM->WITM->Append();
		DM->WITMITM_UNIT->Value = "U";
		DM->WITMITM_CODE->Value = -1;
		DM->WITMITM_CP->Value = "U";
	} else if (Mode == "NewFound") {
		ClientHeight = GBNew->Height + GBCategory->Height + 9;
		GBCategory->Visible = true;
		Caption = "  Create a New Item without Purchase";
		GBNew->Caption = " New Item in Category <* Item Lost or Found> ";
		DM->WITM->Append();
		DM->WITMITM_GRP_ID->Value = DM->TGRPGRP_ID->Value;
		DM->WITMITM_UNIT->Value = "U";
		DM->WITMITM_CODE->Value = FMain->GetNextItemCode();
		WLF->Open();
	} else if (Mode == "NewASMITM") {
		ClientHeight = GBNew->Height + GBCategory->Height + 9;
		GBCategory->Visible = true;
		Caption = "  Create a New Item for Assembly";
		GBNew->Caption = " New Item in Category <* Item Lost or Found> ";
		DM->WITM->Append();
		DM->WITMITM_GRP_ID->Value = DM->TGRPGRP_ID->Value;
		DM->WITMITM_UNIT->Value = "U";
		DM->WITMITM_CODE->Value = FMain->GetNextItemCode();
		WLF->Open();
	} else if (Mode == "NewAssembly") {
		GBCategory->Visible = false;
		ClientHeight = GBNew->Height + 3;
		Caption = "  Create a New Assembly Item.";
		GBNew->Caption = " Assembly. ";
		DM->WITM->Append();
		DM->WITMITM_GRP_ID->Value = DM->TGRPGRP_ID->Value;
		DM->WITMITM_UNIT->Value = "U";
		DM->WITMITM_CODE->Value = FMain->GetNextItemCode();
		DM->WITMITM_CP->Value = "A";
		LabelStep1->Font->Color = FMain->ColorDisabled;
		LabelStep5->Font->Color == FMain->ColorDisabled;
		DBEditStep5->Text = "0";
	} else if (Mode == "ModifyAssembly") {
		GBCategory->Visible = false;
		ClientHeight = GBNew->Height + 3;
		Caption = "  Modify Assembly Item.";
		GBNew->Caption = " Assembly. ";
		DM->WITM->Locate("ITM_ID",DM->TASMASM_ITM_ID->Value);
		DM->WITM->Edit();
		EditStepQty->Text = DM->TASMASM_ITM_QTY->Text;
		LabelStep1->Font->Color = FMain->ColorDisabled;
		LabelStep2->Font->Color = FMain->ColorDisabled;
		LabelStep3->Font->Color = FMain->ColorDisabled;
		LabelStep4->Font->Color = FMain->ColorDisabled;
		LabelStep5->Font->Color = FMain->ColorDisabled;
		LabelStep6->Font->Color = FMain->ColorDisabled;
		LabelStep7->Font->Color = FMain->ColorDisabled;
	} else if (Mode == "Modify") {
		GBCategory->Visible = false;
		ClientHeight = GBNew->Height + 3;
		DM->WITM->Edit();
		Caption = "  Modify Item <" + InitialFullCode + ">";
		GBNew->Caption = " Item to modify. ";
		LabelStep1->Font->Color = FMain->ColorDisabled;
		LabelStep2->Font->Color = FMain->ColorDisabled;
		LabelStep3->Font->Color = FMain->ColorDisabled;
		LabelStep4->Font->Color = FMain->ColorDisabled;
		LabelStep5->Font->Color = FMain->ColorDisabled;
		LabelStep6->Font->Color = FMain->ColorDisabled;
		LabelStep7->Font->Color = FMain->ColorDisabled;
		ButtonPlus->Visible    = false;
		ButtonMoins->Visible   = false;
		LabelStep7->Visible = false;
		EditStepQty->Visible = false;
	}
	Exit = false;
	Controle();
	//FormITM->Refresh();
}

void __fastcall TFormITM::FormClose(TObject *Sender, TCloseAction &Action)
{
	if (FMain->AdminMode) {
		if (WLF->Active) WLF->Close();
		Exit= true;
		DM->WITM->Close();
		DM->WGRP->Close();
        DM->WLFITM->Close();
		FMain->GITM->SetFocus();
	}
}

bool __fastcall TFormITM::Controle(void) {
	if (Exit) return false;
	LabelStep5->Visible    = true;
	DBEditStep5->Visible   = true;
	ButtonDrop->Enabled    = true;
	ButtonNormal->Enabled  = true;
	ButtonWorkshop->Enabled= true;
	ButtonImmo->Enabled    = true;
	ButtonVirtual->Enabled = true;
	DBEditCODE->Enabled    = true;
	DBEditINDICE->Enabled  = true;

	if (Mode == "Purchase") {
		DBEditCODE->Enabled = false;
		DBEditINDICE->Enabled = false;
		if ( DM->WITMITM_CODE->Value < 0 ) {
			//MessageDlg("Negative Code Not Allowed!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
			DM->WITMITM_CODE->Value = FMain->GetNextItemCode();
		}
		if ( (DM->WITMITM_CODE->Value == 0) && (DM->WITMITM_CP->Value != "V") ) {
			//MessageDlg("Code 0 Reserved for Virtual Item! Next Code used Instead." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
			DM->WITMITM_CODE->Value = FMain->GetNextItemCode();
		}
	} else if (Mode == "Indice") {
		DBEditCODE->Enabled = false;
		DBEditINDICE->Enabled = false;
		ButtonNormal->Enabled = false;
		ButtonDrop->Enabled = false;
		ButtonWorkshop->Enabled = false;
		ButtonImmo->Enabled = false;
		ButtonVirtual->Enabled = false;
		if (EditStepQty->Text.ToInt() <= 0) {
			MessageDlg("Quantity < 1 not Allowed! Force 1 mini." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
			EditStepQty->Text = 1;
			return false;
		}
	} else if (Mode == "UnknownItem") {
		DBEditCODE->Enabled = false;
		DBEditINDICE->Enabled = false;
	} else if (Mode == "NewFound") {
		if (EditStepQty->Text.ToInt() == 0) {
			MessageDlg("Quantity < 1 not Allowed! Force 1 mini." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
			EditStepQty->Text = 1;
			return false;
		}
	} else if (Mode == "NewASMITM") {
		if (EditStepQty->Text.ToInt() == 0) {
			MessageDlg("Quantity < 1 not Allowed! Force 1 mini." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
			EditStepQty->Text = 1;
			return false;
		}
	} else if (Mode == "NewAssembly") {
		LabelStep5->Visible = false;
		DBEditStep5->Visible = false;
		DBEditStep5->Text = "0";
		ButtonNormal->Enabled = false;
		ButtonDrop->Enabled = false;
		ButtonWorkshop->Enabled = false;
		ButtonImmo->Enabled = false;
		ButtonVirtual->Enabled = false;
	} else if (Mode == "ModifyAssembly") {
		LabelStep5->Visible = false;
		DBEditStep5->Visible = false;
		DBEditStep5->Text = "0";
		ButtonNormal->Enabled = false;
		ButtonDrop->Enabled = false;
		ButtonWorkshop->Enabled = false;
		ButtonImmo->Enabled = false;
		ButtonVirtual->Enabled = false;
	} else if (Mode == "Modify") {
		if ( (DBEditCODE->Text == "-1") && (InitialCode != -1) )  {
			MessageDlg("Cannot use CODE -1." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
			DM->WITMITM_CODE->Value = InitialCode;
		}
		if ( DM->WITMITM_CP->Value == "V" ) {
			DBEditCODE->Enabled = false;
			DBEditINDICE->Enabled = false;
			DBEditCODE->Text = "0";
		} else if ( DM->WITMITM_CODE->Value == -1 ) {
			DBEditCODE->Enabled = false;
			DBEditINDICE->Enabled = false;
			ButtonVirtual->Enabled = false;
		} else {
			DBEditCODE->Enabled = true;
			DBEditINDICE->Enabled = true;
			ButtonVirtual->Enabled = true;
			if (DM->WITMITM_CODE->Value == 0 ) {
				DM->WITMITM_CODE->Value = InitialCode;
			}
        }
	}

	if (DM->WITMITM_CP->Value == "A") {
		ButtonNormal->Enabled = false;
		ButtonDrop->Enabled = false;
		ButtonWorkshop->Enabled = false;
		ButtonImmo->Enabled = false;
		ButtonVirtual->Enabled = false;
	}

	if ( (LabelStep1->Font->Color != FMain->ColorError) && (LabelStep2->Font->Color != FMain->ColorError) && (LabelStep4->Font->Color != FMain->ColorError) && (LabelStep5->Font->Color != FMain->ColorError) && (LabelStep6->Font->Color != FMain->ColorError) && (LabelStep7->Font->Color != FMain->ColorError)) {
		BitBtnOK->Enabled = true;
	} else {
		BitBtnOK->Enabled = false;
	}
	return true;
}

void __fastcall TFormITM::BitBtnOKClick(TObject *Sender)
{
	int id, qty;
	UnicodeString newcode;

	DM->WITMITM_INDICE->Value = UpperCase(DM->WITMITM_INDICE->Value);
	DM->WITMITM_NAME->Value = FMain->MajMin(DM->WITMITM_NAME->Value);

	if (EditStepQty->Text.ToInt() < 1) {
		MessageDlg("Quantity < 1 not Allowed! Force 1 mini." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		EditStepQty->Text = 1;
		return;
	}

	// Cas de Modify: Si code change, inscrire ancien code dans commentaire de l'item  + tracer dans le log
	if ( (Mode == "Modify") ) {
		newcode = DM->WITMITM_CP->Value + DM->WITMITM_CODE->Text + DM->WITMITM_INDICE->Value;
		if (InitialFullCode != newcode) {
			if ( (DM->WITMITM_CODE->Text < -1) ) {
				MessageDlg("Code > 0 Only!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
				return;
			}
			DM->WITMITM_COMMENT->Value = DM->WITMITM_COMMENT->Value + "M<" + InitialFullCode + "> ";
		}
	}
	if ( Mode == "NewFound" ) {
		DM->WITMITM_COMMENT->Value = DM->WITMITM_COMMENT->Value + "Lost & Found";
    }

	// Creation ou Validation de l'Item
	DM->WITM->Post();
	id = DM->WITMITM_ID->Value;
	qty = EditStepQty->Text.ToInt();

	if ( Mode == "Modify" ) {
		newcode = DM->WITMITM_CP->Value + DM->WITMITM_CODE->Text + DM->WITMITM_INDICE->Value;
		DM->LogAdd(" Modify Item Code from <" + InitialFullCode + "> to <" + newcode + "> (" + DM->WITMITM_NAME->Value + ")");
	} else if (Mode == "Purchase") {
		// Purchase New Item
		DM->WPURITMInsert(DM->TPURINV_ID->Value, DM->WITMITM_ID->Value, EditStepQty->Text.ToInt(), DM->WITMITM_PURCHASE->Value);
	} else if (Mode == "Indice") {
		// Purchase New Indice
		DM->RefreshITM(id);
		DM->WPURITMInsert(DM->TPURINV_ID->Value, DM->WITMITM_ID->Value, EditStepQty->Text.ToInt(), DM->WITMITM_PURCHASE->Value);
	} else 	if (Mode == "UnknownItem") {
		// Sale Unknow Item
//		// Creation de l'Item Unknow dans LF (* Sale Without Code)
//		DM->WLFITM->Open();
//		DM->WLFITM->Append();
//		DM->WLFITMLFITM_DATE->AsDateTime = Now();
//		DM->WLFITMLFITM_ITM_ID->Value = id;
//		DM->WLFITMLFITM_LF_ID->Value = DM->LFID_SaleWithoutCode;
//		DM->WLFITMLFITM_QTY->Value = qty;
//		DM->WLFITM->Post();

		// Creation de la ligne dans la Sale
		DM->RefreshITM(id);
		DM->WSALITMInsert(DM->TSALINV_ID->Value, DM->WITMITM_ID->Value, EditStepQty->Text.ToInt(), DM->WITMITM_SALE->Value);
	} else if (Mode == "NewFound") {
		DM->WLFITM->Open();
		DM->WLFITM->Append();
		DM->WLFITMLFITM_DATE->AsDateTime = Now();
		DM->WLFITMLFITM_ITM_ID->Value = id;
		DM->WLFITMLFITM_LF_ID->Value = DM->LFID_ItemLostOrFound;
		DM->WLFITMLFITM_QTY->Value = qty;
		DM->WLFITM->Post();
		DM->RefreshITM(id);
		DM->RefreshLFITM(DM->WLFITMLFITM_ID->Value);
		DM->WLFITM->Close();
	} else if (Mode == "NewASMITM") {
		DM->WLFITM->Open();
		DM->WLFITM->Append();
		DM->WLFITMLFITM_DATE->AsDateTime = Now();
		DM->WLFITMLFITM_ITM_ID->Value = id;
		DM->WLFITMLFITM_LF_ID->Value = DM->LFID_ItemLostOrFound;
		DM->WLFITMLFITM_QTY->Value = qty;
		DM->WLFITM->Post();
		DM->WASMITMInsert(DM->TASMASM_ID->Value, DM->WITMITM_ID->Value, EditStepQty->Text.ToInt());
		DM->RefreshITM(id);
		DM->RefreshLFITM(NULL);
		DM->WLFITM->Close();
	} else if (Mode == "NewAssembly") {
		DM->WASM->Open();
		DM->WASM->Append();
		DM->WASMASM_ITM_ID->Value = id;
		DM->WASMASM_ITM_QTY->Value = qty;
		DM->WASMASM_DATE->Value = Now();
		DM->WASM->Post();
		DM->RefreshASM(DM->WASMASM_ID->Value);
		DM->RefreshITM(id);
		DM->WASM->Close();
	}  else if (Mode == "ModifyAssembly") {
		DM->WASM->Open();
		DM->WASM->Locate("ASM_ID",DM->TASMASM_ID->Value);
		DM->WASM->Edit();
		DM->WASMASM_ITM_QTY->Value = qty;
		DM->WASMASM_DATE->Value = Now();
		DM->WASM->Post();
		DM->RefreshASM(DM->WASMASM_ID->Value);
		DM->WASM->Close();
	}

	DM->RefreshAll();
	Close();
}

//---------------------------------------------------------------------------
void __fastcall TFormITM::ButtonCancelClick(TObject *Sender)
{
	Close();
}
//---------------------------------------------------------------------------
void __fastcall TFormITM::DBEditStep4Change(TObject *Sender)
{
	if ( (DBEditStep4->EditText == "") ) {
		LabelStep4->Font->Color = FMain->ColorError;
	} else {
		LabelStep4->Font->Color = FMain->ColorDisabled;
	}
	Controle();
}

void __fastcall TFormITM::DBEditStep5Change(TObject *Sender)
{
	if ( (DBEditStep5->EditText == "") ) {
		LabelStep5->Font->Color = FMain->ColorError;
	} else {
		LabelStep5->Font->Color = FMain->ColorDisabled;
	}
	Controle();
}

void __fastcall TFormITM::DBEditStep6Change(TObject *Sender)
{
	if ( (DBEditStep6->EditText == "") ) {
		LabelStep6->Font->Color = FMain->ColorError;
	} else {
		LabelStep6->Font->Color = FMain->ColorDisabled;
	}
	Controle();
}

void __fastcall TFormITM::ButtonTypeClick(TObject *Sender)
{
	UnicodeString t;

	t = ((TButton*)(Sender))->Caption.SubString(1,1);
	if (t == "N") {
		DM->WITMITM_CP->Value = "";
	} else {
		if (t == "V") DM->WITMITM_CODE->Value = 0;
		DM->WITMITM_CP->Value = t;
    }
	LabelStep1->Font->Color = FMain->ColorDisabled;
	Controle();
}

void __fastcall TFormITM::EditStepQtyChange(TObject *Sender)
{
	if ( (EditStepQty->Text == "") || ( !DM->IsDigit(EditStepQty->Text) ) ) {
		LabelStep7->Font->Color = FMain->ColorError;
	} else {
		LabelStep7->Font->Color = FMain->ColorDisabled;
	}
	Controle();
}

void __fastcall TFormITM::Button6Click(TObject *Sender)
{
	DM->WITMITM_UNIT->Value = "U";
	LabelStep3->Font->Color = FMain->ColorDisabled;
}
//---------------------------------------------------------------------------
void __fastcall TFormITM::Button7Click(TObject *Sender)
{
	DM->WITMITM_UNIT->Value = "Lot";
	LabelStep3->Font->Color = FMain->ColorDisabled;
}
//---------------------------------------------------------------------------
void __fastcall TFormITM::Button8Click(TObject *Sender)
{
	DM->WITMITM_UNIT->Value = "M2";
	LabelStep3->Font->Color = FMain->ColorDisabled;
}
//---------------------------------------------------------------------------


void __fastcall TFormITM::DBEditCODEChange(TObject *Sender)
{
    Controle();
}
//---------------------------------------------------------------------------

void __fastcall TFormITM::DBLookupListBox1Click(TObject *Sender)
{
	LabelStep2->Font->Color = FMain->ColorDisabled;
	Controle();
}
//---------------------------------------------------------------------------

void __fastcall TFormITM::ButtonPlusClick(TObject *Sender)
{
	EditStepQty->Text = UnicodeString(EditStepQty->Text.ToInt() + 1);
}
//---------------------------------------------------------------------------

void __fastcall TFormITM::ButtonMoinsClick(TObject *Sender)
{
	if (EditStepQty->Text.ToInt() > 1) EditStepQty->Text = UnicodeString(EditStepQty->Text.ToInt() - 1);
}
//---------------------------------------------------------------------------

