//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UnitDB.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormDB *FormDB;
//---------------------------------------------------------------------------
__fastcall TFormDB::TFormDB(TComponent* Owner)
	: TForm(Owner)
{

}

void __fastcall TFormDB::FormClose(TObject *Sender, TCloseAction &Action)
{
	if (FMain->AdminMode) {
		if ( !DM->Connect->Connected ) FMain->Close();
	}
	FMain->Show();
}

//---------------------------------------------------------------------------
void __fastcall TFormDB::ButtonRestoreClick(TObject *Sender)
{
	String sql;

	if (EditInstance->Text  != "Enter Instance Name here") {
		TOpenDialog *OpenMe = new TOpenDialog(FMain);
		OpenMe->InitialDir = FMain->LabelPathBackup->Caption;
		if ( OpenMe->Execute() == True ) {
			try {
				LabelInfo->Caption = "Try to connect to SQL Server Instance <" + EditInstance->Text + "> Please wait...";
				LabelInfo->Refresh();
				DM->DatabaseClose();
				DM->MasterOpen();
				sql = "restore database BAB from disk = '" + OpenMe->FileName + "' with replace";
				DM->Master->ExecSQL(sql);
				DM->MasterClose();
				DM->DatabaseTableOpen();
				//DM->LogAdd(" " + sql);
				DM->RefreshAll();
				FMain->SaveParam();
				Close();
			} catch (...) {
				LabelInfo->Caption = "Instance " + EditInstance->Text + " Not found.";
				MessageDlg("Fail to load Database.\n Database is perhaps Busy or Verify Instance Name and retry" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
			}
		}
		delete OpenMe;
	} else {
		MessageDlg("Enter Instance Name !!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
	}
	LabelInfo->Caption = "Database Setup";
}

void __fastcall TFormDB::ButtonEmptyClick(TObject *Sender)
{
	try {
		DM->DatabaseClose();
		DM->MasterOpen();
		DM->Master->ExecSQL("restore database BAB from disk = '" + FMain->LabelPathBackup->Caption + "\\EMPTY.bak' with replace");
		DM->MasterClose();
		DM->DatabaseTableOpen();
		if (DM->Connect->Connected) {
			DM->LogAdd(" restore database BAB from disk = 'EMPTY.bak' with replace");
			DM->RefreshAll();
		}
		FMain->SaveParam();
		Close();
	} catch (...) {
		LabelInfo->Caption = "Fail to load EMPTY.bak Database: Verify Instance Name and retry";
		MessageDlg("Fail to load EMPTY.bak Database: Verify Instance Name and retry." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
	}
}

void __fastcall TFormDB::EditParamChange(TObject *Sender)
{
	FMain->Server = EditServer->Text;
	FMain->Instance = EditInstance->Text;
	FMain->SaveParam();
	if (EditServer->Text == "(Local)") {
		ButtonEmpty->Enabled = true;
		ButtonRestore->Enabled = true;
		FMain->NetworkServer = false;
		FMain->ServerIP = "(Local)";
	} else {
		ButtonEmpty->Enabled = false;
		ButtonRestore->Enabled = false;
		FMain->NetworkServer = true;
		FMain->ServerIP = EditServer->Text;
	}
	FMain->UpdateFormCaption();
}
//---------------------------------------------------------------------------


void __fastcall TFormDB::ButtonContinueClick(TObject *Sender)
{
	try {
		FormSC->Show();
		FormSC->Update();
		DM->MasterOpen();
		if (FMain->MasterFound) {
			DM->DatabaseTableOpen();
			DM->RefreshAll();
			FMain->SaveParam();
			Close();
		} else {
			MessageDlg("Fail to access Master Database." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		}

	} catch (...) {
		LabelInfo->Caption = "Database not found: Verify Instance Name and retry";
		MessageDlg("Database not found: Verify Instance Name and retry." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
	}
}
//---------------------------------------------------------------------------

void __fastcall TFormDB::FormShow(TObject *Sender)
{
	EditServer->OnChange    = NULL;
	EditInstance->OnChange  = NULL;
	EditServer->Text        = FMain->Server;
	EditInstance->Text      = FMain->Instance;
	ButtonContinue->Enabled = FMain->DatabaseFound;
	EditServer->OnChange    = EditParamChange;
	EditInstance->OnChange  = EditParamChange;
	LabelIP->Caption        = FMain->ClientIP;

	if (FMain->Server != "(Local)") {
		ButtonEmpty->Enabled = false;
		ButtonRestore->Enabled = false;
		LabelServer->Caption = "Network Server";
		LabelSQLEngine->Caption = "Not Required";
		LabelServiceStart->Caption = "Not Required";
	} else {
		ButtonEmpty->Enabled = true;
		ButtonRestore->Enabled = true;
		LabelServer->Caption = "Local Server";
		LabelServer->Font->Color = clGreen;

		if (FMain->ServiceFound) {
			LabelSQLEngine->Caption = "Instaled";
			LabelSQLEngine->Font->Color = clGreen;
			EditServer->Font->Color = clGreen;
			EditInstance->Font->Color = clGreen;
		} else {
			LabelSQLEngine->Caption = "Not Instaled";
			LabelSQLEngine->Font->Color = clRed;
			EditServer->Font->Color = clRed;
			EditInstance->Font->Color = clRed;
		}
		if (FMain->ServiceStarted) {
			LabelServiceStart->Caption = "Started";
			LabelServiceStart->Font->Color = clGreen;
		} else {
			LabelServiceStart->Caption = "Not Started";
			LabelServiceStart->Font->Color = clRed;
		}
	}

	if (FMain->DatabaseFound) {
		LabelDatabase->Caption = "Database found";
		LabelDatabase->Font->Color = clGreen;
		ButtonContinue->Enabled = true;
	} else {
		LabelDatabase->Caption = "Database Not found";
		LabelDatabase->Font->Color = clRed;
	}
	if (FormDB->LabelSQLServerDBVersion->Caption == FMain->SoftwareDBVersion) {
		ButtonContinue->Enabled = true;
		LabelSQLServerDBVersion->Font->Color = clGreen;
	} else {
		ButtonContinue->Enabled = false;
		LabelSQLServerDBVersion->Font->Color = clRed;
	}
}
//---------------------------------------------------------------------------


void __fastcall TFormDB::Button1Click(TObject *Sender)
{
	EditServer->Text = "(local)";
}
//---------------------------------------------------------------------------

