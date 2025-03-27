//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UnitCNTMerge.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormCNTMerge *FormCNTMerge;
//---------------------------------------------------------------------------
__fastcall TFormCNTMerge::TFormCNTMerge(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TFormCNTMerge::Button1Click(TObject *Sender)
{
	int idkeep, iddestroy;
	UnicodeString cntkeep, cntdestroy, pursal, log;

	Memo2->Clear();
	idkeep     = TCNT1CNT_ID->Value;
	iddestroy  = TCNT2CNT_ID->Value;
	cntkeep    = TCNT1CNT_FIRSTNAME->Value;
	cntdestroy = TCNT2CNT_FIRSTNAME->Value;

	log = " Merge Contact to Keep <" + cntkeep + "> with Contact to Destroy <" + cntdestroy + ">";
	if ( (idkeep == NULL) || (iddestroy == NULL) ) {
		MessageDlg("No Contact selected!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
	} else if ( idkeep == iddestroy ) {
		MessageDlg("Selected Contact's cannot be same!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
	} else if (MessageDlg(log + " ?",mtInformation,  TMsgDlgButtons() << mbOK << mbCancel, 1) == mrOk) {
		DM->LogAdd(log);
		DM->WINV->Open();
		DM->WINV->First();
		if ( (TCNT1CNT_ID->Value != NULL) && (TCNT2CNT_ID->Value != NULL) ){
			if ( TCNT1CNT_ID->Value != TCNT2CNT_ID->Value ){
				while (!DM->WINV->Eof) {
					if (DM->WINVINV_CNT_ID->Value == TCNT2CNT_ID->Value) {
						if (DM->WINVINV_TYPE->Value == "S") pursal = "  In Sale N° ";
						if (DM->WINVINV_TYPE->Value == "P") pursal = "  In Purchase N° ";
						pursal += DM->WINVINV_NUMBER->AsString;
						log = pursal;
						Memo2->Lines->Add(log);
						DM->LogAdd(log);
						DM->WINV->Edit();
						DM->WINVINV_CNT_ID->Value = TCNT1CNT_ID->Value;
						DM->WINV->Post();
					}
					DM->WINV->Next();
				}
				TCNT1->Edit();
				TCNT1CNT_COMMENT->Value = TCNT1CNT_COMMENT->Value + "<" + cntdestroy + ">";
				TCNT1->Post();
				TCNT2->Delete();
				DM->TCNT->Refresh();
			}
		}
		DM->WINV->Close();
		DM->TPUR->Refresh();
		log = "  Remove Contact " + cntdestroy + "<id:" + UnicodeString(iddestroy) + ">";;
		Memo2->Lines->Add(log);
		DM->LogAdd(log);
		TCNT1->Refresh();
		TCNT2->Refresh();
		TCNT1->Locate("CNT_ID",idkeep);
		TCNT2->Locate("CNT_ID",idkeep);
	}
}
//---------------------------------------------------------------------------



void __fastcall TFormCNTMerge::FormActivate(TObject *Sender)
{
	TCNT1->Open();
	TCNT2->Open();
	TCNT1->Locate("CNT_ID",DM->TCNTCNT_ID->Value);
	TCNT2->Locate("CNT_ID",DM->TCNTCNT_ID->Value);
}
//---------------------------------------------------------------------------

void __fastcall TFormCNTMerge::FormClose(TObject *Sender, TCloseAction &Action)
{
	if (FMain->AdminMode) {
		TCNT2->Close();
		TCNT1->Close();
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormCNTMerge::Button3Click(TObject *Sender)
{
	Close();
}
//---------------------------------------------------------------------------

