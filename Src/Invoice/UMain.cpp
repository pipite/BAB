//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UMain.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFMain *FMain;
//---------------------------------------------------------------------------

__fastcall TFMain::TFMain(TComponent* Owner)
	: TForm(Owner)
{
	int pos;
	UnicodeString s;

	Timer1->Enabled = false;
	SoftwareVersion    = "1.10";
	SoftwareDBVersion  = "1.9";
	ServerIP           = "127.0.0.1";
	Password           = "151515";

	DoOnce = false;
	DoExit = false;
	MasterFound = false;
	AdminMode = CheckAdminMode();
	ClientIP = GetIP();

//	if ( !AdminMode ) {
//		wchar_t szPath[MAX_PATH];
//		if (GetModuleFileName(NULL, szPath, ARRAYSIZE(szPath)))
//		{
//			DoExit = true;
//			Visible = false;
//			MessageDlg("Invoice Require Administrator privilège to Identify and Start Database.\nYour Account must be Administrator, or Run Invoice As Administrator." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
////			Timer1->Interval = 1;
////			Launch itself as admin
////			SHELLEXECUTEINFO sei = { sizeof(sei) };
////			sei.lpVerb = L"runas";
////			sei.lpFile = szPath;
////			sei.hwnd = NULL;
////			sei.nShow = SW_NORMAL;
////			ShellExecuteEx(&sei);
//		}
//	} else {
		AppPath  = ExtractFilePath(Application->ExeName);
		ConfPath = "C:\\Users\\Public\\Documents\\Invoice\\";

		if ( (pos = AppPath.Pos(".\\Win32\\Debug\\" )) > 0 ) AppPath = AppPath.SubString(1,pos-1);
		if ( (pos = AppPath.Pos("\\Win32\\Debug\\" )) > 0 ) AppPath = AppPath.SubString(1,pos);
		if ( (pos = AppPath.Pos("\\Bin\\" )) > 0 ) AppPath = AppPath.SubString(1,pos);

		if (!DirectoryExists(ConfPath + "Backup")) CreateDir(ConfPath + "Backup");
		if (!DirectoryExists(ConfPath + "Config")) CreateDir(ConfPath + "Config");

		PARAMFILE = ConfPath + "Config\\Config.cfg";

		LabelPathBackup->Caption = ConfPath + "Backup";

		Param = new TStringList;
		if ( !FileExists(PARAMFILE) ) Param->SaveToFile(PARAMFILE);
		Param->LoadFromFile(PARAMFILE);

		Server   = GetParam("Server");
		Instance = GetParam("Instance");
		s        = GetParam("Style");
		ComboBoxStyle->Text = s;
		SetSkin(s);

		FormatSettings.CurrencyString    = "vnd";
		FormatSettings.CurrencyDecimals  = 0;
		FormatSettings.ThousandSeparator = ' ';
		FormatSettings.DecimalSeparator  = '.';
		FormatSettings.CurrencyFormat    = 3;
		FormatSettings.NegCurrFormat     = 8;
//	}
}

UnicodeString __fastcall TFMain::GetIP (void) {
	char szBuffer[1024];
	UnicodeString ip;

	#ifdef WIN32
	WSADATA wsaData;
	WORD wVersionRequested = MAKEWORD(2, 0);
	if(::WSAStartup(wVersionRequested, &wsaData) != 0)
		return "";
	#endif


	if(gethostname(szBuffer, sizeof(szBuffer)) == SOCKET_ERROR)
	{
	  #ifdef WIN32
	  WSACleanup();
	  #endif
	  return "";
	}

	struct hostent *host = gethostbyname(szBuffer);
	if(host == NULL) {
	  #ifdef WIN32
	  WSACleanup();
	  #endif
	  return "";
	}
	ip = UnicodeString( (int) ((struct in_addr *)(host->h_addr))->S_un.S_un_b.s_b1 );
	ip += "." + UnicodeString( (int) ((struct in_addr *)(host->h_addr))->S_un.S_un_b.s_b2 );
	ip += "." + UnicodeString( (int) ((struct in_addr *)(host->h_addr))->S_un.S_un_b.s_b3 );
	ip += "." + UnicodeString( (int) ((struct in_addr *)(host->h_addr))->S_un.S_un_b.s_b4 );
	return ip;
}

UnicodeString __fastcall TFMain::GetParam(UnicodeString param)
{
	int i;
	UnicodeString s, r;

	if (FileExists(PARAMFILE)) {
		for (i = 0; i < Param->Count; i++) {
			s = Param->Strings[i];
			if (s.Pos(param) > 0 ) {
				return Trim(s.SubString(s.Pos("=")+1,255));
			}
		}
	}

	if ( param == "Server"       ) return "(Local)";
	if ( param == "Instance"     ) return "SQLEXPRESS";
	if ( param == "Style"        ) return "Sky";
	if ( param == "PathBackup"   ) return ConfPath + "Backup";
	if ( param == "AutoBackup"   ) return "true";
	if ( param == "AutoSaveDays" ) return "2";
	return "";
}

void __fastcall TFMain::SaveParam(void) {
	Param->Clear();
	Param->Add("Server       = " + Server);
	Param->Add("Instance     = " + Instance);
	Param->Add("Style        = " + ComboBoxStyle->Text);
	Param->Add("PathBackup   = " + LabelPathBackup->Caption);
	Param->Add("AutoSaveDays = " + EditAutoSaveDays->Text);

	if (CBAutoBackup->Checked) {
		Param->Add("AutoBackup   = true");
	} else {
		Param->Add("AutoBackup   = false");
	}
	Param->SaveToFile(PARAMFILE);
}

void __fastcall TFMain::FormShow(TObject *Sender)
{
	UnicodeString s;

	if (!DoExit) {
		if (!DoOnce) {
//			if (FileExists(ConfPath + "Config\\Logo.jpg")) FormSC->Image1->Picture->LoadFromFile(ConfPath + "Config\\Logo.jpg");
//			FormSC->Show();
//			FormSC->Update();
//			Sleep(1);
			DoOnce = true;

			FirstLaunch = false;

			if (Server == "(Local)") {
				NetworkServer = false;
				CheckService();
				if ( (!ServiceFound || !ServiceStarted) ) {
					FirstLaunch = true;
				} else {
					if ( !(DatabaseFound = DM->DatabaseExist()) ) {
						FirstLaunch = true;
					}
				}
			} else {
				NetworkServer = true;
				if ( !(DatabaseFound = DM->DatabaseExist()) ) {
					FirstLaunch = true;
				}
			}
			MonthCalendar1->Date = Now();
			MonthCalendar2->Date = Now();

			EditPasswordChange(NULL);

			if (DatabaseFound) {
				DM->DatabaseOpen();
				DM->DatabaseVersion();
			}

//			FormDB->LabelSQLServerDBVersion->Caption = SQLServerDBVersion;

			if ( FirstLaunch ) {
				FormDB->LabelInfo->Caption = "Database Initialization";
				FormDB->ShowModal();
			}
			if ( SoftwareDBVersion != FormDB->LabelSQLServerDBVersion->Caption ) {
				FormDB->LabelInfo->Caption = "Wrong Database Version.";
				FormDB->ShowModal();
			}

			DM->DatabaseTableOpen();

			EditUnlock->OnChange = NULL;
			CBNegativeStockCompens->OnClick = NULL;
			CBAutoBackup->Checked     = ( GetParam("AutoBackup") == "true" );
			LabelPathBackup->Caption  = GetParam("PathBackup");
			EditAutoSaveDays->Text    = GetParam("AutoSaveDays");
			EditUnlock->OnChange      = EditUnlockChange;


			EditUnlock->Text                = DM->GetDBParam("Unlock");
			CBLockItemZero->Checked         = ( DM->GetDBParam("LockItemZero") == "true" );
			CBNegativeStockCompens->Checked = ( DM->GetDBParam("NegativeStockCompens") == "true" );
			CBAutoClearItem->Checked        = ( DM->GetDBParam("AutoClearItem") == "true" );
			EditCompanyName->Text           = DM->GetDBParam("CompanyName");
			EditCompanyEmail->Text          = DM->GetDBParam("CompanyEmail");
			EditCompanyTel->Text            = DM->GetDBParam("CompanyTel");
			EditCompanyAddress1->Text       = DM->GetDBParam("CompanyAddress1");
			EditCompanyAddress2->Text       = DM->GetDBParam("CompanyAddress2");
			UpdateFormCaption();

			if (DM->Connect->Connected) {
				CBNegativeStockCompens->OnClick = CBNegativeStockCompensClick;

				// Ordoner les GRIDS
				GridOrderBy(GCNT,"CNT_FIRSTNAME");
				GridOrderBy(GGRP,"GRP_NAME");
				GridOrderBy(GITM,"ITM_CODE");
				GridOrderBy(GPUR,"INV_NUMBER");
				GridOrderBy(GSAL,"INV_NUMBER");

				GridOrderBy(GPURITM,"INV_NUMBER");
				GridOrderBy(GSALITM,"INV_NUMBER");
				DM->TLF->IndexFieldNames = "LF_ID";
				GridOrderBy(GLFITM,"ITM_CODE");
				GridOrderBy(GMOVPUR,"INV_NUMBER");
				GridOrderBy(GMOVSAL,"INV_NUMBER");
				GridOrderBy(GTODO_NEG,"ITM_CODE");
				GridOrderBy(GTODO_UNK,"ITM_CODE");

				DM->TITM->FetchAll();
				DM->TSAL->Last();
				DM->TPUR->Last();
				DM->TPURITM->First();
				DM->TSALITM->First();
				DM->QMOVPUR->First();
				DM->QMOVSAL->First();
				DM->TITM->First();
			}
		}
	}
//	if (FormSC != NULL) FormSC->Hide();
	Timer1->Enabled = true;
}

void __fastcall TFMain::GridOrderBy(TDBGrid *dbgrid, UnicodeString fname) {
	int i;
	for (i = 0; i < dbgrid->Columns->Count; i++) {
		if (dbgrid->Columns->Items[i]->FieldName == fname) {
			(dbgrid->OnTitleClick)(dbgrid->Columns->Items[i]);
			dbgrid->DataSource->DataSet->First();
			break;
		}
	}
}

void __fastcall TFMain::FormClose(TObject *Sender, TCloseAction &Action)
{
	if (!DoExit) {
		if ( DM->MEMOINFO->State == dsEdit ) DM->MEMOINFO->Post();
		if ( DM->MEMOLOG->State == dsEdit )  DM->MEMOLOG->Post();
		if ( DM->MEMOTODO->State == dsEdit ) DM->MEMOTODO->Post();
		SaveParam();
		if ( AdminMode && !DoExit) {
			AutoBackup();
			delete Param;
		}
	}
}

bool __fastcall TFMain::UpdateFormCaption(void) {
	if (NetworkServer) {
		Caption = " Invoice V" + SoftwareVersion + " for " + EditCompanyName->Text + " (SQLServer Located on " + ServerIP + ")";
	} else {
		Caption = " Invoice V" + SoftwareVersion + " for " + EditCompanyName->Text + " (SQLServer Local)";
	}
}

bool __fastcall TFMain::CheckDatabase(void)
{
	try
	{
		DM->DatabaseOpen();
		return true;
	}
	catch (...)
	{
		return false;
	}
}

bool __fastcall TFMain::CheckAdminMode()
{
	BOOL fIsRunAsAdmin = FALSE;
    DWORD dwError = ERROR_SUCCESS;
    PSID pAdministratorsGroup = NULL;

	// Allocate and initialize a SID of the administrators group.
	SID_IDENTIFIER_AUTHORITY NtAuthority = SECURITY_NT_AUTHORITY;
	if (!AllocateAndInitializeSid(&NtAuthority, 2, SECURITY_BUILTIN_DOMAIN_RID, DOMAIN_ALIAS_RID_ADMINS, 0, 0, 0, 0, 0, 0, &pAdministratorsGroup)) {
		dwError = GetLastError();
		goto Cleanup;
	}

	// Determine whether the SID of administrators group is enabled in
	// the primary access token of the process.
	if (!CheckTokenMembership(NULL, pAdministratorsGroup, &fIsRunAsAdmin))
	{
		dwError = GetLastError();
		goto Cleanup;
	}

Cleanup:
    // Centralized cleanup for all allocated resources.
    if (pAdministratorsGroup)
    {
        FreeSid(pAdministratorsGroup);
        pAdministratorsGroup = NULL;
    }

    // Throw the error if something failed in the function.
    if (ERROR_SUCCESS != dwError)
    {
        throw dwError;
    }

    return fIsRunAsAdmin;
}

void __fastcall TFMain::CheckService(void)
{
	bool start;
	UnicodeString servicename;

	if ( (schSCManager = OpenSCManager(NULL, NULL, SC_MANAGER_ALL_ACCESS)) == NULL ) {
		if (GetLastError() == ERROR_ACCESS_DENIED) {
			ServiceStatus = "OpenSCManager: ERROR_ACCESS_DENIED";
		} else {
			ServiceStatus = "OpenSCManager: ERROR_DATABASE_DOES_NOT_EXIST";
		}
	}

	// Si le service est un service (Local)
	if (Server == "(Local)") {
		NetworkServer = false;
		// Verification des services et instances standard
		if (Instance != "") {
			servicename = L"MSSQL$" + Instance;
		} else {
			servicename = "MSSQLSERVER";
		}

		if ( IsServiceFound(servicename) ) {
			CloseServiceHandle(schSCManager);
			ServiceFound = true;
		} else if ( IsServiceFound("MSSQLSERVER") ) {
			Instance = "";
			ServiceFound = true;
			CloseServiceHandle(schSCManager);
		} else if ( IsServiceFound("MSSQL$SQLEXPRESS") ) {
			Instance = "SQLEXPRESS";
			ServiceFound = true;
			CloseServiceHandle(schSCManager);
		} else if ( IsServiceFound("MSSQL$MSSQLEXPRESS") ) {
			Instance = "MSSQLEXPRESS";
			ServiceFound = true;
			CloseServiceHandle(schSCManager);
		} else {
			CloseServiceHandle(schSCManager);
			ServiceFound = false;
		}
	} else {
		NetworkServer = true;
		CloseServiceHandle(schSCManager);
		ServiceStatus = "Database is on Server : " + Server;
	}
}

