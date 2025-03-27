//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UnitAbout.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormAbout *FormAbout;
//---------------------------------------------------------------------------
__fastcall TFormAbout::TFormAbout(TComponent* Owner)
	: TForm(Owner)
{
	Label4->Caption = FMain->SoftwareVersion;
	Label5->Caption = FMain->SoftwareDBVersion;
}

//---------------------------------------------------------------------------
void __fastcall TFormAbout::FormShow(TObject *Sender)
{
	RichEdit1->SelStart = RichEdit1->Perform(EM_LINEINDEX, 1, 0);
}
//---------------------------------------------------------------------------
