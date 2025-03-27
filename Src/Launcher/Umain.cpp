#include "LauncherPCH1.h"
#pragma hdrstop

#include "Umain.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormCreate(TObject *Sender)
{
	UnicodeString invoice;

	Visible = false;
	invoice = "C:\\Program Files (x86)\\Invoice\\Bin\\Invoice.exe";
	if ( FileExists(invoice) ) {
		//Launch itself as admin
		SHELLEXECUTEINFO sei = { sizeof(sei) };
		sei.lpVerb = L"runas";
		sei.lpFile = invoice.w_str();
		sei.hwnd = NULL;
		sei.nShow = SW_NORMAL;
		ShellExecuteEx(&sei);
	}
    Timer1->Enabled = true;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
	Close();
}
//---------------------------------------------------------------------------