void __fastcall TFMain::GetQueryServiceStatusExErrorCode(void) {
	DWORD errcode;
	if (errcode = GetLastError() == ERROR_INVALID_HANDLE) {
		ServiceStatus = "QueryServiceStatusEx: ERROR_INVALID_HANDLE";
	} else if (errcode == ERROR_ACCESS_DENIED){
		ServiceStatus = "QueryServiceStatusEx: ERROR_ACCESS_DENIED";
	} else if (errcode == ERROR_INSUFFICIENT_BUFFER){
		ServiceStatus = "QueryServiceStatusEx: ERROR_INSUFFICIENT_BUFFER";
	} else if (errcode == ERROR_INVALID_PARAMETER){
		ServiceStatus = "QueryServiceStatusEx: ERROR_INVALID_PARAMETER";
	} else if (errcode == ERROR_INVALID_LEVEL){
		ServiceStatus = "QueryServiceStatusEx: ERROR_INVALID_LEVEL";
	} else if (errcode == ERROR_SHUTDOWN_IN_PROGRESS){
		ServiceStatus = "QueryServiceStatusEx: ERROR_SHUTDOWN_IN_PROGRESS";
	}
}

void __fastcall TFMain::GetStartServiceErrorCode(void) {
	DWORD errcode;
	if (errcode = GetLastError() == ERROR_ACCESS_DENIED) {
		ServiceStatus = "StartService: ERROR_ACCESS_DENIED";
	} else if (errcode == ERROR_INVALID_HANDLE){
		ServiceStatus = "StartService: ERROR_INVALID_HANDLE";
	} else if (errcode == ERROR_PATH_NOT_FOUND){
		ServiceStatus = "StartService: ERROR_PATH_NOT_FOUND";
	} else if (errcode == ERROR_SERVICE_ALREADY_RUNNING){
		ServiceStatus = "StartService: ERROR_SERVICE_ALREADY_RUNNING";
	} else if (errcode == ERROR_SERVICE_DATABASE_LOCKED){
		ServiceStatus = "StartService: ERROR_SERVICE_DATABASE_LOCKED";
	} else if (errcode == ERROR_SERVICE_DEPENDENCY_DELETED){
		ServiceStatus = "StartService: ERROR_SERVICE_DEPENDENCY_DELETED";
	} else if (errcode == ERROR_SERVICE_DEPENDENCY_FAIL){
		ServiceStatus = "StartService: ERROR_SERVICE_DEPENDENCY_FAIL";
	} else if (errcode == ERROR_SERVICE_DISABLED){
		ServiceStatus = "StartService: ERROR_SERVICE_DISABLED";
	} else if (errcode == ERROR_SERVICE_LOGON_FAILED){
		ServiceStatus = "StartService: ERROR_SERVICE_LOGON_FAILED";
	} else if (errcode == ERROR_SERVICE_MARKED_FOR_DELETE){
		ServiceStatus = "StartService: ERROR_SERVICE_MARKED_FOR_DELETE";
	} else if (errcode == ERROR_SERVICE_NO_THREAD){
		ServiceStatus = "StartService: ERROR_SERVICE_NO_THREAD";
	} else if (errcode == ERROR_SERVICE_REQUEST_TIMEOUT){
		ServiceStatus = "StartService: ERROR_SERVICE_REQUEST_TIMEOUT";
	}
}

bool __fastcall TFMain::IsServiceFound(UnicodeString servicename) {
	SERVICE_STATUS_PROCESS status;
	DWORD bytesNeeded;
	DWORD errcode;
	SC_HANDLE schService;
    DWORD dwOldCheckPoint;
	DWORD dwStartTickCount;
	DWORD dwWaitTime;

	ServiceStarted = false;
	// Get a handle to the service.
	if ( (schService = OpenService(schSCManager , servicename.w_str(), SC_MANAGER_ALL_ACCESS)) == NULL) {
		if (errcode = GetLastError() == ERROR_ACCESS_DENIED) {
			ServiceStatus = "OpenService: ERROR_ACCESS_DENIED";
		} else if (errcode == ERROR_INVALID_HANDLE){
			ServiceStatus = "OpenService: ERROR_INVALID_HANDLE";
		} else if (errcode == ERROR_INVALID_NAME){
			ServiceStatus = "OpenService: ERROR_INVALID_NAME" + servicename;
		} else if (errcode == ERROR_SERVICE_DOES_NOT_EXIST){
			ServiceStatus = "OpenService: ERROR_SERVICE_DOES_NOT_EXIST";
		}
		return false;
	}

	// Check the status in case the service is not stopped.
	if (!QueryServiceStatusEx(schService, SC_STATUS_PROCESS_INFO,(LPBYTE) &status,sizeof(SERVICE_STATUS_PROCESS), &bytesNeeded)) {
		GetQueryServiceStatusExErrorCode();
		CloseServiceHandle(schService);
		return true;
	}

	// Check if the service is already running.
	if(status.dwCurrentState != SERVICE_STOPPED && status.dwCurrentState != SERVICE_STOP_PENDING )
	{
		ServiceStatus = "Service Started";
		CloseServiceHandle(schService);
		ServiceStarted = true;
		return true;
	}

	// Save the tick count and initial checkpoint.
    dwStartTickCount = GetTickCount();
	dwOldCheckPoint = status.dwCheckPoint;

	// Wait for the service to stop before attempting to start it.
	while (status.dwCurrentState == SERVICE_STOP_PENDING)
    {
		dwWaitTime = status.dwWaitHint / 10;
		if( dwWaitTime < 1000 )
			dwWaitTime = 1000;
		else if ( dwWaitTime > 10000 )
            dwWaitTime = 10000;

        Sleep( dwWaitTime );

        // Check the status until the service is no longer stop pending.
		if (!QueryServiceStatusEx(schService, SC_STATUS_PROCESS_INFO,(LPBYTE) &status,sizeof(SERVICE_STATUS_PROCESS), &bytesNeeded)) {
			GetQueryServiceStatusExErrorCode();
			CloseServiceHandle(schService);
			return true;
		}

		if ( status.dwCheckPoint > dwOldCheckPoint )
        {
			// Continue to wait and check.
            dwStartTickCount = GetTickCount();
			dwOldCheckPoint = status.dwCheckPoint;
        }
        else
        {
			if(GetTickCount()-dwStartTickCount > status.dwWaitHint)
            {
				ServiceStatus = "TimeOut: SERVICE_STOP_PENDING";
				CloseServiceHandle(schService);
				return true;
            }
        }
    }

    // Attempt to start the service.
	if (!StartService(schService, 0, NULL) ) {
		GetStartServiceErrorCode();
		CloseServiceHandle(schService);
		return true;
	} else {
		ServiceStatus = "Service start pending...";
	}

    // Check the status until the service is no longer start pending.
	if (!QueryServiceStatusEx(schService, SC_STATUS_PROCESS_INFO,(LPBYTE) &status,sizeof(SERVICE_STATUS_PROCESS), &bytesNeeded)) {
		GetQueryServiceStatusExErrorCode();
		CloseServiceHandle(schService);
		return true;
	}

    // Save the tick count and initial checkpoint.
	dwStartTickCount = GetTickCount();
	dwOldCheckPoint = status.dwCheckPoint;

	while (status.dwCurrentState == SERVICE_START_PENDING)
    {
		dwWaitTime = status.dwWaitHint / 10;
		if( dwWaitTime < 1000 )
            dwWaitTime = 1000;
        else if ( dwWaitTime > 10000 )
            dwWaitTime = 10000;
		Sleep( dwWaitTime );

        // Check the status again.
		if (!QueryServiceStatusEx(schService, SC_STATUS_PROCESS_INFO,(LPBYTE) &status,sizeof(SERVICE_STATUS_PROCESS), &bytesNeeded)) {
			GetQueryServiceStatusExErrorCode();
			break;
		}

		if ( status.dwCheckPoint > dwOldCheckPoint ) {
            // Continue to wait and check.
			dwStartTickCount = GetTickCount();
			dwOldCheckPoint = status.dwCheckPoint;
		} else {
			if(GetTickCount()-dwStartTickCount > status.dwWaitHint) {
                // No progress made within the wait hint.
                break;
            }
        }
	}

    // Determine whether the service is running.
	if (status.dwCurrentState == SERVICE_RUNNING) {
		ServiceStarted = true;
		ServiceStatus = "Service Started";
	} else {
		ServiceStatus = "Service not Started.";
	}
	CloseServiceHandle(schService);
	return true;
}

//---------------------------------------------------------------------------
// Contacts
//---------------------------------------------------------------------------

void __fastcall TFMain::CBFilterCNTClick(TObject *Sender)
{
	SetFilter("FLT CNT");
}

//---------------------------------------------------------------------------
// Groups
//---------------------------------------------------------------------------


void __fastcall TFMain::CBGroupClick(TObject *Sender)
{
	SetFilter("FLT GRP");
}

//---------------------------------------------------------------------------
// PageControl2
//---------------------------------------------------------------------------

void __fastcall TFMain::PageControl2Change(TObject *Sender)
{
	GroupBoxCMD->Caption = PageControl2->ActivePage->Caption;
	SetFilter(PageControl2->ActivePage->Name);
}

//---------------------------------------------------------------------------
// ITems
//---------------------------------------------------------------------------

