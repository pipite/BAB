//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UnitITMMerge.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormITMMerge *FormITMMerge;
//---------------------------------------------------------------------------
__fastcall TFormITMMerge::TFormITMMerge(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFormITMMerge::FormShow(TObject *Sender)
{
	FDTable1->Open();
	FDTable2->Open();
	FDTable1->Locate("ITM_ID",DM->TITMITM_ID->Value);
	FDTable2->Locate("ITM_ID",DM->TITMITM_ID->Value);
}
//---------------------------------------------------------------------------

void __fastcall TFormITMMerge::FormClose(TObject *Sender, TCloseAction &Action)
{
	if (FMain->AdminMode) {
		FDTable1->Close();
		FDTable2->Close();
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormITMMerge::Button2Click(TObject *Sender)
{
    Close();
}
//---------------------------------------------------------------------------

void __fastcall TFormITMMerge::Button1Click(TObject *Sender)
{
	int idkeep, iddestroy;
	UnicodeString itmkeep, itmdestroy, pursal, log, txtkeep, txtdestroy;

	Memo2->Clear();
	idkeep    = FDTable1ITM_ID->Value;
	iddestroy = FDTable2ITM_ID->Value;
	itmkeep    = FDTable1ITM_CP->Value + FDTable1ITM_CODE->AsString + FDTable1ITM_INDICE->Value;
	itmdestroy = FDTable2ITM_CP->Value + FDTable2ITM_CODE->AsString + FDTable2ITM_INDICE->Value;
	txtkeep    = FDTable1ITM_NAME->Value;
	txtdestroy = FDTable2ITM_NAME->Value;

	log = " Merge Item to Keep <" + itmkeep + " : " + txtkeep + "> with Item to Destroy <" + itmdestroy + " : " + txtdestroy + ">";
	if ( (idkeep == NULL) || (iddestroy == NULL) ) {
		MessageDlg("No Item selected!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
	} else if ( idkeep == iddestroy ) {
		MessageDlg("Selected Item's cannot be same Item!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
	} else if (MessageDlg(log + " ?",mtInformation,  TMsgDlgButtons() << mbOK << mbCancel, 1) == mrOk) {
		DM->LogAdd(log);
		// Replace all destroyitm in WLFITM
		DM->WLFITM->Open();
		DM->WLFITM->First();
		while (!DM->WLFITM->Eof) {
			if (DM->WLFITMLFITM_ITM_ID->Value == iddestroy) {
				log = "  In Lost and Found.";
				Memo2->Lines->Add(log);
				DM->LogAdd(log);
				DM->WLFITM->Edit();
				DM->WLFITMLFITM_ITM_ID->Value = idkeep;
				DM->WLFITMLFITM_COMMENT->Value = "Ex <" + itmdestroy + ">";
				DM->WLFITM->Post();
			}
			DM->WLFITM->Next();
		}
		DM->WLFITM->Close();
		DM->TLFITM->Refresh();

		// Replace all destroyitm in WASMITM
		DM->WASMITM->Open();
		DM->WASMITM->First();
		while (!DM->WASMITM->Eof) {
			if (DM->WASMITMASMITM_ITM_ID->Value == iddestroy) {
				log = "  In Assembly.";
				Memo2->Lines->Add(log);
				DM->LogAdd(log);
				DM->WASMITM->Edit();
				DM->WASMITMASMITM_ITM_ID->Value = idkeep;
				DM->WASMITMASMITM_COMMENT->Value = "Ex <" + itmdestroy + ">";
				DM->WASMITM->Post();
			}
			DM->WASMITM->Next();
		}
		DM->WASMITM->Close();
		DM->TASMITM->Refresh();

		// Replace all destroyitm in WINVITM
		DM->WINV->Filtered = false;
		DM->WINVITM->Filtered = false;
		DM->WINV->Open();
		DM->WINVITM->Open();
		DM->WINVITM->First();
		while (!DM->WINVITM->Eof) {
			if (DM->WINVITMINVITM_ITM_ID->Value == iddestroy) {
				DM->WINV->Locate("INV_ID",DM->WINVITMINVITM_INV_ID->Value);
				if (DM->WINVINV_TYPE->Value == "S") pursal = "  In Sale Invoice N° ";
				if (DM->WINVINV_TYPE->Value == "P") pursal = "  In Purchase Invoice N° ";
				pursal += DM->WINVINV_NUMBER->AsString;
				log = pursal;
				Memo2->Lines->Add(log);
				DM->LogAdd(log);
				DM->WINVITM->Edit();
				DM->WINVITMINVITM_ITM_ID->Value = idkeep;
				DM->WINVITMINVITM_COMMENT->Value = "Ex <" + itmdestroy + ">";
				DM->WINVITM->Post();
			}
			DM->WINVITM->Next();
		}
		DM->WINV->Close();
		DM->WINVITM->Close();
		DM->TSALITM->Refresh();
		DM->RefreshPURITM(NULL);

		DM->RefreshPUR(NULL);
		DM->RefreshSAL(NULL);

		// Destroy destroyitm in WITM
		DM->WITM->Open();
		DM->WITM->Refresh();
		DM->WITM->Locate("ITM_ID",iddestroy);
		log = "  Remove Item " + itmdestroy;
		Memo2->Lines->Add(log);
		DM->LogAdd(log);
		DM->WITM->Delete();
		DM->WITM->Locate("ITM_ID",idkeep);
		DM->WITM->Edit();
		if (DM->WITMITM_COMMENT->Value == "") DM->WITMITM_COMMENT->Value = "Group with ";
		DM->WITMITM_COMMENT->Value = DM->WITMITM_COMMENT->Value + "<" + itmdestroy + "> ";
		DM->WITM->Post();
		DM->WITM->Close();

		DM->RefreshITM(idkeep);
	}
	Close();
}
//---------------------------------------------------------------------------

