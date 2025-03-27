/////////////////////////////////////////////////////////////////////////////
// DMIMPL : Implémentation de TDMImpl (CoClasse : DM, Interface : IDM)

#include <vcl.h>
#pragma hdrstop

#include "DMDM.h"

#if !defined(__PRAGMA_SMART_INIT_DEFINED)
#define __PRAGMA_SMART_INIT_DEFINED
#pragma package(smart_init)
#endif

#pragma link "frxClass"
#pragma link "frxDBSet"
#pragma link "frxExportPDF"
#pragma resource "*.dfm"


/////////////////////////////////////////////////////////////////////////////
// Instance globale de TDMImpl
/////////////////////////////////////////////////////////////////////////////
TDM *DM;


/////////////////////////////////////////////////////////////////////////////
// TDM::TDM
/////////////////////////////////////////////////////////////////////////////
__fastcall TDM::TDM(TComponent* Owner) : TRemoteDataModule(Owner)
{
}

void __fastcall TDM::ClearLog(void) {
	DM->MEMOLOG->Edit();
	DM->MEMOLOGMemo->Clear();
	DM->MEMOLOG->Post();
	DM->LogAdd("Session Start.\n");
	DM->LogAdd(" Clear LOG.");
}

//---------------------------------------------------------------------------
// Database - Login
//---------------------------------------------------------------------------
void __fastcall TDM::SQL_ITM(UnicodeString txt) {
	DITM->OnDataChange = NULL;
	TITM->SQL->BeginUpdate();
	TITM->SQL->Clear();
	TITM->SQL->Add("SELECT");
	TITM->SQL->Add("dbo.VITM.ITM_CP,");
	TITM->SQL->Add("dbo.VITM.ITM_CODE,");
	TITM->SQL->Add("dbo.VITM.ITM_INDICE,");
	TITM->SQL->Add("dbo.GRP.GRP_NAME,");
	TITM->SQL->Add("dbo.VITM.ITM_NAME,");
	TITM->SQL->Add("dbo.VITM.ITM_UNIT,");
	TITM->SQL->Add("dbo.VITM.ITM_PURCHASE,");
	TITM->SQL->Add("dbo.VITM.ITM_SALE,");
	TITM->SQL->Add("dbo.VITM.PUR,");
	TITM->SQL->Add("dbo.VITM.SAL,");
	TITM->SQL->Add("dbo.VITM.LF,");
	TITM->SQL->Add("dbo.VITM.ASM,");
	TITM->SQL->Add("dbo.VITM.USED,");
	TITM->SQL->Add("dbo.VITM.Stock,");
	TITM->SQL->Add("dbo.VITM.ITM_COMMENT,");
	TITM->SQL->Add("dbo.VITM.ITM_ID,");
	TITM->SQL->Add("dbo.VITM.ITM_GRP_ID");
	TITM->SQL->Add("FROM dbo.VITM INNER JOIN dbo.GRP ON dbo.VITM.ITM_GRP_ID = dbo.GRP.GRP_ID");
	if (UnicodeString(txt) != "") {
		if (IsDigit(txt)) {
			TITM->SQL->Add("WHERE (CONVERT(varchar(10), ITM_CODE) LIKE '%" + txt + "%')");
		} else {
			TITM->SQL->Add("WHERE (ITM_NAME LIKE '%" + txt + "%')");
		}
	}
	TITM->SQL->Add("ORDER BY ITM_ID");
	TITM->SQL->EndUpdate();
	TITM->Open();
	DITM->OnDataChange = DITMDataChange;
}

void __fastcall TDM::SQL_MOVPUR(UnicodeString txt) {
	DMOVPUR->OnDataChange = NULL;
	QMOVPUR->SQL->BeginUpdate();
	QMOVPUR->SQL->Clear();
	QMOVPUR->SQL->Add("SELECT *, {fn IF( ITM_CP = 'V' , 0, (INVITM_QTY * INVITM_AMOUNT) - (INVITM_QTY * ITM_PURCHASE) ) } AS Total_Gap FROM dbo.VMOVPUR");
	if (UnicodeString(txt) != "") {
		if (IsDigit(txt)) {
			QMOVPUR->SQL->Add("WHERE (CONVERT(varchar(10), ITM_CODE) LIKE '%" + txt + "%')");
		} else {
			QMOVPUR->SQL->Add("WHERE (ITM_NAME LIKE '%" + txt + "%')");
		}
	}
	QMOVPUR->SQL->Add("ORDER BY ITM_CODE");
	QMOVPUR->SQL->EndUpdate();
	QMOVPUR->Open();
	DMOVPUR->OnDataChange = DMOVPURDataChange;
}

void __fastcall TDM::SQL_MOVSAL(UnicodeString txt) {
	DMOVSAL->OnDataChange = NULL;
	QMOVSAL->SQL->BeginUpdate();
	QMOVSAL->SQL->Clear();
	QMOVSAL->SQL->Add("SELECT *, { fn IF ( ITM_CP = 'V', 0, (INVITM_QTY * INVITM_AMOUNT) - (INVITM_QTY * ITM_SALE)) } AS Total_Discount  FROM dbo.VMOVSAL");
	if (UnicodeString(txt) != "") {
		if (IsDigit(txt)) {
			QMOVSAL->SQL->Add("WHERE (CONVERT(varchar(10), ITM_CODE) LIKE '%" + txt + "%')");
		} else {
			QMOVSAL->SQL->Add("WHERE (ITM_NAME LIKE '%" + txt + "%')");
		}
	}
	QMOVSAL->SQL->Add("ORDER BY ITM_CODE");
	QMOVSAL->SQL->EndUpdate();
	QMOVSAL->Open();
	DMOVSAL->OnDataChange = DMOVSALDataChange;
}