void __fastcall TFMain::SetFilter(UnicodeString action)
{
	UnicodeString fitm, flf, fcnt, oitm, fcntitm, titm, tsearch, tcnt, globalfilter;
	int id;

	if ( !DM->Connect->Connected ) return;

	if (action.SubString(1,8) == "TabSheet") {
		DM->RefreshAll();
	}

	if (action == "CHG CNT") {
		if (PageControl2->ActivePage == TabSheetLF) return;
		if (PageControl2->ActivePage == TabSheetASM) return;
		if (PageControl2->ActivePage == TabSheetHIST) return;
		if (!CBFilterCNT->Checked) return;
	}

	if (action == "CHG ITM") {
		if (PageControl2->ActivePage == TabSheetPUR) return;
		if (PageControl2->ActivePage == TabSheetSAL) return;
		if (PageControl2->ActivePage == TabSheetLF) return;
		if (PageControl2->ActivePage == TabSheetASM) return;
		if (PageControl2->ActivePage == TabSheetHIST) { DM->RefreshHST(); return; }
	}

	if (action == "CHG MOVPUR") {
		if ( (DM->QMOVPUR->RecordCount > 0) && (PageControl2->ActivePage == TabSheetMOV) ) {
			DM->DITM->OnDataChange = NULL;
			DM->TITM->Locate("ITM_ID",DM->QMOVPURITM_ID->Value);
			DM->DITM->OnDataChange = DM->DITMDataChange;
		}
	}

	if (action == "CHG MOVSAL") {
		if ( (DM->QMOVSAL->RecordCount > 0) &&(PageControl2->ActivePage == TabSheetSAL) ) {
			DM->DITM->OnDataChange = NULL;
			DM->TITM->Locate("ITM_ID",DM->QMOVSALITM_ID->Value);
			DM->DITM->OnDataChange = DM->DITMDataChange;
		}
	}

	if (action == "CHG PUR") {
		// Update PURITM
		DM->DPURITM->OnDataChange = NULL;
		DM->TPURITM->ParamByName("INVID")->Value = DM->TPURINV_ID->Value;
		DM->TPURITM->Open();
		DM->TPURITM->Refresh();
		DM->DPURITM->OnDataChange = DM->DPURITMDataChange;

		// Update PURPAY
//		DM->TPURPAY->ParamByName("INVID")->Value = DM->TPURINV_ID->Value;
//		DM->TPURPAY->Open();
//		DM->TPURPAY->Refresh();

		// Localize CNT
		if ( !CBFilterCNT->Checked && CBPURLink->Checked ) {
			DM->DCNT->OnDataChange = NULL;
			DM->TCNT->Locate("CNT_ID",DM->TPURINV_CNT_ID->Value);
			DM->DCNT->OnDataChange = DM->DCNTDataChange;
		}

		// Recherche dernier paiement pour cloture si > xx minutes
//		if ( DM->TPURPAY->RecordCount > 0 ) {
//			DM->TPURPAY->Last();
//			LastPurPay = DM->TPURPAYINVPAY_DATE->AsDateTime;
//		} else {
//			LastPurPay = TDateTime(0);
//		}
		AllowModify();
		return;
	}

	if (action == "CHG PURITM") {
		if (!CBPURITMLink->Checked) return;
		if ( (DM->TPURITM->RecordCount > 0) && (PageControl2->ActivePage == TabSheetPUR) ) {
			DM->DITM->OnDataChange = NULL;
			DM->TITM->Locate("ITM_ID",DM->TPURITMINVITM_ITM_ID->Value);
			DM->DITM->OnDataChange = DM->DITMDataChange;
		}
		return;
	}

	if (action == "CHG TODONEG") {
		if ( (DM->TPURITM->RecordCount > 0) && (PageControl2->ActivePage == TabSheetTDL) ) {
			DM->DITM->OnDataChange = NULL;
			DM->TITM->Locate("ITM_ID",DM->QTODO_NEGITM_ID->Value);
			DM->DITM->OnDataChange = DM->DITMDataChange;
		}
		return;
	}

	if (action == "CHG TODOUNK") {
		if ( (DM->TPURITM->RecordCount > 0) && (PageControl2->ActivePage == TabSheetTDL) ) {
			DM->DITM->OnDataChange = NULL;
			DM->TITM->Locate("ITM_ID",DM->QTODO_UNKITM_ID->Value);
			DM->DITM->OnDataChange = DM->DITMDataChange;
		}
		return;
	}

	if (action == "CHG SAL") {
		DM->DSALITM->OnDataChange = NULL;
		DM->TSALITM->ParamByName("INVID")->Value = DM->TSALINV_ID->Value;
		DM->TSALITM->Open();
		DM->TSALITM->Refresh();
		DM->DSALITM->OnDataChange = DM->DSALITMDataChange;

		if (!CBFilterCNT->Checked ) {
			if (CBSALLink->Checked) DM->TCNT->Locate("CNT_ID",DM->TSALINV_CNT_ID->Value);
		}
		if ( DM->TSALPAY->RecordCount > 0 ) {
			DM->TSALPAY->Last();
			LastSalPay = DM->TSALPAYINVPAY_DATE->AsDateTime;
		} else {
			LastSalPay = TDateTime(0);
		}
		AllowModify();
		return;
	}

	if (action == "CHG SALITM") {
		if (!CBSALITMLink->Checked) return;
		if ( (DM->TSALITM->RecordCount > 0) && (PageControl2->ActivePage == TabSheetSAL)) {
			DM->DITM->OnDataChange = NULL;
			DM->TITM->Locate("ITM_ID",DM->TSALITMINVITM_ITM_ID->Value);
			DM->DITM->OnDataChange = DM->DITMDataChange;
		}
		return;
	}

	if (action == "CHG LFITM") {
		if (!CBLFITMLink->Checked) return;
		int itmid = -2;
		if (DM->TLFITM->RecordCount > 0) {
			if (DM->TITM->Locate("ITM_ID",DM->TLFITMLFITM_ITM_ID->Value)) {
				itmid = DM->TLFITMLFITM_ITM_ID->Value;
			}
		}
		DM->QLFITMPUR->ParamByName("ITMID")->Value = itmid;
		DM->QLFITMPUR->Open();
		DM->QLFITMPUR->Refresh();

		DM->QLFITMSAL->ParamByName("ITMID")->Value = itmid;
		DM->QLFITMSAL->Open();
		DM->QLFITMSAL->Refresh();
		return;
	}


	fitm = "";
	flf = "";
	fcnt = "";
	fcntitm = "";
	globalfilter = "";

	titm = "";
	tsearch = "";
	tcnt = "";

	// Apply search filter >> TITM + QMOVPUR
	if (action == "CHG EDIT") {
		id = DM->TITMITM_ID->Value;
		DM->SQL_ITM(Edit1->Text);
		RBNoFilter->Checked = true;
		if (Edit1->Text != "") {
			if (DM->IsDigit(Edit1->Text)) {
				tsearch = "Filtered by Code <" + Edit1->Text + ">";
			} else {
				tsearch = "Filtered Item by Name <" + Edit1->Text + ">";
			}
		} else {
            DM->TITM->Locate("ITM_ID",id);
        }
		return;
	}

	if (CBGroup->Checked) {
		fitm = "ITM_GRP_ID = " + DM->TGRPGRP_ID->Text;
		titm = "Group = " + DM->TGRPGRP_NAME->Text;
		flf = "GRP_ID = " + DM->TGRPGRP_ID->Text;
	}

	if (CBOnlyVirtual->Checked) {
		if (fitm == "") {
			fitm = "ITM_CP like 'V'";
			titm = "Only Virtual";
			flf = "ITM_CP like 'V'";
		} else {
			fitm += " AND (ITM_CP like 'V')";
			titm += " AND Only Virtual";
			flf += " AND (ITM_CP like 'V')";
        }
	}

	if (CBDropItem->Checked) {
		if (fitm == "") {
			fitm = "ITM_CP like 'D'";
			titm = "Drop Item";
			flf = "ITM_CP like 'D'";
		} else {
			fitm += " AND (ITM_CP like 'D')";
			titm += " AND Drop Item";
			flf += " AND (ITM_CP like 'D')";
        }
	}

	if (CBWarning->Checked) {
		if (fitm == "") {
			fitm = "((Stock < 0) OR (PUR = 0) OR (PUR = NULL)) AND (ITM_CP <> 'A')";
			titm = "(Negative Stock OR Zero Purchase)";
			flf = "((Stock < 0) OR (PUR = 0) OR (PUR = NULL)) AND (ITM_CP <> 'A')";
		} else {
			fitm += " AND ((Stock < 0) OR (PUR = 0) OR (PUR = NULL)) AND (ITM_CP <> 'A')";
			titm += " AND (Negative Stock OR Zero Purchase)";
			flf += " AND ((Stock < 0) OR (PUR = 0) OR (PUR = NULL)) AND (ITM_CP <> 'A')";
        }
	}

	if (CBItemToUpdate->Checked) {
		if (fitm == "") {
			fitm = "ITM_CODE = -1";
			titm = "Unknown Code";
			flf = "ITM_CODE = -1";
		} else {
			fitm += " AND (ITM_CODE = -1)";
			titm += " AND Item to Update";
			flf += " AND (ITM_CODE = -1)";
		}
	}

	if (CBWithoutVirtual->Checked) {
		if (fitm == "") {
			titm = "Without Virtual";
			fitm = "ITM_CP <> 'V'";
		} else {
			titm += "  AND  Not Virtual";
			fitm += " AND (ITM_CP <> 'V')";
		}
		if (flf == "") {
			flf = "ITM_CP <> 'V'";
		} else {
			flf += " AND (ITM_CP <> 'V')";
		}
	}

	if (CBHideZeroStock->Checked) {
		if (fitm == "") {
			titm = "Stock > 0";
			fitm = "Stock > 0";
		} else {
			titm += "  AND  Stock > 0";
			fitm += " AND (Stock > 0)";
		}
		if (flf == "") {
			flf = "Stock > 0";
		} else {
			flf +=  " AND (Stock > 0)";
		}
	}

	if (!CBLFApplySmartFilter->Checked) {
		flf = "";
	}
	if (CBLFFilterByCategory->Checked) {
		if (flf == "") {
			flf = "LF_ID = " + DM->TLFLF_ID->Text;
		} else {
			flf +=  " AND (LF_ID = " + DM->TLFLF_ID->Text + ")";
		}
	}


	if (CBFilterCNT->Checked) {
		tcnt = "Contact = " + DM->TCNTCNT_FIRSTNAME->Text;
		fcnt = "INV_CNT_ID = " + DM->TCNTCNT_ID->Text;
	}

	if (RBOnlySelectedItem->Checked) {
		oitm = "ITM_ID = " + DM->TITMITM_ID->Text;
	}

	if (fcnt == "") {
		fcntitm = fitm;
	} else {
		if (fitm == "") {
			fcntitm = fcnt;
		} else {
			fcntitm = fcnt + " AND (" + fitm + ")";
		}
	}

	if (oitm != "") {
		fcntitm = oitm;
	}

	// Apply fitm filter >> TITM
	if ( (action != "CHG ITM") && (action.SubString(1,8) != "TabSheet") ) {
		DM->DITM->OnDataChange = NULL;
		id = DM->TITMITM_ID->Value;
		if (fitm != "") {
			DM->TITM->Filter = fitm;
			DM->TITM->Filtered = true;
			LabelFilter->Font->Color = ColorITMFilter;
			PanelITM->ParentColor = false;
			PanelITM->StyleElements = PanelITM->StyleElements >> seClient;
			PanelITM->Color = ColorITMFilter;
			PanelITM->Refresh();
		} else {
			DM->TITM->Filtered    = false;
			PanelITM->StyleElements = PanelITM->StyleElements << seClient;
			PanelITM->ParentColor = true;
			LabelFilter->Font->Color = ColorDisabled;
		}
		DM->TITM->Locate("ITM_ID", id);
		DM->DITM->OnDataChange = DM->DITMDataChange;
	}

	if ( (action != "CHG ITM") && (PageControl2->ActivePage == TabSheetPUR) ) {
		// Apply fcnt Filter >> TPUR
		if (fcnt != "") {
			DM->TPUR->Filter = fcnt;
			DM->TPUR->Filtered = true;
			PanelPUR->ParentColor = false;
			PanelPUR->StyleElements = FMain->PanelPUR->StyleElements >> seClient;
			PanelPUR->Color = FMain->ColorCNTFilter;
		} else {
			DM->TPUR->Filtered    = false;
			PanelPUR->StyleElements = FMain->PanelPUR->StyleElements << seClient;
			PanelPUR->ParentColor = true;
		}
	}


	if (PageControl2->ActivePage == TabSheetLF) {
		// Apply flf filter >> TLFITM
		DM->DLFITM->OnDataChange = NULL;
		if (flf != "") {
			DM->TLFITM->Filter = flf;
			DM->TLFITM->Filtered = true;
			PanelLF->ParentColor = false;
			PanelLF->StyleElements = PanelITM->StyleElements >> seClient;
			PanelLF->Color = ColorITMFilter;
		} else {
			DM->TLFITM->Filtered     = false;
			PanelLF->StyleElements = PanelITM->StyleElements << seClient;
			PanelLF->ParentColor = true;
		}
		DM->DLFITM->OnDataChange = DM->DLFITMDataChange;

	}

	if (PageControl2->ActivePage == TabSheetSAL) {
		// Apply fcnt Filter >> TSAL
		if (fcnt != "") {
			DM->TSAL->Filter = fcnt;
			DM->TSAL->Filtered = true;
			PanelSAL->ParentColor = false;
			PanelSAL->StyleElements = FMain->PanelSAL->StyleElements >> seClient;
			PanelSAL->Color = FMain->ColorCNTFilter;
		} else {
			DM->TSAL->Filtered    = false;
			PanelSAL->StyleElements = FMain->PanelSAL->StyleElements << seClient;
			PanelSAL->ParentColor = true;
		}
	}


	if (action == "FLT ApplyFilter") {
		DM->SQL_MOVPUR(Edit1->Text);
		DM->SQL_MOVSAL(Edit1->Text);
	}

	if ( (action == "FLT NoFilter") || (action == "OnlySelectedItem") ) {
		DM->SQL_MOVPUR("");
		DM->SQL_MOVSAL("");
	}

	if ( (PageControl2->ActivePage == TabSheetMOV) ) {
		// Apply fcntitm Filter >> QMOVPUR
		DM->DMOVPUR->OnDataChange = NULL;
		if ( (fcntitm != "") && !RBNoFilter->Checked ) {
			DM->QMOVPUR->Filter = fcntitm;
			DM->QMOVPUR->Filtered = true;
			PanelMOV->ParentColor = false;
			PanelMOV->StyleElements = PanelMOV->StyleElements >> seClient;
			PanelMOV->Color = ColorITMFilter;
			PanelMOV->Refresh();
		} else {
			DM->QMOVPUR->Filtered = false;
			PanelMOV->StyleElements = PanelMOV->StyleElements << seClient;
			PanelMOV->ParentColor = true;
        }
		DM->DMOVPUR->OnDataChange = DM->DMOVPURDataChange;

		// Apply fcntitm Filter >> QMOVSAL
		DM->DMOVSAL->OnDataChange = NULL;
		if ( (fcntitm != "") && !RBNoFilter->Checked ) {
			DM->QMOVSAL->Filter = fcntitm;
			DM->QMOVSAL->Filtered = true;
		} else {
			DM->QMOVSAL->Filtered = false;
        }
		DM->DMOVSAL->OnDataChange = DM->DMOVSALDataChange;
	}

	globalfilter = tsearch;
	if (tcnt != "") {
		if (globalfilter == "") {
			globalfilter = tcnt;
		} else {
			globalfilter = globalfilter + " AND " + tcnt;
		}
	}

	if (titm != "") {
		if (globalfilter == "") {
			globalfilter = titm;
		} else {
			globalfilter = globalfilter + " AND " + titm;
		}
	}

	((TfrxMemoView*)DM->ReportItem->FindObject("Memo1"))->Memo->Clear();
	((TfrxMemoView*)DM->ReportItem->FindObject("Memo1"))->Memo->Add(titm);

	LabelFilter->Caption = globalfilter;

	if ( (FMain->PageControl2->ActivePage  == TabSheetLF)  ) DM->DLFITMDataChange(NULL, NULL);
}

void __fastcall TFMain::CBOnOff(TCheckBox *Sender,bool onoff)
{
	TNotifyEvent ac = Sender->OnClick;
	Sender->OnClick = NULL;
	Sender->Checked = onoff;
	Sender->OnClick = ac;
}

void __fastcall TFMain::ClearFilter(UnicodeString mode)
{
	//DM->TITM->Filtered = false;
	CBOnOff(CBGroup,false);
	CBOnOff(CBOnlyVirtual,false);
	CBOnOff(CBDropItem,false);
	CBOnOff(CBWarning,false);
	CBOnOff(CBWithoutVirtual,false);
	CBOnOff(CBFilterCNT,false);
	CBOnOff(CBItemToUpdate,false);
	CBOnOff(CBHideZeroStock,false);
	Edit1->Text = "";
	SetFilter("FLT Clear");
}

void __fastcall TFMain::Edit1Change(TObject *Sender)
{
	SetFilter("CHG EDIT");
}

void __fastcall TFMain::CBHideZeroStockClick(TObject *Sender)
{
	if (CBHideZeroStock->Checked) {
		CBOnOff(CBOnlyVirtual,false);
		CBOnOff(CBWarning,false);
	}
	SetFilter("FLT HideZeroStock");
}

void __fastcall TFMain::CBOnlyVirtualClick(TObject *Sender)
{
	if (CBOnlyVirtual->Checked) {
		CBOnOff(CBGroup,false);
		CBOnOff(CBWithoutVirtual,false);
		CBOnOff(CBDropItem,false);
		CBOnOff(CBHideZeroStock,false);
	}
	SetFilter("FLT OnlyVirtual");
}

void __fastcall TFMain::CBWithoutVirtualClick(TObject *Sender)
{
	if (CBWithoutVirtual->Checked) CBOnOff(CBOnlyVirtual,false);
	SetFilter("FLT NotVirtual");
}


void __fastcall TFMain::CBWarningClick(TObject *Sender)
{
	if (CBWarning->Checked) {
		CBOnOff(CBHideZeroStock,false);
		CBOnOff(CBOnlyVirtual,false);
		CBOnOff(CBWithoutVirtual,true);
	} else {
		CBOnOff(CBWithoutVirtual,false);
    }
	SetFilter("FLT Warning");
}

void __fastcall TFMain::CBDropItemClick(TObject *Sender)
{
	if (CBDropItem->Checked) {
		CBOnOff(CBOnlyVirtual,false);
		CBOnOff(CBWithoutVirtual,false);
	}
	SetFilter("FLT DropItem");
}

