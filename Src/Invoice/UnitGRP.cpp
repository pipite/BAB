//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UnitGRP.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormGRP *FormGRP;
//---------------------------------------------------------------------------
__fastcall TFormGRP::TFormGRP(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFormGRP::FormShow(TObject *Sender)
{
	WGRP->Open();
	if (Mode == "Modify") {
		WGRP->Locate("GRP_ID",DM->TGRPGRP_ID->Value);
		OriginalName = DM->TGRPGRP_NAME->Value;
		Caption = "  Modify Group: <" + OriginalName + ">";
		WGRP->Edit();
	}
	if (Mode == "New") {
		OriginalName = "";
		Caption = "  Create New Group.";
		WGRP->Append();
	}
}
//---------------------------------------------------------------------------
void __fastcall TFormGRP::ButtonCancelClick(TObject *Sender)
{
    Close();
}
//---------------------------------------------------------------------------
void __fastcall TFormGRP::ButtonOKClick(TObject *Sender)
{
	if (Trim(DBEditName->Text) == "") {
		MessageDlg("Group Name cannot be Empty." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
        return;
	}
	DBEditName->Text = FMain->MajMin(DBEditName->Text);
	DM->WGRP->Open();
	if (DBEditName->Text != OriginalName) {
		if ( DM->WGRP->Locate("GRP_NAME",Trim(DBEditName->Text)) ) {
			MessageDlg(DBEditName->Text + " Already Exist. Dupplicate Name Not Allowed!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
			DBEditName->Text = OriginalName;
			DM->WGRP->Close();
			return;
		}
	}
	DM->WGRP->Close();
	WGRP->Post();
	Close();
}
//---------------------------------------------------------------------------
void __fastcall TFormGRP::FormClose(TObject *Sender, TCloseAction &Action)
{
	WGRP->Close();
}
//---------------------------------------------------------------------------
