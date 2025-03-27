//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UnitINVPAY.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormINVPAY *FormINVPAY;
//---------------------------------------------------------------------------
__fastcall TFormINVPAY::TFormINVPAY(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFormINVPAY::FormShow(TObject *Sender)
{
	MonthCalendar1->Date    = Now();
	EditINVPAYAmount->Text  = "";
	EditINVPAYComment->Text = FormINV->comment;
}

void __fastcall TFormINVPAY::FormClose(TObject *Sender, TCloseAction &Action)
{
	//
}

void __fastcall TFormINVPAY::ButtonCancelClick(TObject *Sender)
{
	FormINV->amount = 0;
    Close();
}
//---------------------------------------------------------------------------

void __fastcall TFormINVPAY::ButtonPayClick(TObject *Sender)
{
	int v;

	try
	{
		v = EditINVPAYAmount->Text.ToInt();
	}
	catch (...)
	{
		MessageDlg("Enter a valid Amount!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	if (v > FormINV->due) v = FormINV->due;
	FormINV->amount = v;
	FormINV->invpaydate = MonthCalendar1->Date;
    Close();
}
//---------------------------------------------------------------------------

void __fastcall TFormINVPAY::Button9Click(TObject *Sender)
{
	EditINVPAYAmount->Text = "";
}
//---------------------------------------------------------------------------

void __fastcall TFormINVPAY::ButtonNumberClick(TObject *Sender)
{
    EditINVPAYAmount->Text = EditINVPAYAmount->Text + ((TButton*)(Sender))->Caption;
}
//---------------------------------------------------------------------------