void __fastcall TFMain::CBItemToUpdateClick(TObject *Sender)
{
	if (CBItemToUpdate->Checked) {
		CBOnOff(CBOnlyVirtual,false);
		CBOnOff(CBDropItem,false);
		CBOnOff(CBWarning,false);
		CBOnOff(CBWithoutVirtual,false);
	}
	SetFilter("FLT ItemToUpdate");
}

void __fastcall TFMain::RBOnlySelectedItemClick(TObject *Sender)
{
	SetFilter("FLT OnlySelectedItem");
}

void __fastcall TFMain::RBApplyFilterClick(TObject *Sender)
{
	SetFilter("FLT ApplyFilter");
}

void __fastcall TFMain::RBNoFilterClick(TObject *Sender)
{
	SetFilter("FLT NoFilter");
}

int __fastcall TFMain::GetNextItemCode(void)
{
	int number;
	DM->VITM_NEXT->Refresh();
	if (DM->VITM_NEXTNEXT->Value != NULL) {
		number =  DM->VITM_NEXTNEXT->Value + 1;
	} else {
		number = 1;
	}
	if (number < 1) number = 1;
	return number;
}

//---------------------------------------------------------------------------
// PUR SAL INV
//---------------------------------------------------------------------------

int __fastcall TFMain::GetNextPURCode(void)
{
	int number;
	DM->VPUR_NEXT->Refresh();
	if (DM->VPUR_NEXTNEXT->Value != NULL) {
		number =  DM->VPUR_NEXTNEXT->Value + 1;
	} else {
		number = 1;
	}
	if (number < 1) number = 1;
	return number;
}

int __fastcall TFMain::GetNextSALCode(void)
{
	int number;
	DM->VSAL_NEXT->Refresh();
	if (DM->VSAL_NEXTNEXT->Value != NULL) {
		number =  DM->VSAL_NEXTNEXT->Value + 1;
	} else {
		number = 1;
	}
	if (number < 1) number = 1;
	return number;
}

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
// Interface
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------
// Grid Sort
//---------------------------------------------------------------------------

int __fastcall TFMain::GridTitleClick(TDBGrid * grid, TFDQuery *query, TColumn *column, UnicodeString fieldname, int oldindex)
{
	if (oldindex != -1) grid->Columns->Items[oldindex]->Title->Caption = grid->Columns->Items[oldindex]->Title->Caption.SubString(2,255);
	if (query->IndexFieldNames == column->FieldName) {
		query->IndexFieldNames = fieldname;
		return -1;
	} else {
		column->Title->Caption = ">" + column->Title->Caption;
		query->IndexFieldNames = column->FieldName;
		return column->Index;
	}
}

void __fastcall TFMain::GCNTTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GCNT, DM->TCNT, Column, "CNT_ID", c);
}

void __fastcall TFMain::GGRPTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GGRP, DM->TGRP, Column, "GRP_ID", c);
}

void __fastcall TFMain::GITMTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GITM, DM->TITM, Column, "ITM_ID", c);
}

void __fastcall TFMain::GPURTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GPUR, DM->TPUR, Column, "INV_ID", c);
}

void __fastcall TFMain::GPURITMTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GPURITM, DM->TPURITM, Column, "INVITM_ID", c);
}

void __fastcall TFMain::GSALTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GSAL, DM->TSAL, Column, "INV_ID", c);
}

void __fastcall TFMain::GSALITMTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GSALITM, DM->TSALITM, Column, "INVITM_ID", c);
}

void __fastcall TFMain::GLFTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GLF, DM->TLF, Column, "LF_ID", c);
}

void __fastcall TFMain::GLFITMTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GLFITM, DM->TLFITM, Column, "LFITM_ID", c);
}

void __fastcall TFMain::GLFITMPURTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GLFITMPUR, DM->QLFITMPUR, Column, "INVITM_INV_ID", c);
}

void __fastcall TFMain::GLFITMSALTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GLFITMSAL, DM->QLFITMSAL, Column, "INVITM_INV_ID", c);
}

void __fastcall TFMain::GMOVPURTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GMOVPUR, DM->QMOVPUR, Column, "INVITM_ID", c);
}

void __fastcall TFMain::GMOVSALTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GMOVSAL, DM->QMOVSAL, Column, "INVITM_ID", c);
}

void __fastcall TFMain::GPROFITTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GPROFIT, DM->QDAY_INV_ITM, Column, "INVITM_ID", c);
}

void __fastcall TFMain::GASMTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GASM, DM->TASM, Column, "ASM_ID", c);
}

void __fastcall TFMain::GASMITMTitleClick(TColumn *Column)
{
	//
}

void __fastcall TFMain::GHSTITMPURTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GHSTITMPUR, DM->QHSTITMPUR, Column, "INVITM_INV_ID", c);
}

void __fastcall TFMain::GHSTPURITMTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GHSTPURITM, DM->QHSTPURITM, Column, "INVITM_ITM_ID", c);
}

void __fastcall TFMain::GHSTITMSALTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GHSTITMSAL, DM->QHSTITMSAL, Column, "INVITM_INV_ID", c);
}

void __fastcall TFMain::GHSTITMLFTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GHSTITMLF, DM->QHSTITMLF, Column, "LFITM_ID", c);
}

void __fastcall TFMain::GHSTITMFROMASMTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GHSTITMFROMASM, DM->QHSTITMFROMASM, Column, "ASM_ID", c);
}

void __fastcall TFMain::GHSTITMASMTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GHSTITMASM, DM->QHSTITMASM, Column, "ASMITM_ID", c);
}

void __fastcall TFMain::GTODO_NEGTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GTODO_NEG, DM->QTODO_NEG, Column, "ITM_ID", c);
}

void __fastcall TFMain::GTODO_UNKTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GTODO_UNK, DM->QTODO_UNK, Column, "ITM_ID", c);
}

void __fastcall TFMain::GTODO_PURPAYTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GTODO_PURPAY, DM->QTODO_PURPAY, Column, "INV_ID", c);
}

void __fastcall TFMain::GTODO_SALPAYTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GTODO_SALPAY, DM->QTODO_SALPAY, Column, "INV_ID", c);
}

void __fastcall TFMain::GTODO_PURDLVTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GTODO_PURDLV, DM->QTODO_PURDLV, Column, "INV_ID", c);
}

void __fastcall TFMain::GTODO_SALDLVTitleClick(TColumn *Column)
{
	static int c = -1;
	c = GridTitleClick(GTODO_SALDLV, DM->QTODO_SALDLV, Column, "INV_ID", c);
}

//---------------------------------------------------------------------------
// KeyDown
//---------------------------------------------------------------------------
void __fastcall TFMain::Edit1KeyUp(TObject *Sender, WORD &Key, TShiftState Shift)
{
	SetFilter("EDIT");
}

//---------------------------------------------------------------------------
// Grid DblClick Edit
//---------------------------------------------------------------------------

void __fastcall TFMain::GCNTDblClick(TObject *Sender)
{
	if (DM->TCNT->RecordCount > 0) DM->TCNT->Edit();
}

void __fastcall TFMain::GGRPDblClick(TObject *Sender)
{
	if (DM->TGRP->RecordCount > 0) DM->TGRP->Edit();
}

void __fastcall TFMain::GITMDblClick(TObject *Sender)
{
	if (DM->TITM->RecordCount > 0) DM->TITM->Edit();
}

void __fastcall TFMain::GPURDblClick(TObject *Sender)
{
	if (DM->TPUR->RecordCount > 0) DM->TPUR->Edit();
}

void __fastcall TFMain::GPURITMDblClick(TObject *Sender)
{
	if (DM->TPURITM->RecordCount > 0) DM->TPURITM->Edit();
}

void __fastcall TFMain::GPURPAYDblClick(TObject *Sender)
{
	if (DM->TPURPAY->RecordCount > 0) DM->TPURPAY->Edit();
}

void __fastcall TFMain::GSALDblClick(TObject *Sender)
{
	if (DM->TSAL->RecordCount > 0) DM->TSAL->Edit();
}

void __fastcall TFMain::GSALITMDblClick(TObject *Sender)
{
	if (DM->TSALITM->RecordCount > 0) DM->TSALITM->Edit();
}

void __fastcall TFMain::GSALPAYDblClick(TObject *Sender)
{
	if (DM->TSALPAY->RecordCount > 0) DM->TSALPAY->Edit();
}

void __fastcall TFMain::GLFDblClick(TObject *Sender)
{
	if (DM->TLF->RecordCount > 0) DM->TLF->Edit();
}

void __fastcall TFMain::GLFITMDblClick(TObject *Sender)
{
	if (DM->TLFITM->RecordCount > 0) DM->TLFITM->Edit();
}

void __fastcall TFMain::GLFITMPURDblClick(TObject *Sender)
{
	if (DM->QLFITMPURINVITM_INV_ID->Value != NULL) {
		CBFilterCNT->Checked = false;
		DM->TPUR->Locate("INV_ID",DM->QLFITMPURINVITM_INV_ID->Value);
		DM->TPURITM->Locate("INVITM_ITM_ID",DM->QLFITMPURITM_ID->Value);
		PageControl2->ActivePage = TabSheetPUR;
	}
}

void __fastcall TFMain::GLFITMSALDblClick(TObject *Sender)
{
	if (DM->QLFITMSALINVITM_INV_ID->Value != NULL) {
		CBFilterCNT->Checked = false;
		DM->TSAL->Locate("INV_ID",DM->QLFITMSALINVITM_INV_ID->Value);
		DM->TSALITM->Locate("INVITM_ITM_ID",DM->QLFITMSALITM_ID->Value);
		PageControl2->ActivePage = TabSheetSAL;
	}
}

void __fastcall TFMain::GHSTITMPURDblClick(TObject *Sender)
{
	if (DM->QHSTITMPURINVITM_INV_ID->Value != NULL) {
		CBFilterCNT->Checked = false;
		DM->TPUR->Locate("INV_ID",DM->QHSTITMPURINVITM_INV_ID->Value);
		DM->TPURITM->Locate("INVITM_ITM_ID",DM->QHSTITMPURITM_ID->Value);
		PageControl2->ActivePage = TabSheetPUR;
	}
}

void __fastcall TFMain::GHSTITMSALDblClick(TObject *Sender)
{
	if (DM->QHSTITMSALINVITM_INV_ID->Value != NULL) {
		CBFilterCNT->Checked = false;
		DM->TSAL->Locate("INV_ID",DM->QHSTITMSALINVITM_INV_ID->Value);
		DM->TSALITM->Locate("INVITM_ITM_ID",DM->QHSTITMSALITM_ID->Value);
		PageControl2->ActivePage = TabSheetSAL;
	}
}

void __fastcall TFMain::GASMDblClick(TObject *Sender)
{
	if (DM->TASM->RecordCount > 0) DM->TASM->Edit();
}

void __fastcall TFMain::GASMITMDblClick(TObject *Sender)
{
	if (DM->TASMITM->RecordCount > 0) DM->TASMITM->Edit();
}

//---------------------------------------------------------------------------
// Grid Draw Color   Skin / Color / Fonts
//---------------------------------------------------------------------------

void __fastcall TFMain::ComboBoxStyleChange(TObject *Sender)
{
	SetSkin(ComboBoxStyle->Text);
	SaveParam();
}

void __fastcall TFMain::SetSkin(UnicodeString skin) {
	UnicodeString DarkLight;

	DarkLight = "Light";
	TStyleManager::TrySetStyle(skin);

	if (skin == "Amakrits")            DarkLight = "Dark";
	if (skin == "Aqua Graphite")       DarkLight = "Dark";
	if (skin == "Carbon")              DarkLight = "Dark";
	if (skin == "Auric")               DarkLight = "Dark";
	if (skin == "Charcoal Dark Slate") DarkLight = "Dark";
	if (skin == "Cobalt XEMedia")      DarkLight = "Dark";
	if (skin == "Glossy")              DarkLight = "Dark";
	if (skin == "Glow")                DarkLight = "Dark";
	if (skin == "Onyx Blue")           DarkLight = "Dark";
	if (skin == "TabletDark")          DarkLight = "Dark";
	if (skin == "Windows10 Dark")      DarkLight = "Dark";
	if (skin == "Windows10 SlateGray") DarkLight = "Dark";

	if (DarkLight == "Light") {
		ColorBack     = clBackground;
		ColorBlack    = clBlack;
		ColorValid    = clGreen;
		ColorNormal   = clBlue;
		ColorDisabled = clGray;
		ColorWarning  = clFuchsia;
		ColorError    = clRed;
		ColorITMFilter   = clMaroon;
		ColorCNTFilter   = clGreen;
	} else {
		ColorBack     = clBackground;
		ColorBlack    = clWhite;
		ColorValid    = clGreen;
		ColorNormal   = clAqua;
		ColorDisabled = clGray;
		ColorWarning  = clFuchsia;
		ColorError    = clRed;
		ColorITMFilter   = clYellow;
		ColorCNTFilter   = clLime;
	}

	Label1->Font->Color = ColorError;
	LabelFilter->Font->Color = ColorDisabled;
	PanelITMHistory->Color = ColorITMFilter;

	CBFilterCNT->Font->Color = ColorCNTFilter;
	CBGroup->Font->Color = ColorITMFilter;
	CBOnlyVirtual->Font->Color = ColorITMFilter;
	CBDropItem->Font->Color = ColorITMFilter;
	CBWarning->Font->Color = ColorITMFilter;
	CBItemToUpdate->Font->Color = ColorITMFilter;
	CBWithoutVirtual->Font->Color = ColorITMFilter;
	CBHideZeroStock->Font->Color = ColorITMFilter;
	RBOnlySelectedItem->Font->Color = ColorITMFilter;
}

