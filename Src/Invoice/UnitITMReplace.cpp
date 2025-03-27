//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UnitITMReplace.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormITMReplace *FormITMReplace;
//---------------------------------------------------------------------------
__fastcall TFormITMReplace::TFormITMReplace(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFormITMReplace::FormClose(TObject *Sender, TCloseAction &Action)
{
	if (FMain->AdminMode) VReplaceBy->Close();
}
//---------------------------------------------------------------------------
void __fastcall TFormITMReplace::Button2Click(TObject *Sender)
{
	Close();
}
//---------------------------------------------------------------------------
void __fastcall TFormITMReplace::FormShow(TObject *Sender)
{
	Memo2->Clear();
	if ( DM->Connect->Connected ) {
		VReplaceBy->Open();
		VReplaceBy->Locate("ITM_ID",DM->TITMITM_ID->Value);
		DM->WITM->Open();
		DM->WITM->Locate("ITM_ID",DM->TSALITMINVITM_ITM_ID->Value);
		idtoreplace   = DM->TSALITMINVITM_ITM_ID->Value;
		itmtoreplace  = DM->WITMITM_CP->Value + DM->WITMITM_CODE->AsString + DM->WITMITM_INDICE->Value;
		LabelReplace->Caption = "Replace Item <" + itmtoreplace + " : " + DM->WITMITM_NAME->Value + "> in Sale Invoice N° " + DM->TSALINV_NUMBER->Text + " by:";
		DM->WITM->Close();
	}
}
//---------------------------------------------------------------------------
void __fastcall TFormITMReplace::GITM2DrawColumnCell(TObject *Sender, const TRect &Rect, int DataCol,
		  TColumn *Column, TGridDrawState State)
{
	if (VReplaceByITM_CP->Value != "V") {
		if ( (VReplaceByStock->Value < 0) ) {
			GITM2->Canvas->Font->Color = FMain->ColorError;
		} else if (VReplaceByPUR->Value == 0) {
			GITM2->Canvas->Font->Color = FMain->ColorWarning;
		} else if (VReplaceByStock->Value == 0) {
			GITM2->Canvas->Font->Color = FMain->ColorDisabled;
		}
	}
	GITM2->DefaultDrawColumnCell(Rect,DataCol,Column,State);
}
//---------------------------------------------------------------------------
void __fastcall TFormITMReplace::Button1Click(TObject *Sender)
{
	int idreplaceby;
	UnicodeString itmreplaceby, pursal, log;

	if (VReplaceByStock->Value < DM->TSALITMINVITM_QTY->Value && (VReplaceByITM_CP->Value != "V" ) ) {
		MessageDlg("Not Enought Item in Stock",mtInformation,  TMsgDlgButtons() << mbOK, 0);
	} else {
		idreplaceby   = VReplaceByITM_ID->Value;
		itmreplaceby  = VReplaceByITM_CP->Value + VReplaceByITM_CODE->AsString + VReplaceByITM_INDICE->Value;

		log = " Replace <" + itmtoreplace + "> by <" + itmreplaceby + "> in Sale N° " + DM->TSALINV_NUMBER->Text;
		if ( (idtoreplace == NULL) || (idreplaceby == NULL) ) {
			MessageDlg("No Item selected!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		} else if ( idtoreplace == idreplaceby ) {
			MessageDlg("Selected Item's cannot be same Item!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		} else if (MessageDlg(log + " ?",mtInformation,  TMsgDlgButtons() << mbOK << mbCancel, 1) == mrOk) {
			Memo2->Lines->Add(log);
			DM->LogAdd(log);

			DM->WINVITM->Filtered = false;
			DM->WINVITM->Open();
			DM->WINVITM->Locate("INVITM_ID",DM->TSALITMINVITM_ID->Value);
			DM->WINVITM->Edit();
			DM->WINVITMINVITM_ITM_ID->Value = idreplaceby;
			DM->WINVITMINVITM_COMMENT->Value = "Replace <" + itmtoreplace + ">";
			DM->WINVITM->Post();

			DM->WINVITM->Close();
			DM->RefreshAll();
		}
		Close();
	}
}
//---------------------------------------------------------------------------
