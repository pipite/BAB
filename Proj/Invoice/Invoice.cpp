//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <System.Win.ComServ.hpp>
#include <tchar.h>
//---------------------------------------------------------------------------
#include <Vcl.Styles.hpp>
#include <Vcl.Themes.hpp>
//#include "DMIM.h"
#include "DMDM.h"
USEFORM("..\..\Src\Invoice\DMDM.cpp", DM); /* TRemoteDataModule: File Type */
USEFORM("..\..\Src\Invoice\Splash.cpp", Form5);
USEFORM("..\..\Src\Invoice\UMain.cpp", FMain);
USEFORM("..\..\Src\Invoice\UnitAbout.cpp", FormAbout);
USEFORM("..\..\Src\Invoice\UnitASMITM.cpp", FormASMITM);
USEFORM("..\..\Src\Invoice\UnitCNT.cpp", FormCNT);
USEFORM("..\..\Src\Invoice\UnitCNTMerge.cpp", FormCNTMerge);
USEFORM("..\..\Src\Invoice\UnitDB.cpp", FormDB);
USEFORM("..\..\Src\Invoice\UnitGRP.cpp", FormGRP);
USEFORM("..\..\Src\Invoice\UnitINV.cpp", FormINV);
USEFORM("..\..\Src\Invoice\UnitINVITM.cpp", FormINVITM);
USEFORM("..\..\Src\Invoice\UnitINVPAY.cpp", FormINVPAY);
USEFORM("..\..\Src\Invoice\UnitITM.cpp", FormITM);
USEFORM("..\..\Src\Invoice\UnitITMMerge.cpp", FormITMMerge);
USEFORM("..\..\Src\Invoice\UnitITMReplace.cpp", FormITMReplace);
USEFORM("..\..\Src\Invoice\UnitLF.cpp", FormLF);
USEFORM("..\..\Src\Invoice\UnitLFITM.cpp", FormLFITM);
USEFORM("..\..\Src\Invoice\UnitSC.cpp", FormSC);
//---------------------------------------------------------------------------
#pragma link "System.Win.ComServ"

static Comserv::TCppActiveXModule _ax_module(true);

int WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{
	try
	{
		Application->Initialize();
		Application->MainFormOnTaskBar = true;
		Application->CreateForm(__classid(TFMain), &FMain);
		Application->CreateForm(__classid(TDM), &DM);
		Application->CreateForm(__classid(TForm5), &Form5);
		Application->CreateForm(__classid(TFormAbout), &FormAbout);
		Application->CreateForm(__classid(TFormASMITM), &FormASMITM);
		Application->CreateForm(__classid(TFormCNT), &FormCNT);
		Application->CreateForm(__classid(TFormCNTMerge), &FormCNTMerge);
		Application->CreateForm(__classid(TFormDB), &FormDB);
		Application->CreateForm(__classid(TFormGRP), &FormGRP);
		Application->CreateForm(__classid(TFormINV), &FormINV);
		Application->CreateForm(__classid(TFormINVITM), &FormINVITM);
		Application->CreateForm(__classid(TFormINVPAY), &FormINVPAY);
		Application->CreateForm(__classid(TFormITM), &FormITM);
		Application->CreateForm(__classid(TFormITMMerge), &FormITMMerge);
		Application->CreateForm(__classid(TFormITMReplace), &FormITMReplace);
		Application->CreateForm(__classid(TFormLF), &FormLF);
		Application->CreateForm(__classid(TFormLFITM), &FormLFITM);
		Application->CreateForm(__classid(TFormSC), &FormSC);
		Application->Run();
	}
	catch (Exception &exception)
	{
		Application->ShowException(&exception);
	}
	catch (...)
	{
		try
		{
			throw Exception("");
		}
		catch (Exception &exception)
		{
			Application->ShowException(&exception);
		}
	}
	return 0;
}
//---------------------------------------------------------------------------