void __fastcall TFMain::GITMDrawColumnCell(TObject *Sender, const TRect &Rect, int DataCol, TColumn *Column, TGridDrawState State)
{
	if (DM->TITMITM_CP->Value != "V") {
		if ( (DM->TITMStock->Value < 0) ) {
			GITM->Canvas->Font->Color = ColorError;
		} else if (DM->TITMPUR->Value == 0) {
			GITM->Canvas->Font->Color = ColorWarning;
		} else if (DM->TITMStock->Value == 0) {
			GITM->Canvas->Font->Color = ColorDisabled;
		}
	}
	GITM->DefaultDrawColumnCell(Rect,DataCol,Column,State);
}

void __fastcall TFMain::GLFITMDrawColumnCell(TObject *Sender, const TRect &Rect, int DataCol,
		  TColumn *Column, TGridDrawState State)
{
	if ( (DM->TLFITMStock->Value < 0) && (DM->TLFITMITM_CP->Value != "V") ) {
		GLFITM->Canvas->Font->Color = ColorError;
	} else if (DM->TLFITMPUR->Value == 0) {
		GLFITM->Canvas->Font->Color = ColorWarning;
	} else if (DM->TLFITMStock->Value == 0) {
		GLFITM->Canvas->Font->Color = ColorDisabled;
	}
	GLFITM->DefaultDrawColumnCell(Rect,DataCol,Column,State);
}

void __fastcall TFMain::GPURDrawColumnCell(TObject *Sender, const TRect &Rect,
		  int DataCol, TColumn *Column, TGridDrawState State)
{
	if ( (DM->TPURINV_STATUS->Value == "Free") || (DM->TPURINV_STATUS->Value == "Empty") ) {
		GPUR->Canvas->Font->Color = ColorValid;
	} else if (DM->TPURINV_STATUS->Value == "Close") {
		GPUR->Canvas->Font->Color = ColorDisabled;
	} else if (DM->TPURTotal->Value != DM->TPURDue->Value) {
		GPUR->Canvas->Font->Color = ColorWarning;
	}
	GPUR->DefaultDrawColumnCell(Rect,DataCol,Column,State);
}

void __fastcall TFMain::GPURITMDrawColumnCell(TObject *Sender, const TRect &Rect,
		  int DataCol, TColumn *Column, TGridDrawState State)
{
	if (DM->TPURITMINVITM_DELIVERY->Value != "Yes") {
		GPURITM->Canvas->Font->Color = ColorWarning;
	} else if ( (DM->TPURITMStock->Value < 0) && (DM->TPURITMITM_CP->Value != "V") ) {
		GPURITM->Canvas->Font->Color = ColorError;
	} else if (DM->TPURITMINVITM_QTY->Value == 0) {
		GPURITM->Canvas->Font->Color = ColorError;
	} else if (DM->TPURITMStock->Value == 0) {
		GPURITM->Canvas->Font->Color = ColorDisabled;
	}
	if (Column->FieldName == "Total_Gap") {
		if (Column->Field->Value > 0) {
			GPURITM->Canvas->Font->Color = ColorWarning;
		} else if (Column->Field->Value < 0) {
			GPURITM->Canvas->Font->Color = ColorValid;
		}
	}
	GPURITM->DefaultDrawColumnCell(Rect,DataCol,Column,State);
}

void __fastcall TFMain::GSALDrawColumnCell(TObject *Sender, const TRect &Rect,
		  int DataCol, TColumn *Column, TGridDrawState State)
{
	if ( (DM->TSALINV_STATUS->Value == "Free") || (DM->TSALINV_STATUS->Value == "Empty") ) {
		GSAL->Canvas->Font->Color = ColorValid;
	} else if (DM->TSALINV_STATUS->Value == "Close") {
		GSAL->Canvas->Font->Color = ColorDisabled;
	} else if (DM->TSALTotal->Value != DM->TSALDue->Value) {
		GSAL->Canvas->Font->Color = ColorWarning;
	}
	GSAL->DefaultDrawColumnCell(Rect,DataCol,Column,State);
}

void __fastcall TFMain::GSALITMDrawColumnCell(TObject *Sender, const TRect &Rect,
		  int DataCol, TColumn *Column, TGridDrawState State)
{
	if (DM->TSALITMINVITM_DELIVERY->Value != "Yes") {
		GSALITM->Canvas->Font->Color = ColorWarning;
	} else if ( (DM->TSALITMPUR->Value == 0) && (DM->TSALITMITM_CP != "V") ) {
		GSALITM->Canvas->Font->Color = ColorWarning;
	} else if ( (DM->TSALITMStock->Value < 0) && (DM->TSALITMITM_CP->Value != "V") ) {
		GSALITM->Canvas->Font->Color = ColorError;
	} else if (DM->TSALITMINVITM_QTY->Value == 0) {
		GSALITM->Canvas->Font->Color = ColorError;
	} else if (DM->TSALITMStock->Value == 0) {
		GSALITM->Canvas->Font->Color = ColorDisabled;
	}
	if (Column->FieldName == "Total_Discount") {
		if (Column->Field->Value > 0) {
			GSALITM->Canvas->Font->Color = ColorValid;
		} else if (Column->Field->Value < 0) {
			GSALITM->Canvas->Font->Color = ColorWarning;
		}
	}
	GSALITM->DefaultDrawColumnCell(Rect,DataCol,Column,State);
}

void __fastcall TFMain::GMOVPURDrawColumnCell(TObject *Sender, const TRect &Rect,
		  int DataCol, TColumn *Column, TGridDrawState State)
{
	if (DM->QMOVPURITM_CP->Value != "V") {
		if ( (DM->QMOVPURStock->Value < 0) ) {
			GMOVPUR->Canvas->Font->Color = ColorError;
		} else if (DM->QMOVPURPUR->Value == 0) {
			GMOVPUR->Canvas->Font->Color = ColorWarning;
		} else if (DM->QMOVPURStock->Value == 0) {
			GMOVPUR->Canvas->Font->Color = ColorDisabled;
		}
		if (Column->FieldName == "Total_Gap") {
			if (Column->Field->Value > 0) {
				GMOVPUR->Canvas->Font->Color = ColorWarning;
			} else if (Column->Field->Value < 0) {
				GMOVPUR->Canvas->Font->Color = ColorValid;
			}
		}
	}
	GMOVPUR->DefaultDrawColumnCell(Rect,DataCol,Column,State);
}

void __fastcall TFMain::GMOVSALDrawColumnCell(TObject *Sender, const TRect &Rect,
		  int DataCol, TColumn *Column, TGridDrawState State)
{
	if (DM->QMOVSALITM_CP->Value != "V") {
		if ( (DM->QMOVSALStock->Value < 0) ) {
			GMOVSAL->Canvas->Font->Color = ColorError;
		} else if (DM->QMOVSALPUR->Value == 0) {
			GMOVSAL->Canvas->Font->Color = ColorWarning;
		} else if (DM->QMOVSALStock->Value == 0) {
			GMOVSAL->Canvas->Font->Color = ColorDisabled;
		}
		if (Column->FieldName == "Total_Discount") {
			if (Column->Field->Value > 0) {
				GMOVSAL->Canvas->Font->Color = ColorValid;
			} else if (Column->Field->Value < 0) {
				GMOVSAL->Canvas->Font->Color = ColorWarning;
			}
		}
	}
	GMOVSAL->DefaultDrawColumnCell(Rect,DataCol,Column,State);
}

void __fastcall TFMain::GLFDrawColumnCell(TObject *Sender, const TRect &Rect,
		  int DataCol, TColumn *Column, TGridDrawState State)
{
	if ( (DM->TLFLF_CATEGORY->Value == "* Sale Negative Item") || (DM->TLFLF_CATEGORY->Value == "* Sale Without Code") ) {
		GLF->Canvas->Font->Color = ColorError;
	}
	GLF->DefaultDrawColumnCell(Rect,DataCol,Column,State);
}

void __fastcall TFMain::GLFITMPURDrawColumnCell(TObject *Sender, const TRect &Rect,
		  int DataCol, TColumn *Column, TGridDrawState State)
{
	if ( (DM->QLFITMPURINV_STATUS->Value == "Free") || (DM->QLFITMPURINV_STATUS->Value == "Empty") ) {
		GLFITMPUR->Canvas->Font->Color = ColorValid;
	} else if (DM->QLFITMPURINV_STATUS->Value == "Close") {
		GLFITMPUR->Canvas->Font->Color = ColorDisabled;
	}
	GLFITMPUR->DefaultDrawColumnCell(Rect,DataCol,Column,State);
}

void __fastcall TFMain::GLFITMSALDrawColumnCell(TObject *Sender, const TRect &Rect,
		  int DataCol, TColumn *Column, TGridDrawState State)
{
	if ( (DM->QLFITMSALINV_STATUS->Value == "Free") || (DM->QLFITMSALINV_STATUS->Value == "Empty") ) {
		GLFITMSAL->Canvas->Font->Color = ColorValid;
	} else if (DM->QLFITMSALINV_STATUS->Value == "Close") {
		GLFITMSAL->Canvas->Font->Color = ColorDisabled;
	}
	GLFITMSAL->DefaultDrawColumnCell(Rect,DataCol,Column,State);
}

//---------------------------------------------------------------------------
//    Button
//---------------------------------------------------------------------------

void __fastcall TFMain::ButtonClearLogClick(TObject *Sender)
{
	DM->ClearLog();
}

void __fastcall TFMain::ButtonFontClick(TObject *Sender)
{
	FontDialog1->Execute(NULL);
	Font = FontDialog1->Font;
}

void __fastcall TFMain::ButtonConnectClick(TObject *Sender)
{
	DM->DatabaseTableOpen();
}

void __fastcall TFMain::ButtonAlphaClick(TObject *Sender)
{
	DM->WCNT->Active = true;
	DM->WCNT->First();
	while (!DM->WCNT->Eof) {
		if (DM->WCNTCNT_FIRSTNAME->Value.SubString(1,1) == ((TButton*)Sender)->Caption ) break;
		DM->WCNT->Next();
	}
	if (!DM->WCNT->Eof) {
		DM->TCNT->Locate("CNT_ID",DM->WCNTCNT_ID->Value);
	}
	DM->WCNT->Active = false;
	GCNT->SetFocus();
}

// CNT *************************************************************************

void __fastcall TFMain::BtnMergeContactsClick(TObject *Sender)
{
	//if ( Form3 == NULL ) Application->CreateForm(__classid(TForm3), &Form3);
	FormCNTMerge->TCNTMIX->Edit();
	FormCNTMerge->TCNTMIXCNT1->Value = DM->TCNTCNT_ID->Value;
	FormCNTMerge->TCNTMIXCNT2->Value = DM->TCNTCNT_ID->Value;
	FormCNTMerge->TCNTMIX->Edit();
	FormCNTMerge->ShowModal();
	DM->RefreshAll();
}

// ITM Filter ******************************************************************

void __fastcall TFMain::ButtonITMClearFilterClick(TObject *Sender)
{
	ClearFilter("All");
}

// ITM *************************************************************************

void __fastcall TFMain::ButtonReportITMClick(TObject *Sender)
{
	DM->ReportItem->ShowReport(true);
}

void __fastcall TFMain::ButtonMergeItemClick(TObject *Sender)
{
	FormITMMerge->ShowModal();
	DM->RefreshAll();
}

// SALE ************************************************************************

void __fastcall TFMain::ButtonSalDeliveryClick(TObject *Sender)
{
	if (DM->TSALITM->RecordCount > 0) {
		DM->WINVITM->Open();
		if ( DM->WINVITM->Locate("INVITM_ID",DM->TSALITMINVITM_ID->Value) ) {
			DM->WINVITM->Edit();
			DM->WINVITMINVITM_DELIVERY->Value = ((TButton*)(Sender))->Caption;
			DM->WINVITM->Post();
			DM->RefreshSALITM(NULL);
		}
		DM->WINVITM->Close();
	}
}

void __fastcall TFMain::BtNewSaleClick(TObject *Sender)
{
	PageControl2->ActivePage = TabSheetSAL;
    DM->TSAL->Append();
}

