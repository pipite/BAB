//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UnitLF.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormLF *FormLF;
//---------------------------------------------------------------------------
__fastcall TFormLF::TFormLF(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFormLF::ButtonCancelClick(TObject *Sender)
{
    Close();
}
//---------------------------------------------------------------------------
void __fastcall TFormLF::ButtonOKClick(TObject *Sender)
{
	if (Trim(DBEditName->Text) == "") {
		MessageDlg("Category Name cannot be Empty." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
        return;
	}
	DBEditName->Text = FMain->MajMin(DBEditName->Text);
	DM->WLF->Open();
	if (DBEditName->Text != OriginalCategory) {
		if ( DM->WLF->Locate("LF_CATEGORY",Trim(DBEditName->Text)) ) {
			MessageDlg(DBEditName->Text + " Already Exist. Dupplicate Name Not Allowed!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
			DBEditName->Text = OriginalCategory;
			DM->WLF->Close();
			return;
		}
	}
	DM->WLF->Close();
	WLF->Post();
	Close();
}
//---------------------------------------------------------------------------
void __fastcall TFormLF::FormClose(TObject *Sender, TCloseAction &Action)
{
	WLF->Close();
}
//---------------------------------------------------------------------------
void __fastcall TFormLF::FormShow(TObject *Sender)
{
	WLF->Open();
	if (Mode == "Modify") {
		WLF->Locate("LF_ID",DM->TLFLF_ID->Value);
		OriginalCategory = DM->TLFLF_CATEGORY->Value;
		Caption = "  Modify Category: <" + OriginalCategory + ">";
		WLF->Edit();
	}
	if (Mode == "New") {
		OriginalCategory = "";
		Caption = "  Create New Category.";
		WLF->Append();
	}
}
//---------------------------------------------------------------------------