void __fastcall TDM::DatabaseOpen(void) {
	if ( Connect->Connected ) return;

	Connect->Params->Clear();
	Connect->Params->Add("DriverID=MSSQL");
	Connect->Params->Add("OSAuthent=Yes");

	if (FMain->Instance != "") {
		Connect->Params->Add("Server=" + FMain->Server + "\\" + FMain->Instance);
	} else {
		Connect->Params->Add("Server=" + FMain->Server);
	}
	Connect->Params->Add("Database=BAB");

	try
	{
		Connect->Open();
	}
	catch (...)
	{
		if (FormSC != NULL) FormSC->Hide();
		FMain->PageControl2->ActivePage = FMain->TabSheetAdmin;
		if (FMain->Server == "(Local)") {
			MessageDlg("Database Error... Cannot connect to Local Database." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		} else {
			MessageDlg("Database Error... Cannot connect to Network Database." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
        }
	}
}

void __fastcall TDM::DatabaseTableOpen(void) {
	TTreeNode *node, *tmpnode;

	DatabaseOpen();
	DatabaseVersion();
	if ( Connect->Connected && ((FMain->SoftwareDBVersion == FormDB->LabelSQLServerDBVersion->Caption)) ) {
		try
		{
			SQL_ITM("");

			PARAM->Open();
			TCNT->Open();
			TGRP->Open();
			TITM->Open();
			TPUR->Open();
			TPURITM->ParamByName("INVID")->Value = TPURINV_ID->Value;
			TPURITM->Open();
			TPURPAY->Open();
			TLF->Open();
			if ( TLF->Locate("LF_CATEGORY","* Sale Without Code") ) {
				LFID_SaleWithoutCode = TLFLF_ID->Value;
			}
			if ( TLF->Locate("LF_CATEGORY","* Sale Negative Item") ) {
				LFID_SaleNegativeItem = TLFLF_ID->Value;
			}
			if ( TLF->Locate("LF_CATEGORY","* Item Lost or Found") ) {
				LFID_ItemLostOrFound = TLFLF_ID->Value;
			}

			TLFITM->Open();
			TASM->Open();
			TASMITM->Open();
			TSAL->Open();
			TSALITM->ParamByName("INVID")->Value = TSALINV_ID->Value;
			TSALITM->Open();
			TSALPAY->Open();

			QTODO_NEG->Open();
			QTODONEGERR->Open();
			QTODOUNKERR->Open();
			QTODO_UNK->Open();
			QTODO_SALDLV->Open();
			QTODO_PURDLV->Open();
			QTODO_SALPAY->Open();
			QTODO_PURPAY->Open();

			VITM_NEXT->Open();
			VPUR_NEXT->Open();
			VSAL_NEXT->Open();

			SQL_MOVPUR("");
			SQL_MOVSAL("");

			MEMOINFO->Open();
			MEMOLOG->Open();
			MEMOTODO->Open();
			MEMOTODO->Edit();
			UpdateTreeViewLog();

			node = FMain->TreeViewLOG->Items->GetFirstNode();
			while ( (tmpnode = node->getNextSibling()) != NULL )
				node = tmpnode;
			if ( node->Text.Pos(DateToStr(Now()) + " : Session Start.") < 1 ) {
				LogAdd("Session Start.");
			}

			RefreshHST();
			FMain->PageControl2->ActivePage = FMain->TabSheetHIST;
			FMain->EditPasswordChange(NULL);
			TCNT->First();
			TITM->First();
		}
		catch (...)
		{
			MessageDlg("Database Connection Error. Restore a Database Backup" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
			MasterClose();
			DatabaseClose();
			if (FormSC != NULL) FormSC->Hide();
			FormDB->LabelInfo->Caption = "Restore a Database Backup";
			FormDB->ShowModal();
		}
	}
}

void __fastcall TDM::DatabaseClose(void) {
	if ( Connect->Connected ) {
		Connect->Close();
	}
	Connect->Params->Clear();
}

bool __fastcall TDM::DatabaseExist(void) {
	bool exist;

	MasterOpen();
	if (FMain->MasterFound) {
		try
		{
			CheckBAB->Open();
			exist = (CheckBAB->RecordCount == 1);
			CheckBAB->Close();
			MasterClose();
			return exist;
		}
		catch (...) {
		}
	}
	MasterClose();
	return false;
}

void __fastcall TDM::DatabaseVersion(void) {
	if (Connect->Connected) {
		if ( !PARAM->Active )PARAM->Open();
		if ( PARAM->Locate("NAME","DBVersion") ) {
			FormDB->LabelSQLServerDBVersion->Caption = PARAMValue->Value;
			return;
		}
	}
	FormDB->LabelSQLServerDBVersion->Caption = "0.0";
}

void __fastcall TDM::MasterOpen(void) {
	FMain->MasterFound = false;
	Master->Close();
	Master->Params->Clear();
	Master->Params->Add("DriverID=MSSQL");
	Master->Params->Add("OSAuthent=Yes");
	if (FMain->Instance != "") {
		Master->Params->Add("SERVER=" + FMain->Server + "\\" + FMain->Instance);
	} else {
		Master->Params->Add("SERVER=" + FMain->Server);
	}
	Master->Params->Add("Database=master");
	try
	{
		Master->Open();
		FMain->MasterFound = true;
	}
	catch (...)
	{
		DatabaseClose();
	}
	if (FormSC != NULL) FormSC->Hide();
}

void __fastcall TDM::MasterClose(void) {
	if (FMain->MasterFound) Master->Close();
}

//---------------------------------------------------------------------------
// Log file
//---------------------------------------------------------------------------
void __fastcall TDM::LogAdd(UnicodeString txt) {
	UnicodeString crlf;

	try {
		MEMOLOG->Edit();
		if (MEMOLOGMemo->AsString.Length() == 0) crlf = ""; else crlf = "\n";
		if (txt.SubString(1,1) != " ") {
			MEMOLOGMemo->Text = MEMOLOGMemo->AsString.Insert(crlf + DateToStr(Now()) + " : " + txt,MEMOLOGMemo->AsString.Length());
		} else {
			MEMOLOGMemo->Text = MEMOLOGMemo->AsString.Insert(crlf + txt,MEMOLOGMemo->AsString.Length());
		}
		MEMOLOG->Post();
		UpdateTreeViewLog();
	}
	catch (...) {}

}

void __fastcall TDM::UpdateTreeViewLog(void) {
	TMemoryStream *stream;
	stream = new TMemoryStream();
	DM->MEMOLOGMemo->SaveToStream(stream);
	stream->Position = 0;
	FMain->TreeViewLOG->LoadFromStream(stream);
	delete stream;
}

//---------------------------------------------------------------------------
// DBParam
//---------------------------------------------------------------------------
UnicodeString __fastcall TDM::GetDBParam(UnicodeString param) {
	if (Connect->Connected) {
		if ( !PARAM->Active )PARAM->Open();
		if ( PARAM->Locate("NAME",param) )
			return PARAMValue->Value;
	}

	// return default value
	if ( param == "DBVersion"            ) return "0.0";
	if ( param == "Unlock"               ) return "15";
	if ( param == "LockItemZero"         ) return "true";
	if ( param == "NegativeStockCompens" ) return "true";
	if ( param == "AutoClearItem"        ) return "true";
	if ( param == "CompanyName"          ) return "Enter company Name here";
	if ( param == "CompanyEmail"         ) return "Enter company Email here";
	if ( param == "CompanyTel"           ) return "Enter company Tel here";
	if ( param == "CompanyAddress1"      ) return "Enter company Address1 here";
	if ( param == "CompanyAddress2"      ) return "Enter company Address2 here";
	return "";
}

void __fastcall TDM::SetDBParam(UnicodeString param, UnicodeString value) {
	if (Connect->Connected) {
		if ( PARAM->Locate("NAME",param) ) {
			PARAM->Edit();
			PARAMValue->Value = value;
			PARAM->Post();
		} else {
			PARAM->Insert();
			PARAMNAME->Value = param;
			PARAMValue->Value = value;
			PARAM->Post();
        }
	}
}

//---------------------------------------------------------------------------
// Refresh - Update
//---------------------------------------------------------------------------
void __fastcall TDM::DisableCtrl(void) {
	TCNT->DisableControls();
	TGRP->DisableControls();
	TITM->DisableControls();
	TPUR->DisableControls();
	TPURITM->DisableControls();
	TPURPAY->DisableControls();
	TSAL->DisableControls();
	TSALITM->DisableControls();
	TSALPAY->DisableControls();
}

void __fastcall TDM::EnableCtrl(void) {
	TCNT->EnableControls();
	TGRP->EnableControls();
	TITM->EnableControls();
	TPUR->EnableControls();
	TPURITM->EnableControls();
	TPURPAY->EnableControls();
	TSAL->EnableControls();
	TSALITM->EnableControls();
	TSALPAY->EnableControls();
}

void __fastcall TDM::RefreshQ(TFDQuery *query, UnicodeString key, int id) {
	int i;
	TDataSource *ds;

	ds = query->DataSource;
	query->DataSource = NULL;
	if (id == NULL) { i = query->FieldByName(key)->AsInteger; } else { i = id; }
	query->Close();
	query->Open();
	query->Locate(key,i);
	query->DataSource = ds;
}

void __fastcall TDM::RefreshT(TFDTable *table, UnicodeString key, int id) {
	int i;
	TDataSource *ds;

	ds = table->DataSource;
	table->DataSource = NULL;
	if (id == NULL) { i = table->FieldByName(key)->AsInteger; } else { i = id; }
	table->Refresh();
	table->Locate(key,i);
	table->DataSource = ds;
}

void __fastcall TDM::RefreshCNT(int id)    { RefreshQ(TCNT,    "CNT_ID"   , id); }
void __fastcall TDM::RefreshGRP(int id)    { RefreshQ(TGRP,    "GRP_ID"   , id); }
void __fastcall TDM::RefreshITM(int id)	   { RefreshQ(TITM,    "ITM_ID"   , id); }
void __fastcall TDM::RefreshPUR(int id)    { RefreshQ(TPUR,    "INV_ID"   , id); }
void __fastcall TDM::RefreshPURITM(int id) { RefreshQ(TPURITM, "INVITM_ID", id); }
void __fastcall TDM::RefreshPURPAY(int id) { RefreshQ(TPURPAY, "INVPAY_ID", id); }
void __fastcall TDM::RefreshSAL(int id)    { RefreshQ(TSAL,    "INV_ID"   , id); }
void __fastcall TDM::RefreshSALITM(int id) { RefreshQ(TSALITM, "INVITM_ID", id); }
void __fastcall TDM::RefreshSALPAY(int id) { RefreshT(TSALPAY, "INVPAY_ID", id); }
void __fastcall TDM::RefreshLFITM(int id)  { RefreshQ(TLFITM,  "LFITM_ID" , id); }
void __fastcall TDM::RefreshMOVPUR(int id) { RefreshQ(QMOVPUR, "INVITM_ID", id); }
void __fastcall TDM::RefreshMOVSAL(int id) { RefreshQ(QMOVSAL, "INVITM_ID", id); }
void __fastcall TDM::RefreshASM(int id)    { RefreshQ(TASM,    "ASM_ID"   , id); }
void __fastcall TDM::RefreshASMITM(int id) { RefreshT(TASMITM, "ASMITM_ID", id); }

void __fastcall TDM::RefreshHST(void)
{
	UnicodeString itm, s;

	if (TITMITM_ID->Value != NULL) {
		itm = TITMITM_CP->Value + TITMITM_CODE->Value + TITMITM_INDICE->Value;
		QHSTITMPUR->ParamByName("ITMID")->Value = TITMITM_ID->Value;
		QHSTITMPUR->Open();
		QHSTITMPUR->Refresh();
		if (QHSTITMPUR->RecordCount > 0) {
			s = "Item " + itm + " found in " + QHSTITMPUR->RecordCount + " Purchase";
		} else {
			s = "Item " + itm + " not found in Purchase";
		}
		FMain->LabelITMFoundPUR->Caption = s;

		QHSTITMSAL->ParamByName("ITMID")->Value = TITMITM_ID->Value;
		QHSTITMSAL->Open();
		QHSTITMSAL->Refresh();
		if (QHSTITMSAL->RecordCount > 0) {
			s = "Item " + itm + " found in " + QHSTITMSAL->RecordCount + " Sale";
		} else {
			s = "Item " + itm + " not found in Sale";
		}
		FMain->LabelITMFoundSAL->Caption = s;

		QHSTITMLF->ParamByName("ITMID")->Value = TITMITM_ID->Value;
		QHSTITMLF->Open();
		QHSTITMLF->Refresh();
		if (QHSTITMLF->RecordCount > 0) {
			s = "Item " + itm + " have been Lost or Found";
		} else {
			s = "Item " + itm + " never Lost or Found";
		}
		FMain->LabelITMFoundLF->Caption = s;

		QHSTITMFROMASM->ParamByName("ITMID")->Value = TITMITM_ID->Value;
		QHSTITMFROMASM->Open();
		QHSTITMFROMASM->Refresh();
		if (QHSTITMFROMASM->RecordCount > 0) {
			s = "Item " + itm + " used by Assembly";
		} else {
			s = "Item " + itm + " not used by Assembly";
		}
		FMain->LabelITMFoundFROMASM->Caption = s;

		QHSTITMASM->ParamByName("ITMID")->Value = TITMITM_ID->Value;
		QHSTITMASM->Open();
		QHSTITMASM->Refresh();
		if (QHSTITMASM->RecordCount > 0) {
			s = "Item " + itm + " is an Assembly and use:";
		} else {
			s = "Item " + itm + " is not an Assembly";
		}
		FMain->LabelITMFoundASM->Caption = s;

	} else {
		FMain->LabelITMFoundPUR->Caption = "No Item selected";
		FMain->LabelITMFoundSAL->Caption = "No Item selected";
		FMain->LabelITMFoundLF->Caption = "No Item selected";
		FMain->LabelITMFoundASM->Caption = "No Item selected";
		FMain->LabelITMFoundFROMASM->Caption = "No Item selected";
	}
}
void __fastcall TDM::RefreshAll(void) {
	try
	{
		RefreshITM(NULL);
		if ( FMain->PageControl2->ActivePage == FMain->TabSheetPUR ) {
			RefreshPUR(NULL);
			RefreshPURITM(NULL);
			RefreshPURPAY(NULL);
		}

		if ( FMain->PageControl2->ActivePage == FMain->TabSheetLF ) {
			RefreshLFITM(NULL);
		}

		if ( FMain->PageControl2->ActivePage == FMain->TabSheetASM ) {
			RefreshASM(NULL);
			RefreshASMITM(NULL);
		}

		if ( FMain->PageControl2->ActivePage == FMain->TabSheetSAL ) {
			RefreshSAL(NULL);
			RefreshSALITM(NULL);
			RefreshSALPAY(NULL);
		}

		if ( FMain->PageControl2->ActivePage == FMain->TabSheetHIST ) {
			RefreshHST();
		}

		if ( FMain->PageControl2->ActivePage == FMain->TabSheetMOV ) {
			RefreshMOVPUR(NULL);
			RefreshMOVSAL(NULL);
		}

		if ( FMain->PageControl2->ActivePage == FMain->TabSheetTDL ) {
			QTODO_NEG->Refresh();
			QTODONEGERR->Refresh();
			QTODOUNKERR->Refresh();
			QTODO_UNK->Refresh();
			QTODO_SALDLV->Refresh();
			QTODO_PURDLV->Refresh();
			QTODO_SALPAY->Refresh();
			QTODO_PURPAY->Refresh();
		}
	}
	catch (...)
	{
	}
}

//---------------------------------------------------------------------------
// CNT
//---------------------------------------------------------------------------
void __fastcall TDM::DCNTDataChange(TObject *Sender, TField *Field)
{
	FMain->SetFilter("CHG CNT");
}

void __fastcall TDM::TCNTBeforeInsert(TDataSet *DataSet)
{
	FormCNT->Mode = "New";
	FormCNT->ShowModal();
	Abort();
}

void __fastcall TDM::TCNTBeforeEdit(TDataSet *DataSet)
{
	if (TCNTCNT_FIRSTNAME->Value == "* Anonym") {
		MessageDlg("Special Contact! Can't be Modify." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}
	FormCNT->Mode = "Modify";
	FormCNT->ShowModal();
	Abort();
}

void __fastcall TDM::TCNTBeforeDelete(TDataSet *DataSet)
{
	if (TCNTCNT_FIRSTNAME->Value == "* Anonym") {
		MessageDlg("Special Contact! Delete not allowed." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}
	try
	{
		WCNT->Open();
		WCNT->Locate("CNT_ID",TCNTCNT_ID->Value);
		WCNT->Delete();
		WCNT->Close();
		TCNT->Prior();
		RefreshCNT(NULL);
	}
	catch (...)
	{
		MessageDlg("Used Contact! Delete not allowed." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
	}
	Abort();
}


//---------------------------------------------------------------------------
// GRP
//---------------------------------------------------------------------------
void __fastcall TDM::DGRPDataChange(TObject *Sender, TField *Field)
{
	FMain->SetFilter("CHG GRP");
}

void __fastcall TDM::TGRPBeforeEdit(TDataSet *DataSet)
{
	if (TGRPGRP_NAME->Value == "* Not classified") {
		MessageDlg("Special Group! Can't be Deleted." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}
	FormGRP->Mode = "Modify";
	FormGRP->ShowModal();
	RefreshGRP(NULL);
	RefreshAll();
	Abort();
}

void __fastcall TDM::TGRPBeforeInsert(TDataSet *DataSet)
{
	FormGRP->Mode = "New";
	FormGRP->ShowModal();
	RefreshGRP(NULL);
	Abort();
}

void __fastcall TDM::TGRPBeforeDelete(TDataSet *DataSet)
{
	if (TGRPGRP_NAME->Value == "* Not classified") {
		MessageDlg("Special Group! Can't be Deleted." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}
	try
	{
		WGRP->Open();
		WGRP->Locate("GRP_ID",TGRPGRP_ID->Value);
		WGRP->Delete();
		WGRP->Close();
		TGRP->Prior();
		RefreshGRP(NULL);
	}
	catch (...)
	{
		MessageDlg("Used group! Delete not allowed." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
	}
	Abort();
}

//---------------------------------------------------------------------------
// ITM
//---------------------------------------------------------------------------
void __fastcall TDM::DITMDataChange(TObject *Sender, TField *Field)
{
	FMain->SetFilter("CHG ITM");
}

void __fastcall TDM::TITMBeforeEdit(TDataSet *DataSet)
{
	FormITM->Mode = "Modify";
	if ( FormITM == NULL ) {
		Application->CreateForm(__classid(TFormITM), &FormITM);
	} else {
		FormITM->ShowModal();
	}
	Abort();
}

void __fastcall TDM::TITMBeforeDelete(TDataSet *DataSet)
{
	try
	{
		WITM->Active = true;
		WITM->Locate("ITM_ID",TITMITM_ID->Value);
		WITM->Delete();
		WITM->Active = false;
		TITM->Prior();
		RefreshITM(NULL);
	}
	catch (...)
	{
		MessageDlg("Item used! Delete not allowed." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
	}
	Abort();
}

void __fastcall TDM::TryRemoveITM(int itmid)
{
	if ( FMain->CBAutoClearItem->Checked ) {
		WITMS->Open();
		if (WITMS->Locate("ITM_ID",itmid) ) {
			if ( (WITMSPUR->Value == NULL) && (WITMSSAL->Value == NULL) && (WITMSLF->Value == NULL) && (WITMSASM->Value == NULL) && (WITMSUSED->Value == NULL) ) {
				WITM->Open();
				if (DM->WITM->Locate("ITM_ID",itmid) ) {
					DM->LogAdd(" Remove Unused Item: " + WITMITM_CP->Value+WITMITM_CODE->Text+WITMITM_INDICE->Value + "  " + WITMITM_NAME->Value);
					WITM->Delete();
				}
				WITM->Close();
			}
		}
		WITMS->Close();
	}
}

//---------------------------------------------------------------------------
// INV
//---------------------------------------------------------------------------
UnicodeString __fastcall TDM::GetINVStatus(int due, int total, int itemcount)
{
	if (due == 0) {
		if (total == 0) {
			if (itemcount == 0) {
				return "Empty";
			} else {
				return "Free";
			}
		} else {
			return "Close";
		}
	} else {
		return "Open";
	}
}

//---------------------------------------------------------------------------
// PUR
//---------------------------------------------------------------------------
void __fastcall TDM::DPURDataChange(TObject *Sender, TField *Field)
{
	FMain->SetFilter("CHG PUR");
}

void __fastcall TDM::TPURBeforeDelete(TDataSet *DataSet)

{
	try
	{
		if ( FMain->Admin() || (FMain->AllowModify()) ) {
			WINV->Open();
			WINV->Locate("INV_ID",TPURINV_ID->Value);
			WINV->Delete();
			WINV->Close();
			TPUR->Prior();
			RefreshPUR(NULL);
		} else {
			MessageDlg("Purchase locked!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		}
	}
	catch (...)
	{
		MessageDlg("Purchase not empty! Delete not allowed." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
	}
	Abort();
}

void __fastcall TDM::TPURBeforeEdit(TDataSet *DataSet)
{
	if ( !FMain->Admin() && (!FMain->AllowModify()) ) {
		FormINV->Mode = "Lock";
		FormINV->Type = "Purchase";
		FormINV->ShowModal();
		Abort();
	}
	FormINV->Mode = "Modify";
	FormINV->Type = "Purchase";
	FormINV->ShowModal();
	Abort();
}

void __fastcall TDM::TPURBeforeInsert(TDataSet *DataSet)
{
	FormINV->Mode = "New";
	FormINV->Type = "Purchase";
	FormINV->ShowModal();
	Abort();
}


//---------------------------------------------------------------------------
// INV
//---------------------------------------------------------------------------

void __fastcall TDM::UpdateINV(TFDQuery *inv, TDateTime date) {
//	Mise à jour de  STATUS et LOCKDATE
//	Refresh PUR ou SAL

	int invid, invdue, invtotal, invitmamount, invitmqty, invitmcount;
	int newdue, newtotal;
	UnicodeString newstatus;
	TDateTime dtlock = TDateTime(0);
	TFDQuery *invitm;

	if (inv->Name == "TPUR") invitm = TPURITM;
	if (inv->Name == "TSAL") invitm = TSALITM;

	invid        = inv->FieldByName("INV_ID")->AsInteger;
	invdue       = inv->FieldByName("Due")->AsInteger;
	invtotal     = inv->FieldByName("Total")->AsInteger;              //   TPURTotal->Value;
	invitmamount = invitm->FieldByName("INVITM_AMOUNT")->AsInteger;   //   DM->TPURITMINVITM_AMOUNT->Value;
	invitmqty    = invitm->FieldByName("INVITM_QTY")->AsInteger;   //   DM->TPURITMINVITM_AMOUNT->Value;
	invitmcount  = invitm->RecordCount;                         //   DM->TPURITMINVITM_AMOUNT->Value;
	newdue       = invdue   - invitmqty * invitmamount;
	newtotal     = invtotal - invitmqty * invitmamount;

	newstatus = GetINVStatus(newdue, newtotal, invitmcount);
	if ( newstatus == "Close" ) dtlock = Now();

	WINV->Open();
	WINV->Locate("INV_ID",invid);
	WINV->Edit();
	if ( date != TDateTime(0) )WINVINV_DATE->AsDateTime = date;
	WINVINV_STATUS->Value        = newstatus;
	WINVINV_LOCKDATE->AsDateTime = dtlock;
	WINV->Post();
	WINV->Close();

	if (inv->Name == "TPUR") RefreshPUR(NULL);
	if (inv->Name == "TSAL") RefreshSAL(NULL);
}

//---------------------------------------------------------------------------
// PURITM
//---------------------------------------------------------------------------

void __fastcall TDM::DPURITMDataChange(TObject *Sender, TField *Field)
{
	FMain->SetFilter("CHG PURITM");
}

void __fastcall TDM::TPURITMBeforeDelete(TDataSet *DataSet)
{
	int prev, puritmid, itmid, puritmqty, itmstock;

	if ( !FMain->Admin() && (!FMain->AllowModify()) ) {
		MessageDlg("Purchase locked!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}

	puritmqty = DM->TPURITMINVITM_QTY->Value;
	itmstock  = DM->TPURITMStock->Value;

	if ( (puritmqty > itmstock) && !FMain->Admin() && (TPURITMITM_CP->Value != "V") ) {
		if ( MessageDlg("Not enougth Item in Stock to delete this entry\nForce delete?",mtInformation,  TMsgDlgButtons() << mbOK << mbCancel, 1) == mrCancel) Abort();
	}

	puritmid = TPURITMINVITM_ID->Value;
	itmid = TPURITMINVITM_ITM_ID->Value;
	if (TPURITM->RecordCount > 1) { TPURITM->Prior(); prev = TPURITMINVITM_ID->Value; } else prev = NULL;

	UpdateINV(TPUR, TDateTime(0));

	WINVITM->Open();
	WINVITM->Locate("INVITM_ID",puritmid);
	WINVITM->Delete();
	WINVITM->Close();

	UpdateSystemLFITM(itmid);
	RefreshPURITM(prev);

	TryRemoveITM(itmid);
	RefreshITM(NULL);

	Abort();
}

void __fastcall TDM::TPURITMBeforeEdit(TDataSet *DataSet)
{
	if ( !FMain->Admin() && (!FMain->AllowModify()) ) {
		MessageDlg("Purchase locked!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}
	FormINVITM->DialogType = "Purchase";
	FormINVITM->Mode = "Modify";
	FormINVITM->ShowModal();
	Abort();
}

void __fastcall TDM::TPURITMBeforeInsert(TDataSet *DataSet)
{
	if ( !FMain->Admin() && (!FMain->AllowModify()) ) {
		MessageDlg("Purchase locked!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}

	if ( TITMITM_CODE->Value == -1 ) {
		MessageDlg("Sale Unknown Item not allowed!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}
	FormINVITM->DialogType = "Purchase";
	FormINVITM->Mode = "Add";
	FormINVITM->ShowModal();
	Abort();
}

void __fastcall TDM::WPURITMInsert(int purid, int itmid, int qty, double amount)
{
	WINVITM->Open();
	WINVITM->Append();
	WINVITMINVITM_INV_ID->Value   = purid;
	WINVITMINVITM_ITM_ID->Value   = itmid;
	WINVITMINVITM_AMOUNT->Value   = amount;
	WINVITMINVITM_DELIVERY->Value = "Yes";
	WINVITMINVITM_QTY->Value      = qty;
	WINVITM->Post();
	WINVITM->Close();

	UpdateINV(TPUR, TDateTime(0));
	UpdateSystemLFITM(itmid);
	RefreshPURITM(purid);
	RefreshITM(NULL);
	RefreshPUR(NULL);
}

//---------------------------------------------------------------------------
// PURPAY
//---------------------------------------------------------------------------
void __fastcall TDM::TPURPAYBeforeDelete(TDataSet *DataSet)
{
	if ( !FMain->Admin() && (!FMain->AllowModify()) ) {
		MessageDlg("Purchase locked!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}

	WINVPAY->Active = true;
	if ( WINVPAY->Locate("INVPAY_ID",TPURPAYINVPAY_ID->Value) ) {
		WINVPAY->Delete();
		TPUR->Prior();
		RefreshPUR(NULL);
	}
	WINVPAY->Active = false;
	Abort();
}

//---------------------------------------------------------------------------
// SAL
//---------------------------------------------------------------------------
void __fastcall TDM::DSALDataChange(TObject *Sender, TField *Field)
{
	FMain->SetFilter("CHG SAL");
}

void __fastcall TDM::TSALBeforeDelete(TDataSet *DataSet)
{
	try
	{
		if ( FMain->Admin() || (FMain->AllowModify()) ) {
			WINV->Open();
			WINV->Locate("INV_ID",TSALINV_ID->Value);
			WINV->Delete();
			WINV->Close();
			TSAL->Prior();
			RefreshSAL(NULL);
		} else {
			MessageDlg("Sale locked!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		}
	}
	catch (...)
	{
		MessageDlg("Sale not empty! Delete not allowed." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
	}
	Abort();
}

void __fastcall TDM::TSALBeforeEdit(TDataSet *DataSet)
{
	if ( !FMain->Admin() && (!FMain->AllowModify()) ) {
		FormINV->Mode = "Lock";
		FormINV->Type = "Sale";
		FormINV->ShowModal();
		Abort();
	}
	FormINV->Mode = "Modify";
	FormINV->Type = "Sale";
	FormINV->ShowModal();
	Abort();
}

void __fastcall TDM::TSALBeforeInsert(TDataSet *DataSet)
{
	FormINV->Mode = "New";
	FormINV->Type = "Sale";
	FormINV->ShowModal();
	Abort();
}

//---------------------------------------------------------------------------
// SALITM
//---------------------------------------------------------------------------
void __fastcall TDM::DSALITMDataChange(TObject *Sender, TField *Field)
{
	FMain->SetFilter("CHG SALITM");
}

void __fastcall TDM::TSALITMBeforeDelete(TDataSet *DataSet)
{
	int prev, itmid, salitmid;

	if ( !FMain->Admin() && (!FMain->AllowModify()) ) {
		MessageDlg("Sale locked!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}

	salitmid = TSALITMINVITM_ID->Value;
	itmid  = TSALITMINVITM_ITM_ID->Value;
	if (TSALITM->RecordCount > 1) { TSALITM->Prior(); prev = TSALITMINVITM_ID->Value; } else prev = NULL;

	UpdateINV(TSAL, TDateTime(0));

	WINVITM->Open();
	WINVITM->Locate("INVITM_ID",salitmid);
	WINVITM->Delete();
	WINVITM->Close();

	UpdateSystemLFITM(itmid);
	RefreshSALITM(prev);

	TryRemoveITM(itmid);
	RefreshITM(NULL);

	Abort();
}

void __fastcall TDM::TSALITMBeforeEdit(TDataSet *DataSet)
{
	if ( !FMain->Admin() && (!FMain->AllowModify()) ) {
		MessageDlg("Sale locked!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}
	FormINVITM->DialogType = "Sale";
	FormINVITM->Mode = "Modify";
	FormINVITM->ShowModal();
	Abort();
}

void __fastcall TDM::TSALITMBeforeInsert(TDataSet *DataSet)
{
	if ( !FMain->Admin() && (!FMain->AllowModify()) ) {
		MessageDlg("Sale locked!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}
	FormINVITM->DialogType = "Sale";
	FormINVITM->Mode = "Add";
	FormINVITM->ShowModal();
	Abort();
}

void __fastcall TDM::WSALITMInsert(int salid, int itmid, int qty, double amount)
{
	int invitmid;

	WITM->Open();
	WITM->Locate("ITM_ID",itmid);
	if (TITMStock->Value < qty && (TITMITM_CP->Value != "V" ) && (TITMITM_CODE->Value != -1)) {
		TSALITM->Cancel();
		WITM->Close();
		MessageDlg("Not Enought Item in Stock",mtInformation,  TMsgDlgButtons() << mbOK, 0);
		return;
	}

	WINVITM->Open();
	WINVITM->Append();
	WINVITMINVITM_INV_ID->Value   = salid;
	WINVITMINVITM_ITM_ID->Value   = itmid;
	WINVITMINVITM_AMOUNT->Value   = amount;
	WINVITMINVITM_DELIVERY->Value = "Yes";
	WINVITMINVITM_QTY->Value      = qty;
	WINVITM->Post();
	if (WITMITM_CODE->Value == -1) {
		WITM->Edit();
		WITMITM_COMMENT->Value = WITMITM_COMMENT->Value + "SAL<" + TSALINV_NUMBER->Value + "> ";
		WITM->Post();
	}
	WITM->Close();
	WINVITM->Close();

	UpdateINV(TSAL, TDateTime(0));
	UpdateSystemLFITM(itmid);
	RefreshSALITM(salid);
	RefreshITM(NULL);
	RefreshPUR(NULL);
}

//---------------------------------------------------------------------------
// SALPAY
//---------------------------------------------------------------------------
void __fastcall TDM::TSALPAYBeforeDelete(TDataSet *DataSet)
{
	if ( !FMain->Admin() && (!FMain->AllowModify()) ) {
		MessageDlg("Sale locked!" ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}

	WINVPAY->Open();
	if ( WINVPAY->Locate("INVPAY_ID",TSALPAYINVPAY_ID->Value) ) {
		WINVPAY->Delete();
		TSAL->Prior();
		RefreshSAL(NULL);
	}
	WINVPAY->Close();
	Abort();
}

//---------------------------------------------------------------------------
// HST
//---------------------------------------------------------------------------
void __fastcall TDM::DHSTITMPURDataChange(TObject *Sender, TField *Field)
{
	QHSTPURITM->ParamByName("INVID")->Value = QHSTITMPURINVITM_INV_ID->Value;
	QHSTPURITM->Open();
	QHSTPURITM->Refresh();
	if (QHSTPURITM->RecordCount > 0) {
		FMain->LabelListPUR->Caption = "Item List in Purchase N° " + UnicodeString(QHSTITMPURINV_NUMBER->Value);
	} else {
		FMain->LabelListPUR->Caption = "No Purchase";
	}
}

//---------------------------------------------------------------------------
// LF
//---------------------------------------------------------------------------
void __fastcall TDM::DLFDataChange(TObject *Sender, TField *Field)
{
	FMain->SetFilter("FLT ApplyFilter");
}

void __fastcall TDM::TLFBeforeEdit(TDataSet *DataSet)
{
	if (!LFWriteAccess()) {
		TLF->Cancel();
		MessageDlg("Special Category Cannot be Modified!",mtInformation,  TMsgDlgButtons() << mbOK, 0);
		Abort();
	}
	FormLF->Mode = "Modify";
	FormLF->ShowModal();
	RefreshAll();
    TLF->Refresh();
	Abort();
}

void __fastcall TDM::TLFBeforeInsert(TDataSet *DataSet)
{
	FormLF->Mode = "New";
	FormLF->ShowModal();
	TLF->Refresh();
	Abort();
}

void __fastcall TDM::TLFBeforeDelete(TDataSet *DataSet)
{
	try
	{
		if ( LFWriteAccess() ) {
			WLF->Open();
			WLF->Locate("LF_ID",TLFLF_ID->Value);
			WLF->Delete();
			WLF->Close();
			TLF->Refresh();
		}
	}
	catch (...) {
		MessageDlg("Category not Empty! Cannot Delete.",mtInformation,  TMsgDlgButtons() << mbOK, 0);
	}
	Abort();
}

bool __fastcall TDM::LFWriteAccess(void)
{
	int LFID_SaleWithoutCode;
	int LFID_SaleNegativeItem;
	int LFID_ItemLostOrFound;
	int LFID_VirtualItem;

	bool writeaccess = true;
	if (TLFLF_ID->Value == LFID_SaleWithoutCode  ) writeaccess = false;
	if (TLFLF_ID->Value == LFID_SaleNegativeItem ) writeaccess = false;
	if (TLFLF_ID->Value == LFID_ItemLostOrFound  ) writeaccess = false;
	if (TLFLF_ID->Value == LFID_VirtualItem      ) writeaccess = false;
	return writeaccess;
}

//---------------------------------------------------------------------------
// LFITM
//---------------------------------------------------------------------------
void __fastcall TDM::DLFITMDataChange(TObject *Sender, TField *Field)
{
	FMain->SetFilter("CHG LFITM");
}

void __fastcall TDM::TLFITMBeforeDelete(TDataSet *DataSet)
{
	int itmid;

	WLFITM->Open();
	if (WLFITM->Locate("LFITM_ID",TLFITMLFITM_ID->Value)) {
		if (!LFITMWriteAccess(WLFITMLFITM_LF_ID->Value)) {
			MessageDlg("Category Reserved. Cannot write on it." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
			WLFITM->Close();
			Abort();
		}

		itmid = TLFITMLFITM_ITM_ID->Value;
		WLFITM->Delete();
		WLFITM->Close();
		UpdateSystemLFITM(itmid);
		TryRemoveITM(itmid);
		TLFITM->Prior();
		RefreshLFITM(NULL);
		RefreshITM(NULL);
	}
	Abort();
}

void __fastcall TDM::TLFITMBeforeEdit(TDataSet *DataSet)
{
	if (!LFITMWriteAccess(TLFLF_ID->Value)) {
		MessageDlg("Category Reserved. Cannot write on it." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}
	FormLFITM->Mode = "Modify";
	FormLFITM->ShowModal();
	Abort();
}

void __fastcall TDM::TLFITMBeforeInsert(TDataSet *DataSet)
{
	int lfid, itmid;

	if (!LFWriteAccess()) {
		DLF->OnDataChange = NULL;
		TLF->Locate("LF_ID",LFID_ItemLostOrFound);
		DLF->OnDataChange = DLFDataChange;
	}

	if (TLF->RecordCount == 0) {
		MessageDlg("No Category found! Create a Category First." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}

	if (TITMITM_CP->Value == "V") {
		MessageDlg("Cannot use a Virtual Item for Lost && Found." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}

	FormLFITM->Mode = "New";
	FormLFITM->ShowModal();
	Abort();
}

void __fastcall TDM::TLFITMAfterDelete(TDataSet *DataSet)
{
	DM->RefreshAll();
}

bool __fastcall TDM::LFITMWriteAccess(int lfid)
{
	bool writeaccess = true;
	if (lfid == LFID_SaleWithoutCode  ) writeaccess = false;
	if (lfid == LFID_SaleNegativeItem ) writeaccess = false;
//	if (lfid == LFID_VirtualItem      ) writeaccess = false;
	return writeaccess;
}

bool __fastcall TDM::UpdateSystemLFITM(int itmid) {
	//  Si item non VIRTUAL
	//      Si !LFID_SaleWithoutCode (Code != -1)
	//          Stock = PUR - SAL + ASM - USED + LF - LF(LFID_xxx)
	//	        LFITM existe
	//              stock = stock - LF(lfid)
	//		        si stock >= 0  Suppression LFITM
	//		        si stock < 0,  LFITMQty = -stock
	//	        LFITM n'existe pas
	//	       	    si stock < 0,  Creation LFITM   et  LFITMQty = -stock
	//	       	    si stock >= 0  on fait rien
	//  Return true si modif, false si rien fait
	//  Aucun Refresh;

	int lfid, stock;
	bool flag = false;
	UnicodeString slf;

	WITMS->Filter = "ITM_ID = " + UnicodeString(itmid);
	WITMS->Filtered = true;
	WITMS->Open();

	if ( WITMSITM_CP == "V" ) {
		// Virtual Item
		WITMS->Close();
		return flag;
	}

	stock = WITMSPUR->Value - WITMSSAL->Value + WITMSASM->Value - WITMSUSED->Value + WITMSLF->Value;

//	if ( WITMSITM_CP == "V" )            { lfid = LFID_VirtualItem;      slf = "Admin Sale Negative Item"; }
	if (WITMSITM_CODE->Value != -1)      { lfid = LFID_SaleNegativeItem; slf = "Admin Sale Negative Item"; }
	else if (WITMSITM_CODE->Value == -1) { lfid = LFID_SaleWithoutCode;  slf = "Sale Without Code"; }

	WLFITM->Filter = "LFITM_LF_ID = " + UnicodeString(lfid);
	WLFITM->Filtered = true;
	WLFITM->Open();

	if ( WLFITM->Locate("LFITM_ITM_ID",itmid) ) {
		stock -= WLFITMLFITM_QTY->Value;
		if ( stock >= 0) {
			WLFITM->Delete();
			flag = true;
		} else {
			if (WLFITMLFITM_QTY->Value != -stock) {
				WLFITM->Edit();
				WLFITMLFITM_QTY->Value = -stock;
				WLFITM->Post();
				flag = true;
			}
		}
	} else {
		if ( stock < 0) {
			WLFITM->Append();
			WLFITMLFITM_LF_ID->Value = lfid;
			WLFITMLFITM_ITM_ID->Value = itmid;
			WLFITMLFITM_QTY->Value = -stock;
			WLFITMLFITM_DATE->AsDateTime = Now();
			WLFITMLFITM_COMMENT->Value = slf;
			WLFITM->Post();
			flag = true;
		}
	}
	WITMS->Close();
	WLFITM->Close();
	WLFITM->Filter = "";
	WLFITM->Filtered = false;
	return flag;
}

void __fastcall TDM::NegativeStockCompens(void)
{
	int id, itmid, qty, lfid;

	WITMS->Open();
	if (WITMS->RecordCount > 0) {
		WLF->Open();
		WLF->Locate("LF_CATEGORY","* Sale Negative Item");
		lfid = WLFLF_ID->Value;
		WLF->Close();

		WLFITM->Filter = "LFITM_LF_ID = " + UnicodeString(lfid);
		WLFITM->Filtered = true;
		WLFITM->Open();
		WLFITM->First();
		while (!WLFITM->Eof) WLFITM->Delete();
		WLFITM->Close();
		WLFITM->Filter = "";
		WLFITM->Filtered = false;
	}

	if (FMain->CBNegativeStockCompens->Checked) {
		if (WITMS->RecordCount > 0) {
			WLF->Open();
			WLF->Locate("LF_CATEGORY","* Sale Negative Item");
			lfid = WLFLF_ID->Value;
			WLF->Close();

			WLFITM->Filter = "LFITM_LF_ID = " + UnicodeString(lfid);
			WLFITM->Filtered = true;
			WLFITM->Open();

			WITMS->First();
			while (!WITMS->Eof) {
				if (WITMSITM_CP->Value != "V") {
					if ( (qty = WITMSStock->Value) < 0 ) {
						id = WITMSITM_ID->Value;
						if (WLFITM->Locate("LFITM_ITM_ID", id)) {
							if ( (WLFITMLFITM_QTY->Value - qty) == 0) {
								WLFITM->Delete();
							}
							WLFITM->Edit();
							WLFITMLFITM_QTY->Value = -qty;
							WLFITMLFITM_DATE->AsDateTime = Now();
							WLFITM->Post();
						} else {
							WLFITM->Append();
							WLFITMLFITM_DATE->AsDateTime = Now();
							WLFITMLFITM_ITM_ID->Value = id;
							WLFITMLFITM_LF_ID->Value = lfid;
							WLFITMLFITM_QTY->Value = -qty;
							WLFITM->Post();
						}
					}
				}
				WITMS->Next();
			}
			WLFITM->Close();
			WLFITM->Filter = "";
			WLFITM->Filtered = false;
		}
	}
	WITMS->Close();
	RefreshAll();
}

//---------------------------------------------------------------------------
// ASM
//---------------------------------------------------------------------------

void __fastcall TDM::TASMBeforeDelete(TDataSet *DataSet)
{
	int asmid;

	WASM->Open();
	if ( WASM->Locate("ASM_ID",TASMASM_ID->Value)) {
		try
		{
			asmid = TASMASM_ITM_ID->Value;
			WASM->Delete();
			TryRemoveITM(asmid);
			RefreshITM(NULL);
			TASM->Prior();
			RefreshASM(NULL);
		}
		catch (...) {
		}
	}
	WASM->Close();
	Abort();
}

void __fastcall TDM::TASMBeforeInsert(TDataSet *DataSet)
{
	FormITM->Mode = "NewAssembly";
	FormITM->ShowModal();
	Abort();
}

void __fastcall TDM::TASMBeforeEdit(TDataSet *DataSet)
{
	FormITM->Mode = "ModifyAssembly";
	FormITM->ShowModal();
	Abort();
}

//---------------------------------------------------------------------------
// ASMITM
//---------------------------------------------------------------------------

void __fastcall TDM::DASMITMDataChange(TObject *Sender, TField *Field)
{
	if (TASMITM->RecordCount > 0) {
		TITM->Locate("ITM_ID",TASMITMASMITM_ITM_ID->Value);
	}
}

void __fastcall TDM::TASMITMBeforeInsert(TDataSet *DataSet)
{
	if ( TASM->RecordCount == 0 ) {
		MessageDlg("No Assembly! Create Assembly First." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}
	if ( (TITMStock->Value < 1 ) && (TITMITM_CP->Value != "V" ) ) {
		MessageDlg("Not Enought Item in Stock",mtInformation,  TMsgDlgButtons() << mbOK, 0);
		Abort();
	}
	FormASMITM->Mode = "New";
	FormASMITM->ShowModal();
	Abort();
}

void __fastcall TDM::TASMITMBeforeEdit(TDataSet *DataSet)
{
	if ( TASMITM->RecordCount == 0 ) {
		MessageDlg("No Item Assembly Selected." ,mtInformation,  TMsgDlgButtons() << mbOK , 1);
		Abort();
	}
	FormASMITM->Mode = "Modify";
	FormASMITM->ShowModal();
	Abort();
}

void __fastcall TDM::TASMITMBeforeDelete(TDataSet *DataSet)
{
	int itmid;

	itmid = TITMITM_ID->Value;
	WASMITM->Active = true;
	WASMITM->Locate("ASMITM_ID", TASMITMASMITM_ID->Value);
	WASMITM->Delete();
	WASMITM->Active = false;
	TASMITM->Refresh();
	RefreshITM(NULL);
	Abort();
}

void __fastcall TDM::WASMITMInsert(int asmid, int itmid, int qty) {
	int invitmid;

	WITM->Open();
	WITM->Locate("ITM_ID",itmid);

	WASMITM->Open();
	WASMITM->Append();
	WASMITMASMITM_ASM_ID->Value   = asmid;
	WASMITMASMITM_ITM_ID->Value   = itmid;
	WASMITMASMITM_QTY->Value      = qty;
	WASMITM->Post();
	if (WITMITM_CODE->Value == -1) {
		WITM->Edit();
		WITMITM_COMMENT->Value = WITMITM_COMMENT->Value + "Assembly Item ";
		WITM->Post();
	}
	WITM->Close();
	WASMITM->Close();

	UpdateSystemLFITM(itmid);
	RefreshASMITM(asmid);
	RefreshITM(NULL);
	RefreshASM(NULL);
}
//---------------------------------------------------------------------------
// MOVPUR
//---------------------------------------------------------------------------
void __fastcall TDM::DMOVPURDataChange(TObject *Sender, TField *Field)
{
	FMain->SetFilter("CHG MOVPUR");
}

void __fastcall TDM::DMOVSALDataChange(TObject *Sender, TField *Field)
{
	FMain->SetFilter("CHG MOVSAL");
}

//---------------------------------------------------------------------------
// TODO
//---------------------------------------------------------------------------
void __fastcall TDM::DSTODO_NEGDataChange(TObject *Sender, TField *Field)
{
	FMain->SetFilter("CHG TODONEG");
}

void __fastcall TDM::DSTODO_UNKDataChange(TObject *Sender, TField *Field)
{
	FMain->SetFilter("CHG TODOUNK");
}

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
bool __fastcall TDM::IsDigit(UnicodeString txt)
{
	try { StrToInt(txt); return true; }
	catch (...) { return false; }
}

//---------------------------------------------------------------------------