void __fastcall TFMain::ButtonAddSALITMClick(TObject *Sender)
{
	if (DM->TITM->RecordCount == 0) {
		MessageDlg("Select an Item before!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	if (DM->TSAL->RecordCount == 0) {
		MessageDlg("Select a Purchase before!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	if ( !Admin() && (!AllowModify()) ) {
		MessageDlg("Sale locked!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	if ( !Admin() && (DM->TITMStock->Value < 1) && (DM->TITMITM_CP->Value != "V") && (DM->TITMITM_CODE->Value != -1) ) {
		MessageDlg("Not Enought Item in Stock",mtInformation,  TMsgDlgButtons() << mbOK, 0);
		return;
	}
	DM->TSALITM->Append();
}

void __fastcall TFMain::ButtonSALWithoutCodeClick(TObject *Sender)
{
	if (DM->TSAL->RecordCount == 0) {
		MessageDlg("Select a Purchase before Add an Item!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	if ( !Admin() && (!AllowModify()) ) {
		MessageDlg("Sale locked!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	FormITM->Mode = "UnknownItem";
	FormITM->ShowModal();
}

void __fastcall TFMain::ButtonReportSALClick(TObject *Sender)
{
	DM->ReportSAL->ShowReport(true);
}

void __fastcall TFMain::ButtonSALReplaceITMClick(TObject *Sender)
{
	int itmidtoreplace, itmidreplaceby;
	UnicodeString itmtoreplace, itmreplaceby, pursal, log, txttoreplace, txtreplaceby;

	if ( !Admin() && (!AllowModify()) ) {
		MessageDlg("Sale locked!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}

	if (DM->TITMStock->Value < DM->TSALITMINVITM_QTY->Value && !Admin() && (DM->TITMITM_CODE->Value != -1) && (DM->TITMITM_CP->Value != "V") ) {
		MessageDlg("Not Enought Item in Stock",mtInformation,  TMsgDlgButtons() << mbOK, 0);
		return;
	}

	itmidreplaceby   = DM->TITMITM_ID->Value;
	itmreplaceby     = DM->TITMITM_CP->Value + DM->TITMITM_CODE->AsString + DM->TITMITM_INDICE->Value;
	txtreplaceby     = DM->TITMITM_NAME->Value;
	itmidtoreplace   = DM->TSALITMINVITM_ITM_ID->Value;
	itmtoreplace     = DM->TSALITMITM_CP->Value + DM->TSALITMITM_CODE->AsString + DM->TSALITMITM_INDICE->Value;
	txttoreplace     = DM->TSALITMITM_NAME->Value;

	if ( (itmidtoreplace == NULL) || (itmidreplaceby == NULL) ) {
		MessageDlg("No Item selected!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}

	if ( itmidtoreplace == itmidreplaceby ) {
		MessageDlg("Selected Item's cannot be same Item!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}

	log = " Replace Item <" + itmtoreplace + "> (" + txttoreplace + ") by Item <" + itmreplaceby + "> (" + txtreplaceby + ") in Sale N° " + DM->TSALINV_NUMBER->Text;
	if (MessageDlg(log + " ?",mtInformation,  TMsgDlgButtons() << mbOK << mbCancel, 1) == mrOk) {
		DM->LogAdd(log);

		DM->WINVITM->Filtered = false;
		DM->WINVITM->Open();
		DM->WINVITM->Locate("INVITM_ID",DM->TSALITMINVITM_ID->Value);
		DM->WINVITM->Edit();
		DM->WINVITMINVITM_ITM_ID->Value = itmidreplaceby;
		DM->WINVITMINVITM_COMMENT->Value = "Replace <" + itmtoreplace + ">";
		DM->WINVITM->Post();
		DM->WINVITM->Close();

		DM->UpdateSystemLFITM(itmidtoreplace);
		DM->UpdateSystemLFITM(itmidreplaceby);

		DM->TryRemoveITM(itmidtoreplace);
		DM->RefreshAll();
	}
}

void __fastcall TFMain::ButtonQuickPayAllSALClick(TObject *Sender)
{
	int due, itemcount;
	UnicodeString status;

	if (MessageDlg("Confirm Payment ?",mtInformation,  TMsgDlgButtons() << mbOK << mbCancel, 1) == mrCancel) return;

	due = DM->TSALDue->Value;
	if (due > 0) {
		DM->WINVPAY->Open();
		DM->WINVPAY->Append();
		DM->WINVPAYINVPAY_INV_ID->Value      = DM->TSALINV_ID->Value;
		DM->WINVPAYINVPAY_DATE->AsDateTime   = Now();
		DM->WINVPAYINVPAY_AMOUNT->AsCurrency = double(due);
		DM->WINVPAYINVPAY_COMMENT->Value     = "";
		DM->WINVPAY->Post();
		DM->WINVPAY->Close();

		DM->WINV->Open();
		DM->WINV->Locate("INV_ID",DM->TSALINV_ID->Value);
		DM->WINV->Edit();
		DM->WINVINV_LOCKDATE->AsDateTime = Now();
		DM->WINVINV_STATUS->Value = "Close";
		DM->WINV->Post();
		DM->WINV->Close();
		DM->RefreshSAL(NULL);
	}
}

// PUR *************************************************************************
void __fastcall TFMain::ButtonNewPURITMClick(TObject *Sender)
{
	if (DM->TPUR->RecordCount == 0) {
		MessageDlg("Select a Purchase before Add an Item!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	if ( !Admin() && (!AllowModify()) ) {
		return;
	}
	FormITM->Mode = "Purchase";
	FormITM->ShowModal();
}

void __fastcall TFMain::ButtonNewPURITMIndiceClick(TObject *Sender)
{
	if (DM->TITM->RecordCount == 0) {
		MessageDlg("Select an Item before!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	if (DM->TPUR->RecordCount == 0) {
		MessageDlg("Select a Purchase before Add an Item!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	if ( !Admin() && (!AllowModify()) ) {
		MessageDlg("Purchase locked!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	if (DM->TITMITM_CODE->Value == -1) {
		MessageDlg("Cannot Indice an Unknow Sale Item!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	FormITM->Mode = "Indice";
	FormITM->ShowModal();
}

void __fastcall TFMain::ButtonReportPURClick(TObject *Sender)
{
	DM->ReportPUR->ShowReport(true);
}

void __fastcall TFMain::ButtonAddPURITMClick(TObject *Sender)
{
	if (DM->TITM->RecordCount == 0) {
		MessageDlg("Select an Item before!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	if (DM->TPUR->RecordCount == 0) {
		MessageDlg("Select a Purchase before Add an Item!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	if ( !Admin() && (!AllowModify()) ) {
		MessageDlg("Purchase locked!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	if (DM->TITMITM_CODE->Value == -1) {
		MessageDlg("Cannot use an Unknow Sale Item!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	DM->TPURITM->Append();
}

void __fastcall TFMain::ButtonPURITMDeliveryClick(TObject *Sender)
{
	if (DM->TPURITM->RecordCount > 0) {
		DM->WINVITM->Open();
		if ( DM->WINVITM->Locate("INVITM_ID",DM->TPURITMINVITM_ID->Value) ) {
			DM->WINVITM->Edit();
			DM->WINVITMINVITM_DELIVERY->Value = ((TButton*)(Sender))->Caption;
			DM->WINVITM->Post();
			DM->RefreshPURITM(NULL);
		}
		DM->WINVITM->Close();
	}
}

// LFITM ***********************************************************************

void __fastcall TFMain::ButtonLFITMCreateNewItemClick(TObject *Sender)
{
	CBLFApplySmartFilter->Checked = false;
	FormITM->Mode = "NewFound";
	FormITM->ShowModal();
}

void __fastcall TFMain::ButtonLFITMAddSelectedItemClick(TObject *Sender)
{
	if (DM->TITM->RecordCount == 0) {
		MessageDlg("Select an Item before!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	if (DM->TITMITM_CODE->Value == -1) {
		MessageDlg("Sale Unknown Item not allowed!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	DM->TLFITM->Insert();
}

// ASM *************************************************************************

void __fastcall TFMain::ButtonASM_NewClick(TObject *Sender)
{
	FormITM->Mode = "NewAssembly";
	FormITM->ShowModal();
}


void __fastcall TFMain::ButtonASMITM_AddClick(TObject *Sender)
{
	if (DM->TITM->RecordCount == 0) {
		MessageDlg("Select an Item before!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	DM->TASMITM->Insert();
}

void __fastcall TFMain::ButtonCreateNewItemWithoutPurchaseClick(TObject *Sender)
{
	if (DM->TASM->RecordCount == 0) {
		MessageDlg("Select an Assembly before!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}
	CBLFApplySmartFilter->Checked = false;
	FormITM->Mode = "NewASMITM";
	FormITM->ShowModal();
}

// History *********************************************************************



// Mouvment ********************************************************************

void __fastcall TFMain::GMOVPURDblClick(TObject *Sender)
{
	if (DM->QMOVPURINV_ID->Value != NULL) {
		CBFilterCNT->Checked = false;
		DM->TPUR->Locate("INV_ID",DM->QMOVPURINV_ID->Value);
		DM->TPURITM->Locate("INVITM_ITM_ID",DM->QMOVPURITM_ID->Value);
		PageControl2->ActivePage = TabSheetPUR;
	}
}

void __fastcall TFMain::GMOVSALDblClick(TObject *Sender)
{
	if (DM->QMOVSALINV_ID->Value != NULL) {
		CBFilterCNT->Checked = false;
		DM->TSAL->Locate("INV_ID",DM->QMOVSALINV_ID->Value);
		DM->TSALITM->Locate("INVITM_ITM_ID",DM->QMOVSALITM_ID->Value);
		PageControl2->ActivePage = TabSheetSAL;
	}
}

// Admin ***********************************************************************

void __fastcall TFMain::EditPasswordChange(TObject *Sender)
{
	if (Admin()) {
		if (!NetworkServer) {
			ButtonRestore->Enabled = true;
			ButtonImport->Enabled = true;
			ButtonBackupPath->Enabled = true;
			ButtonBackup->Enabled = true;
		}
		EditUnlock->Enabled = true;
		BtnMergeContacts->Enabled = true;
		ButtonMergeItem->Enabled = true;
		ButtonCleanUpAllInvoice->Enabled = true;
		ButtonSelectSQLServer->Enabled = true;
		ButtonClearEmptyContact->Enabled = true;
		EditCompanyName->Enabled = true;
		EditCompanyEmail->Enabled = true;
		EditCompanyTel->Enabled = true;
		EditCompanyAddress1->Enabled = true;
		EditCompanyAddress2->Enabled = true;
		EditAutoSaveDays->Enabled = true;
		DBMemoTextInfo->Enabled = true;
		CBLockItemZero->Enabled = true;
		CBAutoBackup->Enabled = true;
		CBAutoClearItem->Enabled = true;
		LabelInfo->Visible = true;
		LabelInfo->Caption = "Admin mode is ON";
		ButtonAdminOff->Visible = true;
		ButtonClearLog->Enabled = true;
		ButtonResetParam->Enabled = true;

		PanelInfo->StyleElements = PanelPUR->StyleElements >> seClient;
		PanelInfo->Color = ColorError;
		PanelInfo->ParentColor = false;
		PanelInfo->Visible = true;
		DM->MEMOINFO->Edit();
	} else {
		EditCompanyName->Enabled = false;
		EditCompanyEmail->Enabled = false;
		EditCompanyTel->Enabled = false;
		EditCompanyAddress1->Enabled = false;
		EditCompanyAddress2->Enabled = false;
		ButtonImport->Enabled = false;
		ButtonRestore->Enabled = false;
		ButtonBackupPath->Enabled = false;
		ButtonBackup->Enabled = !NetworkServer;
		CBAutoBackup->Enabled = false;
		DBMemoTextInfo->Enabled = false;
		EditUnlock->Enabled = false;
		EditAutoSaveDays->Enabled = false;
		BtnMergeContacts->Enabled = false;
		ButtonMergeItem->Enabled = false;
		ButtonCleanUpAllInvoice->Enabled = false;
		ButtonSelectSQLServer->Enabled = false;
		ButtonClearEmptyContact->Enabled = false;
		LabelInfo->Visible = false;
		ButtonAdminOff->Visible = false;
		ButtonClearLog->Enabled = false;
		CBLockItemZero->Enabled = false;
		CBAutoClearItem->Enabled = false;
		ButtonResetParam->Enabled = false;

		PanelInfo->StyleElements = PanelPUR->StyleElements << seClient;
		PanelInfo->ParentColor = true;
		PanelInfo->Visible = false;
		if ( DM->MEMOINFO->State == dsEdit ) DM->MEMOINFO->Post();
	}
}

bool __fastcall TFMain::Admin(void)
{
	return (EditPassword->Text == Password);
}


void __fastcall TFMain::EditParamChange(TObject *Sender)
{
	SaveParam();
}

void __fastcall TFMain::Timer1Timer(TObject *Sender)
{
	if (DoExit) {
		Timer1->Enabled = false;
		Close();
	}
	AllowModify();
}

bool __fastcall TFMain::AllowModify(void)
{
	int s;
	TTime t;
	TDateTime tend;

	// Panel PURCHASE
	if (PageControl2->ActivePage == TabSheetPUR) {
		if (DM->TPURINV_STATUS->Value == "Close" ) {
			tend = IncMinute(DM->TPURINV_LOCKDATE->AsDateTime,EditUnlock->Text.ToInt());
			s = SecondsBetween(Now(),tend);;
			if ( CompareDateTime(tend, Now()) == GreaterThanValue) {
				t = IncSecond(0,s);
				PanelPurLock->Caption = "Purchase Close in: " + TimeToStr(t);
				return true;
			} else {
				PanelPurLock->Caption = "Purchase Close";
				return false;
			}
		} else {
			PanelPurLock->Caption = "Purchase " + DM->TPURINV_STATUS->Value;
			return true;
		}
	}

	// Panel SALE
	if (PageControl2->ActivePage == TabSheetSAL) {
		if (DM->TSALINV_STATUS->Value == "Close" ) {
			tend = IncMinute(LastSalPay,EditUnlock->Text.ToInt());
			s = SecondsBetween(Now(),tend);;
			if ( CompareDateTime(tend, Now()) == GreaterThanValue) {
				t = IncSecond(0,s);
				PanelSalLock->Caption = "Sale Close in: " + TimeToStr(t);
				return true;
			} else {
				PanelSalLock->Caption = "Sale Close";
				return false;
			}
		} else {
			PanelSalLock->Caption = "Sale " + DM->TSALINV_STATUS->Value;
			return true;
		}
	}
}

void __fastcall TFMain::ButtonAdminOffClick(TObject *Sender)
{
	EditPassword->Clear();
}

// Backup Restore **************************************************************

void __fastcall TFMain::Backup(UnicodeString savefile) {
	String sql;

	DM->MasterOpen();
	if (FileExists(savefile)) DeleteFile(savefile);
	sql = "DBCC SHRINKDATABASE (BAB, 10)";
	DM->Master->ExecSQL(sql);
	sql = "backup database BAB to disk = '" + savefile + "'";
	DM->Master->ExecSQL(sql);
	if (!savefile.Pos("\\AUTO ")) {
		DM->LogAdd(" " + sql);
	}
	AutoPurge();
}

void __fastcall TFMain::ButtonBackupClick(TObject *Sender)
{
	String sql;

	DM->MasterOpen();
	TSaveDialog *SaveMe = new TSaveDialog(FMain);
	SaveMe->InitialDir = LabelPathBackup->Caption;
	SaveMe->FileName = LabelPathBackup->Caption + "\\BAB" + FormatDateTime(" yyyy mm dd - hh nn", Now()) + ".bak";
	if ( SaveMe->Execute() == True ) {
		Backup(SaveMe->FileName);
	}
	delete SaveMe;
}

void __fastcall TFMain::ButtonRestoreClick(TObject *Sender)
{
	String sql;

	TOpenDialog *OpenMe = new TOpenDialog(FMain);
	OpenMe->InitialDir = LabelPathBackup->Caption;
	if ( OpenMe->Execute() == True ) {
		if (MessageDlg("Are You SURE to Restore Database ?\nCurrent Database will be lost!",mtInformation,  TMsgDlgButtons() << mbOK << mbCancel, 1) == mrOk) {
			DM->DisableCtrl();
			Backup(LabelPathBackup->Caption + "\\RECOVER.bak");
			DM->DatabaseClose();
			DM->MasterOpen();
			sql = "restore database BAB from disk = '" + OpenMe->FileName + "' with replace";
			DM->Master->ExecSQL(sql);
			DM->DatabaseTableOpen();
			//DM->LogAdd(" " + sql);
			DM->EnableCtrl();
		}
	}
	delete OpenMe;
	DM->RefreshAll();
}

void __fastcall TFMain::AutoPurge(void) {
	int eof;
	TSearchRec SearchRec;
	TDateTime dt, dt2, dt3;
	TStringList *FileToDelete;
	TStringList *FileDate;
	int i, j, k, l;
	int fileminitokeep, daytokeep;
	UnicodeString s;

	fileminitokeep = 5;
	daytokeep  = EditAutoSaveDays->Text.ToInt();

	FileToDelete = new TStringList();
	FileDate     = new TStringList();

	if (!DirectoryExists(LabelPathBackup->Caption)) return;

	FileToDelete->Clear();
	FileDate->Clear();
	eof = FindFirst(LabelPathBackup->Caption + L"\\AUTO*.bak", faAnyFile, SearchRec);
	while (eof == 0) {
		if (SearchRec.Name[1] != '.') {
			s = SearchRec.Name;
			FileDate->Add(DateTimeToStr(SearchRec.TimeStamp));
			FileToDelete->Add(LabelPathBackup->Caption + L"\\" + LowerCase(SearchRec.Name));
		}
		eof = FindNext(SearchRec);
	}
	FindClose(SearchRec);

	if (FileToDelete->Count > 0) {
		//tn = TreeViewLOG->Items->Add(NULL,"Purge old Backup.");
		l = FileToDelete->Count - fileminitokeep;
		for (i = 0; i < l; i++) {
			k = -1;
			dt2 = IncDay(Now(),-daytokeep);
			for (j = 0; j < FileToDelete->Count; j++) {
				dt = StrToDateTime(FileDate->Strings[j]);
				if (CompareDateTime(dt,dt2) == LessThanValue) {
					s = FileToDelete->Strings[j];
					k = j;
					dt2 = dt;
				}
			}
			if (k != -1) {
				//TreeViewLOG->Items->AddChild(tn,"Purge Auto Backup file: " + DateTimeToStr(dt2) + "  " + FileToDelete->Strings[k]);
				if (FileExists(FileToDelete->Strings[k])) DeleteFile(FileToDelete->Strings[k]);
				FileToDelete->Delete(k);
				FileDate->Delete(k);
			} else {
				break;
			}
		}
	}
	delete FileToDelete;
	delete FileDate;
}

void __fastcall TFMain::AutoBackup(void) {
	String sql;
	UnicodeString savefile;

	if ( CBAutoBackup->Checked && DM->Connect->Connected ) {
		DM->MasterOpen();
		savefile = LabelPathBackup->Caption + "\\AUTO" + FormatDateTime(" yyyy mm dd - hh nn", Now()) + ".bak";
		if (DirectoryExists(LabelPathBackup->Caption)) {
			if (FileExists(savefile)) DeleteFile(savefile);
			Backup(savefile);
			AutoPurge();
		}
	}
}

void __fastcall TFMain::ButtonBackupPathClick(TObject *Sender)
{
	FolderSelectDialog->DefaultFolder = LabelPathBackup->Caption;
	if ( FolderSelectDialog->Execute() ) {
		LabelPathBackup->Caption = FolderSelectDialog->FileName;
    }
}

void __fastcall TFMain::CBAutoBackupClick(TObject *Sender)
{
	SaveParam();
}

// Invoice CleanUp *********************************************************************
void __fastcall TFMain::ButtonCleanUpAllInvoiceClick(TObject *Sender)
{
	int c = 0;
	UnicodeString s;

	DM->WINV->Filtered = false;
	DM->WINV->Open();
	DM->WINV->First();
	DM->WITM->Open();
	s = ButtonCleanUpAllInvoice->Caption;
	DM->LogAdd(" CleanUp All Invoice");
	while (!DM->WINV->Eof) {
		c++;
		ButtonCleanUpAllInvoice->Caption = "  " + UnicodeString(c) + " / " + UnicodeString(DM->WINV->RecordCount);
		ButtonCleanUpAllInvoice->Refresh();
		Sleep(1);
		CleanUpInvoice(DM->WINVINV_ID->Value);
		DM->WINV->Next();
	}
    ButtonCleanUpAllInvoice->Caption = s;
	DM->WINV->Close();
	DM->WITM->Close();
	DM->RefreshAll();
}

void __fastcall TFMain::ButtonCleanUpPurchaseClick(TObject *Sender)
{
	DM->LogAdd(" CleanUp Purchase Invoice N° " + DM->TPURINV_NUMBER->Text);
	CleanUpInvoice(DM->TPURINV_ID->Value);
	DM->RefreshAll();
}

void __fastcall TFMain::ButtonCleanUpSaleClick(TObject *Sender)
{
	DM->LogAdd(" CleanUp Sale Invoice N° " + DM->TSALINV_NUMBER->Text);
	CleanUpInvoice(DM->TSALINV_ID->Value);
	DM->RefreshAll();
}

void __fastcall TFMain::CleanUpInvoice(int invid) {
	int invitmid, itmid, qty;
	double amount;
	UnicodeString itmname, comment, ps;
	bool flagitm = false;
	bool flaginv = false;

	if (!DM->WITM->Active) {
		DM->WITM->Open();
		flagitm = true;
	}

	if (!DM->WINV->Active) {
		DM->WINV->Open();
		DM->WINV->Locate("INV_ID",invid);
		flaginv = true;
	}
	DM->WINVITM->Filtered = true;
	DM->WINVITM->Filter = "INVITM_INV_ID = " + UnicodeString(invid);
	DM->WINVITM->Open();
	DM->WINVITM->First();
	while (!DM->WINVITM->Eof) {
		invitmid = DM->WINVITMINVITM_ID->Value;
		itmid    = DM->WINVITMINVITM_ITM_ID->Value;
		qty      = DM->WINVITMINVITM_QTY->Value;
		amount   = DM->WINVITMINVITM_AMOUNT->Value;
		comment  = "Group line " + DM->WINVITMINVITM_QTY->AsString;
		DM->WINVITM->First();
		DM->WITM->Locate("ITM_ID",itmid);
		if (DM->WITMITM_CP->Value != "V") {
			while (!DM->WINVITM->Eof) {
				if (invitmid != DM->WINVITMINVITM_ID->Value) {
					if ( (itmid == DM->WINVITMINVITM_ITM_ID->Value) && (amount == DM->WINVITMINVITM_AMOUNT->Value) ) {
						if (DM->WINVINV_TYPE->Value == "P") { ps = "Purchase"; } else ps = "Sale";
						DM->LogAdd("  Merge and Add Qty Item <" + DM->WITMITM_CP->Text + DM->WITMITM_CODE->Text + DM->WITMITM_INDICE->Text + "> (" + DM->WITMITM_NAME->Text + ") from " + ps + " N° " + DM->WINVINV_NUMBER->Text);
						qty += DM->WINVITMINVITM_QTY->Value;
						comment += "+" + DM->WINVITMINVITM_QTY->AsString;
						DM->WINVITM->Delete();
					} else {
						DM->WINVITM->Next();
					}
				} else {
					DM->WINVITM->Next();
				}
			}

			DM->WINVITM->Locate("INVITM_ID",invitmid);
			if (qty == 0) {
				if (DM->WINVINV_TYPE->Value == "P") { ps = "Purchase"; } else ps = "Sale";
				DM->LogAdd("  Remove Qty 0 Item <" + DM->WITMITM_CP->Text + DM->WITMITM_CODE->Text + DM->WITMITM_INDICE->Text + "> (" + DM->WITMITM_NAME->Text + ") Qty 0 from " + ps + " N° " + DM->WINVINV_NUMBER->Text);
				DM->WINV->Edit();
				if (DM->WINVINV_COMMENT->Value == "") DM->WINVINV_COMMENT->Value = "Qty 0 : ";
				DM->WINVINV_COMMENT->Value = DM->WINVINV_COMMENT->Value + "<" + DM->WITMITM_CP->Text + DM->WITMITM_CODE->Text + DM->WITMITM_INDICE->Text + "> ";
				DM->WINV->Post();
				DM->WINVITM->Delete();
			} else if (qty != DM->WINVITMINVITM_QTY->Value) {
				DM->WINVITM->Edit();
				DM->WINVITMINVITM_QTY->Value = qty;
				DM->WINVITMINVITM_COMMENT->Value = comment;
				DM->WINVITM->Post();
				DM->WINVITM->Next();
			} else {
				DM->WINVITM->Next();
			}
		} else {
			DM->WINVITM->Locate("INVITM_ID",invitmid);
			DM->WINVITM->Next();
		}
	}
	DM->WINVITM->Close();
	DM->WINVITM->Filtered = false;
	DM->WINVITM->Filter   = "";

	if (flagitm) DM->WITM->Close();
	if (flaginv) DM->WINV->Close();
}

// Report **********************************************************************

void __fastcall TFMain::MonthCalendar1Click(TObject *Sender)
{
	if (MonthCalendar2->Date < MonthCalendar1->Date) {
		MonthCalendar2->Date = MonthCalendar1->Date;
	}
	if (!DM->QDAY_INV_ITM->Active) {
		DM->QDAY_INV_ITM->Active = true;
		DM->QYY_MM_INV->Active = true;
		GridOrderBy(GPROFIT,"INV_DATE");
	}
	DM->QDAY_INV_ITM->ParamByName("DATE1")->Value = MonthCalendar1->Date;
	DM->QDAY_INV_ITM->ParamByName("DATE2")->Value = MonthCalendar2->Date;
	DM->QDAY_INV_ITM->Refresh();

	DM->QYY_MM_INV->ParamByName("DATE1")->Value = MonthCalendar1->Date;
	DM->QYY_MM_INV->ParamByName("DATE2")->Value = MonthCalendar2->Date;
	DM->QYY_MM_INV->Refresh();
}

void __fastcall TFMain::ButtonReport_DAY_INV_ITMClick(TObject *Sender)
{
	UnicodeString f;

	f = DM->QDAY_INV_ITM->IndexFieldNames;
	DM->QDAY_INV_ITM->IndexFieldNames = "INV_DATE";
	DM->Report_DAY_INV_ITM->ShowReport(true);
	DM->QDAY_INV_ITM->IndexFieldNames = f;
}

void __fastcall TFMain::ButtonReport_YY_MM_INVClick(TObject *Sender)
{
	UnicodeString f;

	f = DM->QDAY_INV_ITM->IndexFieldNames;
	DM->QDAY_INV_ITM->IndexFieldNames = "INV_DATE";
	DM->Report_YY_MM_INV->ShowReport(true);
	DM->QDAY_INV_ITM->IndexFieldNames = f;
}

void __fastcall TFMain::ButtonReport_YY_MMClick(TObject *Sender)
{
	UnicodeString f;

	f = DM->QDAY_INV_ITM->IndexFieldNames;
	DM->QDAY_INV_ITM->IndexFieldNames = "INV_DATE";
	DM->Report_YY_MM->ShowReport(true);
	DM->QDAY_INV_ITM->IndexFieldNames = f;
}

// Import **********************************************************************

void __fastcall TFMain::ButtonImportClick(TObject *Sender)
{
	//FormRMAN->ShowModal();
}

//---------------------------------------------------------------------------
// Util
//---------------------------------------------------------------------------

UnicodeString __fastcall TFMain::MajMin(UnicodeString mm) {
	if ( UpperCase(mm.SubString(1,3)) == "MR ") mm = mm.SubString(4,60);
	if ( UpperCase(mm.SubString(1,3)) == "MR.") mm = mm.SubString(4,60);
	if ( UpperCase(mm.SubString(1,3)) == "Mr ") mm = mm.SubString(4,60);
	if ( UpperCase(mm.SubString(1,3)) == "Mr.") mm = mm.SubString(4,60);
	if ( UpperCase(mm.SubString(1,3)) == "MS ") mm = mm.SubString(4,60);
	if ( UpperCase(mm.SubString(1,3)) == "MS.") mm = mm.SubString(4,60);
	if ( UpperCase(mm.SubString(1,5)) == "MISS ") mm = mm.SubString(6,60);
	mm = Trim(mm);
	return UpperCase(mm.SubString(1,1)) + LowerCase(mm.SubString(2,60));
}

//---------------------------------------------------------------------------

void __fastcall TFMain::ClearUnusedItem(void)
{
	bool flag = true;

	DM->VITM->Open();
	DM->VITM->First();
	DM->WITM->Open();
	while (!DM->VITM->Eof) {
		if (flag) { DM->LogAdd(" Clear Unused Items"); flag = false; }
		DM->LogAdd("  Remove item: " + DM->VITMITM_CP->Value+DM->VITMITM_CODE->Text+DM->VITMITM_INDICE->Value + "  " + DM->VITMITM_NAME->Value);
		DM->WITM->Locate("ITM_ID",DM->VITMITM_ID->Value);
		DM->WITM->Delete();
		DM->VITM->Refresh();
		DM->VITM->First();
	}
	DM->VITM->Close();
	DM->WITM->Close();
	DM->RefreshAll();
}

void __fastcall TFMain::ButtonSelectSQLServerClick(TObject *Sender)
{
	FormDB->LabelInfo->Caption = "Database Setup";
	FormDB->ShowModal();
}

void __fastcall TFMain::ButtonClearEmptyContactClick(TObject *Sender)
{
	UnicodeString cntname;

	DM->LogAdd(" Clear Unused Contact");

	DM->WCNT->Open();
	DM->WCNT->First();
	while(!DM->WCNT->Eof) {
		if (DM->WCNTCNT_FIRSTNAME->Value != "* Anonym") {
			try
			{
				cntname = DM->WCNTCNT_FIRSTNAME->Value;
				DM->WCNT->Delete();
				DM->LogAdd("  Remove Contact: " + cntname);
			}
			catch (...)
			{
				DM->WCNT->Next();
			}
		} else {
			DM->WCNT->Next();
        }
	}
	DM->WCNT->Close();
	DM->RefreshCNT(NULL);
}

void __fastcall TFMain::CBLFFilterByCategoryClick(TObject *Sender)
{
    SetFilter("FLT ApplyFilter");
}

void __fastcall TFMain::CBLFApplySmartFilterClick(TObject *Sender)
{
	SetFilter("FLT ApplyFilter");
}

//---------------------------------------------------------------------------
// DB PARAM
//---------------------------------------------------------------------------
void __fastcall TFMain::CBAutoClearItemClick(TObject *Sender)
{
	UnicodeString s;
	if (CBAutoClearItem->Checked) {
		ClearUnusedItem();
		s = "true";
	} else s = "false";
	DM->SetDBParam("AutoClearItem", s);
}

void __fastcall TFMain::EditUnlockChange(TObject *Sender)
{
	DM->SetDBParam("Unlock", EditUnlock->Text);
}

void __fastcall TFMain::CBLockItemZeroClick(TObject *Sender)
{
	UnicodeString s;
	if (CBLockItemZero->Checked) s = "true"; else s = "false";
	DM->SetDBParam("LockItemZero", s);
}

void __fastcall TFMain::CBNegativeStockCompensClick(TObject *Sender)
{
	UnicodeString s;
	if (CBNegativeStockCompens->Checked) s = "true"; else s = "false";
	DM->SetDBParam("NegativeStockCompens", s);
	DM->NegativeStockCompens();
}

void __fastcall TFMain::EditCompanyNameChange(TObject *Sender)
{
	DM->SetDBParam("CompanyName", EditCompanyName->Text);
	UpdateFormCaption();
}

void __fastcall TFMain::EditCompanyEmailChange(TObject *Sender)
{
	DM->SetDBParam("CompanyEmail", EditCompanyEmail->Text);
}

void __fastcall TFMain::EditCompanyTelChange(TObject *Sender)
{
	DM->SetDBParam("CompanyTel", EditCompanyTel->Text);
}

void __fastcall TFMain::EditCompanyAddress1Change(TObject *Sender)
{
	DM->SetDBParam("CompanyAddress1", EditCompanyAddress1->Text);
}

void __fastcall TFMain::EditCompanyAddress2Change(TObject *Sender)
{
	DM->SetDBParam("CompanyAddress2", EditCompanyAddress2->Text);
}



void __fastcall TFMain::GTODO_PURPAYDblClick(TObject *Sender)
{
	if (DM->QTODO_PURPAYINV_ID->Value != NULL) {
		CBFilterCNT->Checked = false;
		DM->TPUR->Locate("INV_ID",DM->QTODO_PURPAYINV_ID->Value);
		PageControl2->ActivePage = TabSheetPUR;
	}
}

void __fastcall TFMain::GTODO_SALPAYDblClick(TObject *Sender)
{
	if (DM->QTODO_SALPAYINV_ID->Value != NULL) {
		CBFilterCNT->Checked = false;
		DM->TSAL->Locate("INV_ID",DM->QTODO_SALPAYINV_ID->Value);
		PageControl2->ActivePage = TabSheetSAL;
	}
}

void __fastcall TFMain::GTODO_PURDLVDblClick(TObject *Sender)
{
	if (DM->QTODO_PURDLVINV_ID->Value != NULL) {
		CBFilterCNT->Checked = false;
		DM->TPUR->Locate("INV_ID",DM->QTODO_PURDLVINV_ID->Value);
		DM->TPURITM->Locate("INVITM_ITM_ID",DM->QTODO_PURDLVITM_ID->Value);
		PageControl2->ActivePage = TabSheetPUR;
	}
}

void __fastcall TFMain::GTODO_SALDLVDblClick(TObject *Sender)
{
	if (DM->QTODO_SALDLVINV_ID->Value != NULL) {
		CBFilterCNT->Checked = false;
		DM->TSAL->Locate("INV_ID",DM->QTODO_SALDLVINV_ID->Value);
		DM->TSALITM->Locate("INVITM_ITM_ID",DM->QTODO_SALDLVITM_ID->Value);
		PageControl2->ActivePage = TabSheetSAL;
	}
}

void __fastcall TFMain::CBPURITMLinkClick(TObject *Sender)
{
	SetFilter("CHG PURITM");
}

void __fastcall TFMain::CBSALITMLinkClick(TObject *Sender)
{
	SetFilter("CHG SALITM");
}

void __fastcall TFMain::CBLFITMLinkClick(TObject *Sender)
{
	SetFilter("CHG LFITM");
}

void __fastcall TFMain::CBPURLinkClick(TObject *Sender)
{
	SetFilter("CHG PUR");
}

void __fastcall TFMain::CBSALLinkClick(TObject *Sender)
{
	SetFilter("CHG SAL");
}


//---------------------------------------------------------------------------
// Export Excel
//---------------------------------------------------------------------------
void __fastcall TFMain::XlsExportDataset(TDataSet *ds, TDBGrid *grd) {
	// https://cpp.developpez.com/faq/bcb/test/?page=msofficeexcelparamappli#oleexcelscreenupdating

	int i = 0, j;
	UnicodeString s;
	Variant XlApp;
	Variant XlWorkBooks;
	Variant XlWorkBook;
	Variant WorkSheet;
	Variant Columns;
	Variant Range;
	WideString tab, lf, Value, vnd;
	Variant XlHwnd;
	int col[30];
	UnicodeString format[30];
	TColor color;

	try {
		XlApp = Variant::CreateObject("Excel.Application");
	} catch(...) {
		MessageDlg("Can't Open Excel! Can't Export to Excel." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}

	try {
		XlApp.OlePropertySet("Visible", true);
	} catch(...) {
		MessageDlg("Excel Not Found! Can't Export to Excel." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		return;
	}

	ds->DisableControls();
	ds->First();
	s = LabelFilter->Caption;
	color = LabelFilter->Font->Color;
	LabelFilter->Font->Color = ColorError;
	Value = "";
	tab = WideString(char(9));
	lf =  WideString(char(13));

	for (j = 0; j < grd->Columns->Count; j++) {
		Value += WideString(grd->Fields[j]->DisplayLabel) + tab;
		col[j] = grd->Fields[j]->FieldNo;
		format[j] = grd->Fields[j]->ClassName();
	}

	Value += WideString(char(13));
	while (!ds->Eof) {
		i++;
		LabelFilter->Caption = "Excel Export Line in Progress: " + UnicodeString(i);
		LabelFilter->Refresh();
		for (j = 0; j < grd->Columns->Count; j++) {
			Value += ds->Fields->FieldByNumber(col[j])->AsWideString + tab;
		}
		Value += lf;
		ds->Next();
	}
	LabelFilter->Caption = "Try to Open Excel";
	LabelFilter->Refresh();
	Clipboard()->AsText = Value;

	ds->EnableControls();

	try {
		XlApp.OlePropertySet("Visible", true);
		XlApp.OlePropertySet("DecimalSeparator", WideString("."));
		XlApp.OlePropertySet("ThousandsSeparator", WideString(" "));
		XlApp.OlePropertySet("UseSystemSeparators", false);
		XlWorkBook = XlApp.OlePropertyGet("Workbooks").OleFunction("Add");
		WorkSheet = XlWorkBook.OlePropertyGet("ActiveSheet");

		// Column Format
		for (j = 0; j < grd->Columns->Count; j++) {
			Range = WorkSheet.OlePropertyGet("Columns", j+1);
			if (format[j] == "TWideStringField") ;
			if (format[j] == "TLargeintField") Range.OlePropertySet("NumberFormatLocal", WideString("#0"));
			if (format[j] == "TCurrencyField") Range.OlePropertySet("NumberFormatLocal", WideString("#0"));
			if (format[j] == "TSQLTimeStampField") ;
		}

		// Paste
		XlApp.OlePropertySet("ScreenUpdating", false);
		WorkSheet.OleFunction("Paste");
		XlApp.OlePropertySet("ScreenUpdating", true);

		// Autofit
		XlApp.OlePropertyGet("Columns").OleFunction("AutoFit");
	} catch(...) {
    }

	LabelFilter->Font->Color = color;
	LabelFilter->Caption = s;
	LabelFilter->Refresh();

	// Fenetre en Focus
	try {
		XlHwnd = XlApp.OlePropertyGet("Hwnd");
		if (XlHwnd != NULL) {
			SetForegroundWindow(HWND(XlHwnd.VLongWord));
			SetActiveWindow(HWND(XlHwnd.VLongWord));
		}
	} catch(...) {
    }
}

void __fastcall TFMain::ButtonXlsItemClick(TObject *Sender)
{
	DM->DITM->OnDataChange = NULL;
	XlsExportDataset(DM->DITM->DataSet, GITM);
	DM->DITM->OnDataChange = DM->DITMDataChange;
}

void __fastcall TFMain::ButtonXlsPURClick(TObject *Sender)
{
	DM->DPUR->OnDataChange = NULL;
	XlsExportDataset(DM->TPUR, GPUR);
	DM->DPUR->OnDataChange = DM->DPURDataChange;
}

void __fastcall TFMain::ButtonXlsPURITMClick(TObject *Sender)
{
	DM->DPURITM->OnDataChange = NULL;
	XlsExportDataset(DM->TPURITM, GPURITM);
	DM->DPURITM->OnDataChange = DM->DPURITMDataChange;
}

void __fastcall TFMain::ButtonXlsSALClick(TObject *Sender)
{
	DM->DSAL->OnDataChange = NULL;
	XlsExportDataset(DM->TSAL, GSAL);
	DM->DSAL->OnDataChange = DM->DSALDataChange;
}

void __fastcall TFMain::ButtonXlsSALITMClick(TObject *Sender)
{
	DM->DSALITM->OnDataChange = NULL;
	XlsExportDataset(DM->TSALITM, GSALITM);
	DM->DSALITM->OnDataChange = DM->DSALITMDataChange;
}

void __fastcall TFMain::ButtonXlsLFITMClick(TObject *Sender)
{
	DM->DLFITM->OnDataChange = NULL;
	XlsExportDataset(DM->TLFITM, GLFITM);
	DM->DLFITM->OnDataChange = DM->DLFITMDataChange;
}

void __fastcall TFMain::ButtonXlsMOVITMPURClick(TObject *Sender)
{
	DM->DMOVPUR->OnDataChange = NULL;
	DM->QMOVPUR->Close();
	DM->QMOVPUR->Open();
	XlsExportDataset(DM->DMOVPUR->DataSet,GMOVPUR);
	DM->DMOVPUR->OnDataChange = DM->DMOVPURDataChange;

}

void __fastcall TFMain::ButtonXlsMOVITMSALClick(TObject *Sender)
{
	DM->DMOVSAL->OnDataChange = NULL;
	DM->QMOVSAL->Close();
	DM->QMOVSAL->Open();
	XlsExportDataset(DM->QMOVSAL, GMOVSAL);
	DM->DMOVSAL->OnDataChange = DM->DMOVSALDataChange;
}

void __fastcall TFMain::ButtonXlsPROFITClick(TObject *Sender)
{
	if (DM->QDAY_INV_ITM->Active) {
		XlsExportDataset(DM->QDAY_INV_ITM, GPROFIT);
	}
}

void __fastcall TFMain::ButtonXlsTODO_NEGClick(TObject *Sender)
{
	DM->DSTODO_NEG->OnDataChange = NULL;
	XlsExportDataset(DM->QTODO_NEG, GTODO_NEG);
	DM->DSTODO_NEG->OnDataChange = DM->DSTODO_NEGDataChange;
}

void __fastcall TFMain::BurronXlsTODO_UNKClick(TObject *Sender)
{
	DM->DSTODO_UNK->OnDataChange = NULL;
	XlsExportDataset(DM->QTODO_UNK, GTODO_UNK);
	DM->DSTODO_UNK->OnDataChange = DM->DSTODO_UNKDataChange;
}

//---------------------------------------------------------------------------

void __fastcall TFMain::Button1Click(TObject *Sender)
{
	int due, itemcount;
	UnicodeString status;

	if (MessageDlg("Confirm Payment ?",mtInformation,  TMsgDlgButtons() << mbOK << mbCancel, 1) == mrCancel) return;

	due = DM->TPURDue->Value;
	if (due > 0) {
		DM->WINVPAY->Open();
		DM->WINVPAY->Append();
		DM->WINVPAYINVPAY_INV_ID->Value      = DM->TPURINV_ID->Value;
		DM->WINVPAYINVPAY_DATE->AsDateTime   = Now();
		DM->WINVPAYINVPAY_AMOUNT->AsCurrency = double(due);
		DM->WINVPAYINVPAY_COMMENT->Value     = "";
		DM->WINVPAY->Post();
		DM->WINVPAY->Close();

		DM->WINV->Open();
		DM->WINV->Locate("INV_ID",DM->TPURINV_ID->Value);
		DM->WINV->Edit();
		DM->WINVINV_LOCKDATE->AsDateTime = Now();
		DM->WINVINV_STATUS->Value = "Close";
		DM->WINV->Post();
		DM->WINV->Close();
		DM->RefreshPUR(NULL);
	}
}
//---------------------------------------------------------------------------

void __fastcall TFMain::ButtonAboutClick(TObject *Sender)
{
	FormAbout->ShowModal();
}

void __fastcall TFMain::ButtonResetParamClick(TObject *Sender)
{
	if (MessageDlg("Confirm Param Reset ?",mtInformation,  TMsgDlgButtons() << mbOK << mbCancel, 1) == mrCancel) return;

	EditUnlock->Text = "15";
	CBLockItemZero->Checked         = true;
	CBNegativeStockCompens->Checked = true;
	CBAutoClearItem->Checked        = true;
	EditCompanyName->Text           = "Enter Company Name Here.";
	EditCompanyEmail->Text          = "Enter Company Email Here.";
	EditCompanyTel->Text            = "Enter Company Phone Here.";
	EditCompanyAddress1->Text       = "Enter Address line 1";
	EditCompanyAddress2->Text       = "Enter Address line 2";
	UpdateFormCaption();
	DM->LogAdd("  Reset Param Done.");
}


