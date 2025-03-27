//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UnitRMAN.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFormRMAN *FormRMAN;
//---------------------------------------------------------------------------
__fastcall TFormRMAN::TFormRMAN(TComponent* Owner)
	: TForm(Owner)
{
}

void __fastcall TFormRMAN::FormShow(TObject *Sender)
{
	CS = new TStringList();
	DM->DWITM->DataSet = NULL;
	IsConnected = false;

	AutoImportMinimal->Enabled   = false;
	ButtonAutoImportALL->Enabled = false;

	FolderSelectDialog->DefaultFolder = FMain->ConfPath + "import";

	ButtonTryOtExit->Caption == "Select RMAN folder.";
	ButtonTryOtExitClick(NULL);

	ButtonImportContact->Enabled      = false;
	ButtonImportGroup->Enabled        = false;
	ButtonImportItem->Enabled         = false;
	ButtonImportPurchaseSale->Enabled = false;
}

void __fastcall TFormRMAN::FormClose(TObject *Sender, TCloseAction &Action)
{
	DM->DWITM->DataSet = DM->WITM;
	ADOConnect->Close();
	delete CS;
}

void __fastcall TFormRMAN::ButtonTryOtExitClick(TObject *Sender)
{
	int i;

	if ( (ButtonTryOtExit->Caption == "Exit") ) {
		Close();
	}

	if ( (ButtonTryOtExit->Caption == "No Available DBF Driver found. Exit") ) {
		ButtonTryOtExit->Caption = "Exit";
		return;
	}

	if ( ButtonTryOtExit->Caption == "Select RMAN folder." ) {
		if ( FolderSelectDialog->Execute() ) {
			RMANPath = FolderSelectDialog->FileName;
			CS->Clear();
			CS->Add("Provider=VFPOLEDB.1;Data Source=" + RMANPath + ";Mode=ReadWrite|Share Deny None;User ID="";Mask Password=False;Cache Authentication=False;Encrypt Password=False;Collating Sequence=MACHINE;DSN="";DELETED=True;CODEPAGE=1252;MVCOUNT=16384;ENGINEBEHAVIOR=90;TABLEVALIDATE=3;REFRESH=5;VARCHARMAPPING=False;ANSI=True;REPROCESS=5;");
			CS->Add("Provider=MSDASQL.1;Extended Properties=""DefaultDir=" + RMANPath + ";Driver={Microsoft dBase Driver (*.dbf)};DriverId=277;""");
			CS->Add("Provider=MSDASQL.1;Data Source=DBF_DATA;Extended Properties=""DSN=DBF_DATA;DefaultDir="+ RMANPath +";DriverId=533;FIL=dBase 5.0;""");
			CS->Add("Provider=Microsoft.Jet.OLEDB.4.0;dBase 5.0;DATABASE="+ RMANPath);
			CS->Add("Provider=Microsoft.Jet.OLEDB.4.0;dBase IV;DATABASE="+ RMANPath);
			CS->Add("Provider=Microsoft.ACE.OLEDB.12.0;Data Source="+ RMANPath +";Extended Properties=dBASE IV;");
			CS->Add("Provider=Microsoft.Jet.OLEDB.4.0;Data Source="+ RMANPath +";;Extended Properties=dBASE IV;");
		}
	}

	if (!IsConnected) {
		if ( !CheckRMAN() )   {
			ButtonTryOtExit->Caption = "Select RMAN folder.";
			return;
		}
	}

	ButtonTryOtExit->Caption = "Try 6 differents Driver in Progress.";

	for (i = 0; i < CS->Count; i++) {
		if ( TryConnect(CS->Strings[i]) ) break;
	}

	if (IsConnected) {
		ButtonTryOtExit->Caption = "Exit";
		Memo1->Lines->Add( "" );
		Memo1->Lines->Add( "" );
		Memo1->Lines->Add( "                                                        Clic on    <Auto Import All>    or     <Empty Database>" );
		Memo1->Lines->Add( "                                                       " );
	} else {
		ButtonTryOtExit->Caption = "No Available DBF Driver found. Exit";
    }
	ButtonAutoImportALL->Enabled      = IsConnected;
	AutoImportMinimal->Enabled        = IsConnected;
}


bool __fastcall TFormRMAN::CheckRMAN(void)
{
	FlagRMAN = true;
	Memo1->Clear();

	if ( !DirectoryExists(RMANPath) ) {
		Memo1->Lines->Add( "Folder: " + RMANPath + " Not Found." );
		FlagRMAN = false;
	} else {
		Memo1->Lines->Add( "Folder: " + RMANPath + " Found." );
    }

	CheckFile("creditor.dbf");
	CheckFile("creditor.CDX");
	CheckFile("debtors.dbf");
	CheckFile("Debtors.CDX");
	CheckFile("sgroup.dbf");
	CheckFile("sGroup.CDX");
	CheckFile("invoice.dbf");
	CheckFile("Invoice.CDX");
	CheckFile("invtrans.DBF");
	CheckFile("invTrans.CDX");
	CheckFile("stock.dbf");
	CheckFile("stock.CDX");
	return FlagRMAN;
}

bool __fastcall TFormRMAN::CheckFile(UnicodeString file)
{
	UnicodeString sfile = RMANPath + "\\" + file;

	if (!FileExists(sfile)) {
		Memo1->Lines->Add( "  File: " + file + " Not Found." );
		FlagRMAN = false;
		return false;
	} else {
		Memo1->Lines->Add( "  File: " + file + " Found." );
		return true;
	}
}

bool __fastcall TFormRMAN::CheckStock1(void)
{
//	FlagStock1 = true;
//	Memo1->Lines->Add("");
//	if ( !FileExists(Path + "\\stock1.dbf") ) {
//		FlagStock1 = false;
//		Memo1->Lines->Add("");
//		Memo1->Lines->Add( "*** Original file stock.dbf is corrupted in RMAN ***" );
//		Memo1->Lines->Add( "Need you create stock1.dbf: " );
//		Memo1->Lines->Add( "  - Download and install DBF Viewer 2000" );
//		Memo1->Lines->Add( "  - Open file stock.dbf in " + Path);
//		Memo1->Lines->Add( "  - Save as stock1.dbf in " + Path);
//		Memo1->Lines->Add("");
//	} else {
//		Memo1->Lines->Add( "  File: " + Path + "\\stock1.dbf Found." );
//		Memo1->Lines->Add("");
//	}
//	return FlagStock1;
}

bool __fastcall TFormRMAN::TryConnect(UnicodeString cs)
{
	IsConnected = true;

	PB->Max = 7; PB->Position = 0;  PB->Refresh();
	Memo1->Lines->Add( "Try : " + cs );
	try {
		ADOConnect->ConnectionString = cs;
		ADOConnect->Open();
	} catch(...) {
		Memo1->Lines->Add( "  Driver Not Correct." );
		IsConnected = false;
		return false;
	}

	PB->Position = 1;  PB->Refresh();
	try { ACreditor->Open(); Memo1->Lines->Add("Open Table creditor  >> Success."); } catch(...) { Memo1->Lines->Add("Can't Open Table creditor"); IsConnected = false;}

	PB->Position = 2;  PB->Refresh();
	try { ADebitor->Open();  Memo1->Lines->Add("Open Table debtors   >> Success."); } catch(...) { Memo1->Lines->Add("Can't Open Table debtors"); IsConnected = false;}

	PB->Position = 3;  PB->Refresh();
	try { AGroup->Open();    Memo1->Lines->Add("Open Table sgroup    >> Success."); } catch(...) { Memo1->Lines->Add("Can't Open Table sgroup"); IsConnected = false;}

	PB->Position = 4;  PB->Refresh();
	try { AItem->Open();     Memo1->Lines->Add("Open Table stock     >> Success."); } catch(...) { Memo1->Lines->Add("Can't Open Table stock"); IsConnected = false;}

	PB->Position = 5;  PB->Refresh();
	try { APurchase->Open(); Memo1->Lines->Add("Open Table Invoice   >> Success."); } catch(...) { Memo1->Lines->Add("Can't Open Table Invoice"); IsConnected = false;}

	PB->Position = 6;  PB->Refresh();
	try { AQPurItm->Open();  Memo1->Lines->Add("Open Table invtrans  >> Success."); } catch(...) { Memo1->Lines->Add("Can't Open Table invtrans"); IsConnected = false;}

	PB->Position = 7;  PB->Refresh();

	PB->Max = 1; PB->Position = 0;  PB->Refresh();
	if (!IsConnected) ADOConnect->Close();

	return IsConnected;
}

void __fastcall TFormRMAN::Disconnect(void)
{
//	if (IsConnected) {
//		ACreditor->Close();
//		ADebitor->Close();
//		AGroup->Close();
//		AItem->Close();
//		APurchase->Close();
//		AQPurItm->Close();
//		ADOConnect->Close();
//
//		ADOConnect->ConnectionString = "";
//	}
}

void __fastcall TFormRMAN::ButtonAutoImportALLClick(TObject *Sender)
{
	DM->ClearLog();
	DM->LogAdd(" Import ALL RMAN Database.");
	ClearAll();
	FillMinimalField();
	Contact();
	Group();
	Item();
	PurchaseSale();
	ClearItemComment();
	ClearContactComment();
	DM->RefreshAll();
	RefreshAll();
	ButtonImportContact->Enabled      = false;
	ButtonImportGroup->Enabled        = false;
	ButtonImportItem->Enabled         = false;
	ButtonImportPurchaseSale->Enabled = false;
}

void __fastcall TFormRMAN::AutoImportMinimalClick(TObject *Sender)
{
	DM->ClearLog();
	DM->LogAdd(" Initialize Minimal Empty Database.");
	ClearAll();
	InitializeParam();
	FillMinimalField();
	DM->RefreshAll();
	ButtonImportContact->Enabled      = true;
	ButtonImportGroup->Enabled        = false;
	ButtonImportItem->Enabled         = false;
	ButtonImportPurchaseSale->Enabled = false;
}

void __fastcall TFormRMAN::ButtonEmptyAllClick(TObject *Sender)
{
	DM->LogAdd(" Manual Import: Erase All Database.");
	ClearAll();
	ButtonImportContact->Enabled      = false;
	ButtonImportGroup->Enabled        = false;
	ButtonImportItem->Enabled         = false;
	ButtonImportPurchaseSale->Enabled = false;
}

void __fastcall TFormRMAN::ButtonFillMinimalFieldClick(TObject *Sender)
{
	DM->LogAdd(" Manual Import: Fill Minimal Field.");
	FillMinimalField();
	ButtonImportContact->Enabled      = true;
	ButtonImportGroup->Enabled        = false;
	ButtonImportItem->Enabled         = false;
	ButtonImportPurchaseSale->Enabled = false;
}

void __fastcall TFormRMAN::ButtonImportContactClick(TObject *Sender)
{
	DM->LogAdd(" Manual Import: Contact.");
	Contact();
	ButtonImportContact->Enabled      = false;
	ButtonImportGroup->Enabled        = true;
	ButtonImportItem->Enabled         = false;
	ButtonImportPurchaseSale->Enabled = false;
}

void __fastcall TFormRMAN::ButtonImportGroupClick(TObject *Sender)
{
	DM->LogAdd(" Manual Import: Group.");
	Group();
	ButtonImportContact->Enabled      = false;
	ButtonImportGroup->Enabled        = false;
	ButtonImportItem->Enabled         = true;
	ButtonImportPurchaseSale->Enabled = false;
}

void __fastcall TFormRMAN::ButtonImportItemClick(TObject *Sender)
{
	DM->LogAdd(" Manual Import: Item.");
	Item();
	ButtonImportContact->Enabled      = false;
	ButtonImportGroup->Enabled        = false;
	ButtonImportItem->Enabled         = false;
	ButtonImportPurchaseSale->Enabled = true;
}

void __fastcall TFormRMAN::ButtonImportPurchaseSaleClick(TObject *Sender)
{
	DM->LogAdd(" Manual Import: Purchase and Sale.");
	PurchaseSale();
	ButtonImportContact->Enabled      = false;
	ButtonImportGroup->Enabled        = false;
	ButtonImportItem->Enabled         = false;
	ButtonImportPurchaseSale->Enabled = false;
}
void __fastcall TFormRMAN::ButtonClearContactCommentClick(TObject *Sender)
{
	DM->LogAdd(" Manual Import: Clear Contact Comment.");
	ClearContactComment();
}

void __fastcall TFormRMAN::ButtonPayAllInvoiceClick(TObject *Sender)
{
	PayAllInvoice();
}

//---------------------------------------------------------------------------


void __fastcall TFormRMAN::ClearAll(void)
{
	PB->Max = 10; PB->Position = 0;  PB->Refresh();
	DM->WASMITM->Open();
	DM->WINVITM->Open();
	DM->WINVPAY->Open();
	DM->WGRP->Open();
	DM->WCNT->Open();
	DM->WLF->Open();
	DM->WLFITM->Open();
	DM->WITM->Open();
	DM->WASM->Open();
	DM->WINV->Open();

	EmptyTable(DM->WASMITM); PB->Position = 1;  PB->Refresh();
	EmptyTable(DM->WASM);    PB->Position = 2;  PB->Refresh();
	EmptyTable(DM->WINVPAY); PB->Position = 3;  PB->Refresh();
	EmptyTable(DM->WINVITM); PB->Position = 4;  PB->Refresh();
	EmptyTable(DM->WINV);    PB->Position = 5;  PB->Refresh();
	EmptyTable(DM->WLFITM);  PB->Position = 6;  PB->Refresh();
	EmptyTable(DM->WLF);     PB->Position = 7;  PB->Refresh();
	EmptyTable(DM->WITM);    PB->Position = 8;  PB->Refresh();
	EmptyTable(DM->WGRP);    PB->Position = 9;  PB->Refresh();
	EmptyTable(DM->WCNT);    PB->Position = 10; PB->Refresh();

	DM->WASM->Close();
	DM->WITM->Close();
	DM->WLFITM->Close();
	DM->WLF->Close();
	DM->WINVITM->Close();
	DM->WINVPAY->Close();
	DM->WINV->Close();
	DM->WASMITM->Close();
	DM->WGRP->Close();
	DM->WCNT->Close();

	RefreshAll();
	DM->LogAdd("  Erase Full Database.");
	Memo1->Lines->Add("  Erase Full Database.");
	PB->Max = 1; PB->Position = 0;  PB->Refresh();
	FMain->CBNegativeStockCompens->Checked = False;
}

void __fastcall TFormRMAN::RefreshAll(void) {
	Memo1->Lines->Add("  Refresh Database Grid...");
	PB->Max = 13; PB->Position = 0;  PB->Refresh();
	DM->TCNT->Refresh();     DM->TCNT->FetchAll();      PB->Position = 1;  PB->Refresh();
	DM->TGRP->Refresh();     DM->TGRP->FetchAll();      PB->Position = 2;  PB->Refresh();
	DM->TITM->Refresh();     DM->TITM->FetchAll();      PB->Position = 3;  PB->Refresh();
	DM->TPURITM->Refresh();  DM->TPURITM->FetchAll();   PB->Position = 4;  PB->Refresh();
	DM->TPURPAY->Refresh();  DM->TPURPAY->FetchAll();   PB->Position = 5;  PB->Refresh();
	DM->TPUR->Refresh();     DM->TPUR->FetchAll();      PB->Position = 6;  PB->Refresh();
	DM->TSALITM->Refresh();  DM->TSALITM->FetchAll();   PB->Position = 7;  PB->Refresh();
	DM->TSALPAY->Refresh();  DM->TSALPAY->FetchAll();   PB->Position = 8;  PB->Refresh();
	DM->TSAL->Refresh();     DM->TSAL->FetchAll();      PB->Position = 9;  PB->Refresh();
	DM->TLF->Refresh();      DM->TLF->FetchAll();       PB->Position = 10;  PB->Refresh();
	DM->TLFITM->Refresh();   DM->TLFITM->FetchAll();    PB->Position = 11;  PB->Refresh();
	DM->TASM->Refresh();     DM->TASM->FetchAll();      PB->Position = 12;  PB->Refresh();
	DM->TASMITM->Refresh();  DM->TASMITM->FetchAll();   PB->Position = 13;  PB->Refresh();
	Memo1->Lines->Add("  Refresh Database Grid Done.");
	PB->Max = 1; PB->Position = 0;  PB->Refresh();
	DM->TPUR->Last();
	DM->TSAL->Last();
	DM->TITM->First();
	DM->TCNT->First();
}

void __fastcall TFormRMAN::EmptyTable(TFDTable *t) {
	t->First();
	while (!t->IsEmpty()) t->Delete();
	Memo1->Lines->Add("  Empty Table : " + t->Name);
}

void __fastcall TFormRMAN::FillMinimalField(void) {
	DM->WLF->Open();
	DM->WLF->Append();
	DM->WLFLF_CATEGORY->Value = "* Sale Negative Item";
	DM->WLFLF_COMMENT->Value = "Auto Fill when Use Process/Clear Button";
	DM->WLF->Post();
	Memo1->Lines->Add("  Create Category : * Sale Negative Item" );

	DM->WLF->Append();
	DM->WLFLF_CATEGORY->Value = "* Sale Without Code";
	DM->WLFLF_COMMENT->Value = "Auto Fill when Sale Item Without Code";
	DM->WLF->Post();
	Memo1->Lines->Add("  Create Category : * Sale Without Code" );

	DM->WLF->Append();
	DM->WLFLF_CATEGORY->Value = "* Item Lost or Found";
	DM->WLFLF_COMMENT->Value = "Positive=Found  Negative=Lost";
	DM->WLF->Post();
	Memo1->Lines->Add("  Create Category : * Item Lost or Found" );

	DM->WLF->Close();
	DM->TLF->Refresh();

	DM->WCNT->Open();
	DM->WCNT->Append();
	DM->WCNTCNT_FIRSTNAME->Value = "* Anonym";
	DM->WCNTCNT_ADDRESS->Value = "";
	DM->WCNTCNT_PHONE->Value = "";
	DM->WCNT->Post();
	DM->WCNT->Close();
	DM->TCNT->Refresh();
	Memo1->Lines->Add("  Create Contact : * Anonym" );

	DM->WGRP->Open();
	DM->WGRP->Append();
	DM->WGRPGRP_NAME->Value = "* Not classified";
	DM->WGRP->Post();
	DM->WGRP->Close();
	DM->TGRP->Refresh();
	Memo1->Lines->Add("  Create Group : * Not classified" );
	DM->LogAdd("  Fill Minimal Field.");
}



void __fastcall TFormRMAN::InitializeParam(void) {
}



void __fastcall TFormRMAN::Contact(void)
{
	int i,j, cnt = 0;
	bool dbl;
	UnicodeString cnam, ccod, cadr, cpho;
	UnicodeString dnam, dcod;

	PB->Max = ACreditor->RecordCount + ADebitor->RecordCount; PB->Position = 0;  PB->Refresh();
	DM->WCNT->Open();
	ACreditor->First();
	for (i=1; i<=ACreditor->RecordCount; i++) {
		PB->Position++;  PB->Refresh();
		cnam = FMain->MajMin(ACreditor->FieldByName("NAME")->AsString);
		if ( cnam.SubString(1,1) != "~" ){
			ccod = FMain->MajMin(ACreditor->FieldByName("CODE")->AsString);
			cadr = FMain->MajMin(ACreditor->FieldByName("ADDRESS1")->AsString);
			cpho = FMain->MajMin(ACreditor->FieldByName("PHONE")->AsString);
			DM->WCNT->Append();
			DM->WCNTCNT_FIRSTNAME->Value = ccod;
			DM->WCNTCNT_ADDRESS->Value   = cadr;
			DM->WCNTCNT_COMMENT->Value   = "CRE " + ccod + " - " + cnam;
			DM->WCNTCNT_PHONE->Value     = cpho;
			DM->WCNT->Post();
			cnt++;
		}
		ACreditor->Next();
	}

	ADebitor->First();
	for (i=1; i<=ADebitor->RecordCount; i++) {
		PB->Position++;  PB->Refresh();
		DM->WCNT->Append();
		// Verifie les doublons
		ACreditor->First();
		dbl = false;
		dcod = FMain->MajMin(ADebitor->FieldByName("CODE")->AsString.SubString(1,20));
		dnam = FMain->MajMin(ADebitor->FieldByName("NAME")->AsString.SubString(1,20));
		for (j=1; j<=ACreditor->RecordCount; j++) {
			ccod = FMain->MajMin(ACreditor->FieldByName("CODE")->AsString.SubString(1,20));
			cnam = FMain->MajMin(ACreditor->FieldByName("NAME")->AsString.SubString(1,20));
			if ( (ccod == dcod) && (cnam == dnam) ) { dbl = true; break; }
			ACreditor->Next();
		}

		if (!dbl) {
			if ( dcod.SubString(1,1) != "~" ){
				DM->WCNTCNT_FIRSTNAME->Value = dcod;
				DM->WCNTCNT_ADDRESS->Value = FMain->MajMin(ADebitor->FieldByName("ADDRESS1")->AsString);
				DM->WCNTCNT_PHONE->Value = ADebitor->FieldByName("PHONE")->AsString;
				DM->WCNTCNT_COMMENT->Value = "DEB " + dcod + " - " + dnam;
				DM->WCNT->Post();
				cnt++;
			}
		}
		ADebitor->Next();
	}
	DM->WCNT->Close();
	DM->TCNT->Refresh();
	DM->LogAdd("  Import " + UnicodeString(cnt) + " Contacts.");
	Memo1->Lines->Add("  Add " + UnicodeString(cnt) + " Contacts" );
	PB->Max = 1; PB->Position = 0;  PB->Refresh();
}

void __fastcall TFormRMAN::Group(void)
{
	int i, cnt = 0;
	UnicodeString gnam;

	Memo1->Lines->Add("Import Group..." );
	DM->LogAdd("  Import Groups...");
	DM->WGRP->Open();
	AGroup->First();
	PB->Max = AGroup->RecordCount; PB->Position = 0;  PB->Refresh();
	for (i=1; i<=AGroup->RecordCount; i++) {
		PB->Position++;  PB->Refresh();
		gnam = Trim(AGroup->FieldByName("NAME")->AsString);
		if ( (gnam.SubString(1,5) != "Group") && (gnam.SubString(1,1) != "~") && (gnam != "") && (gnam != "OTHER") ){
			DM->WGRP->Append();
			DM->WGRPGRP_NAME->Value = FMain->MajMin(gnam);
			DM->WGRP->Post();
			cnt++;
		}
		AGroup->Next();
	}
	DM->WGRP->Close();
	DM->TGRP->Refresh();
	DM->LogAdd("  Import " + UnicodeString(cnt) + " Groups.");
	Memo1->Lines->Add("Import " + UnicodeString(cnt) + " Group Done." );
	PB->Max = 1; PB->Position = 0;  PB->Refresh();
}

void __fastcall TFormRMAN::Item(void)
{
	int i, j, k, cnt = 0;
	UnicodeString code, a, b, c, newcode, ttt;
	UnicodeString desc, grp;

	Memo1->Lines->Add("Import Items...");
	DM->WITM->Open();
	DM->WGRP->Open();
	EmptyTable(DM->WITM);

	AItem->First();
	PB->Max = AItem->RecordCount; PB->Position = 0;  PB->Refresh();
	for (i=1; i<=AItem->RecordCount; i++) {
		PB->Position++;  PB->Refresh();
		// Ne traiter que les quantités != ~ et DESC rempli
		desc = AItem->FieldByName("DESC")->AsString;
		if ( (desc.SubString(1,1) != "~") && (desc.Length() > 0) ) {
			// Chercher le bon groupe
			AGroup->Locate("INTERNAL",AItem->FieldByName("GROUP")->AsInteger,TLocateOptions());
			grp = AGroup->FieldByName("NAME")->AsString;
			if (grp == "OTHER") {
				DM->WGRP->Locate("GRP_NAME","* Not classified");
			} else {
				DM->WGRP->Locate("GRP_NAME",FMain->MajMin(grp));
			}

			// Traiter les codes bizares
			code = Trim(AItem->FieldByName("PART_NO")->AsString);
			newcode = "";
			a = "";
			c = "";

			for (k = 1; k <= code.Length(); k++) {
				b = code.SubString(k,1);
				if ( (b >= '0') && (b <= '9') && (c == "") ) {
					newcode = newcode + UnicodeString(b);
				} else {
					if (newcode == "") {
						a = a + b;
					} else {
						c = c + b;
					}
				}
			}

			if (newcode == "") newcode = "0";
			DM->WITM->Append();
			if ( UpperCase(a.SubString(1,1)) == "D") DM->WITMITM_CP->Value = "D";
			if ( UpperCase(a.SubString(1,1)) == "H") DM->WITMITM_CP->Value = "H";
			if ( UpperCase(c) == "DR") DM->WITMITM_CP->Value = "D";
			if ( c.Length() == 1) DM->WITMITM_INDICE->Value = UpperCase(c);
			if ( DM->WGRPGRP_NAME->Value == "SUPPLY WORKSHOP BAB" ) DM->WITMITM_CP->Value = "W";
			if ( DM->WGRPGRP_NAME->Value == "CONSIGNMENT" ) DM->WITMITM_CP->Value = "D";
			if ( DM->WGRPGRP_NAME->Value == "MATERIAL BAB" ) DM->WITMITM_CP->Value = "I";

			DM->WITMITM_GRP_ID->Value   = DM->WGRPGRP_ID->Value;
			DM->WITMITM_CODE->Value     = newcode.ToInt();
			DM->WITMITM_NAME->Value     = FMain->MajMin(desc);
			DM->WITMITM_PURCHASE->Value = AItem->FieldByName("COST")->AsCurrency;
			DM->WITMITM_SALE->Value     = AItem->FieldByName("PRICE1")->AsCurrency;
			DM->WITMITM_COMMENT->Value  = code;
			DM->WITMITM_UNIT->Value     = "U";
			DM->WITM->Post();
			cnt++;
		}
		AItem->Next();
	}
	DM->WGRP->Close();
	DM->WITM->Close();
	DM->TITM->Refresh();
	DM->LogAdd("  Import " + UnicodeString(cnt) + " Items.");
	Memo1->Lines->Add("Import " + UnicodeString(cnt) + " Items Done." );
	PB->Max = 1; PB->Position = 0;  PB->Refresh();
}

void __fastcall TFormRMAN::PurchaseSale(void)
{
	DM->WINVPAY->Open();
	DM->WINVITM->Open();
	DM->WINV->Open();
	DM->WITM->Open();
	DM->WCNT->Open();
	DM->WGRP->Open();

	EmptyTable(DM->WINVPAY);
	EmptyTable(DM->WINVITM);
	EmptyTable(DM->WINV);
	DM->WGRP->Locate("GRP_NAME","* Not Classified");

	Invoice();

	DM->WGRP->Close();
	DM->WINVPAY->Close();
	DM->WINVITM->Close();
	DM->WINV->Close();
	DM->WITM->Close();
	DM->WCNT->Close();

	DM->WINVITM->Filtered = false;
	DM->WITM->Filtered = false;
	DM->WCNT->Filtered = false;

	DM->TPURPAY->Refresh();
	DM->TPURITM->Refresh();
	DM->TPUR->Refresh();
	DM->TSALPAY->Refresh();
	DM->TSALITM->Refresh();
	DM->TSAL->Refresh();
	DM->TITM->Refresh();

	if (FMain->CBAutoClearItem->Checked) {
		Memo1->Lines->Add(" Clear Unused Items.");
		FMain->ClearUnusedItem();
	}
}

void __fastcall TFormRMAN::Invoice(void)
{
	int i, j, k, count = 0;
	UnicodeString code, a, b, c, newcode;
	UnicodeString cnt, typ;

	APurchase->First();
	AQPurItm->First();

	Memo1->Lines->Add("Import Invoices..." );
	PB->Max = APurchase->RecordCount; PB->Position = 0;  PB->Refresh();
	for (i=1; i<=APurchase->RecordCount; i++) {
		PB->Position++;  PB->Refresh();
		typ = APurchase->FieldByName("TYPE")->AsString;
		if ( (typ == "PI") || (typ == "SI") ) {
			// Chercher le bon contact
			if (typ == "PI") {
				ACreditor->Locate("INTERNAL",APurchase->FieldByName("CLIENT")->AsInteger,TLocateOptions());
				cnt = ACreditor->FieldByName("CODE")->AsString;
			} else if (typ == "SI") {
				ADebitor->Locate("INTERNAL",APurchase->FieldByName("CLIENT")->AsInteger,TLocateOptions());
				cnt = ADebitor->FieldByName("CODE")->AsString;
			}

			DM->WCNT->Locate("CNT_FIRSTNAME",FMain->MajMin(cnt));
			if (FMain->MajMin(DM->WCNTCNT_FIRSTNAME->Value.SubString(1,20)) != FMain->MajMin(cnt)) {
				DM->WCNT->Locate("CNT_FIRSTNAME","_Error");
			}

			DM->WINV->Append();
			DM->WINVINV_NUMBER->Value = APurchase->FieldByName("NUMBER")->AsInteger;
			DM->WINVINV_DATE->AsDateTime = APurchase->FieldByName("DATE")->AsDateTime;
			DM->WINVINV_CNT_ID->Value = DM->WCNTCNT_ID->Value;
			DM->WINVINV_TYPE->Value = typ.SubString(1,1);
			DM->WINVINV_STATUS->Value = "Open";
			DM->WINV->Post();
			InvoiceItem(DM->WINVINV_NUMBER->Value);
			count++;
		}
		APurchase->Next();
	}
	DM->LogAdd("  Import " + UnicodeString(count) + typ);
	PB->Max = 1; PB->Position = 0;  PB->Refresh();
	Memo1->Lines->Add("Import " + UnicodeString(count) + " Invoices Done." );
}

void __fastcall TFormRMAN::InvoiceItem(int n) {
	AQPurItm->Filtered = false;
	AQPurItm->Filter = "(NUMBER = " + UnicodeString(n) + ") AND (TYPE = '" + DM->WINVINV_TYPE->Value + "I')";
	AQPurItm->Filtered = true;
	AQPurItm->First();
	while ( (AQPurItm->FieldByName("NUMBER")->AsInteger == n) && !AQPurItm->Eof ) {
		DM->WINVITM->Append();
		DM->WINVITMINVITM_INV_ID->Value = DM->WINVINV_ID->Value;
		DM->WINVITMINVITM_AMOUNT->Value = AQPurItm->FieldByName("AMOUNT")->AsCurrency;
		DM->WINVITMINVITM_QTY->Value = AQPurItm->FieldByName("QTY")->AsInteger;
		DM->WINVITMINVITM_ITM_ID->Value = FindItmInComment(Trim(AQPurItm->FieldByName("PART_NO")->AsString));       //////////////////////
		DM->WINVITMINVITM_DELIVERY->Value = "Yes";
		DM->WINVITM->Post();
		AQPurItm->Next();
	}
	AQPurItm->Filtered = false;
}

int __fastcall TFormRMAN::FindItmInComment(UnicodeString c) {
	int id;
	DM->WITM->Filtered = false;
	DM->WITM->Filter = "ITM_COMMENT = '" + c + "'";
	DM->WITM->Filtered = true;
	DM->WITM->First();
	if (DM->WITMITM_ID->Value == NULL) {

		ReCreateItm(c);
	}
	id =  DM->WITMITM_ID->Value;
	DM->WITM->Filtered = false;
	return id;
}

void __fastcall TFormRMAN::ReCreateItm(UnicodeString pn) {
	int i, j, k;
	UnicodeString code, a, b, c, newcode, grp;

	// Traiter les codes bizares
	code = pn;
	newcode = "";
	a = "";
	c = "";

	for (k = 1; k <= code.Length(); k++) {
		b = code.SubString(k,1);
		if ( (b >= '0') && (b <= '9') && (c == "") ) {
			newcode = newcode + UnicodeString(b);
		} else {
			if (newcode == "") {
				a = a + b;
			} else {
				c = c + b;
			}
		}
	}

	if (newcode == "") newcode = "0";
	DM->WITM->Filtered = false;
	DM->WITM->Append();
	if (UpperCase(a.SubString(1,1)) == "D") DM->WITMITM_CP->Value = "D";
	if (UpperCase(a.SubString(1,1)) == "H") DM->WITMITM_CP->Value = "H";
	if (UpperCase(c) == "DR") DM->WITMITM_INDICE->Value = "D";
	if (c.Length() == 1) DM->WITMITM_INDICE->Value = UpperCase(c);

	DM->WITMITM_CODE->Value = newcode.ToInt();
	DM->WITMITM_GRP_ID->Value   = DM->WGRPGRP_ID->Value;
	DM->WITMITM_NAME->Value = FMain->MajMin(AQPurItm->FieldByName("DETAILS")->AsString);
	DM->WITMITM_PURCHASE->Value = AQPurItm->FieldByName("AMOUNT")->AsCurrency;
	DM->WITMITM_SALE->Value = 0;
	DM->WITMITM_COMMENT->Value = pn;
	DM->WITMITM_UNIT->Value = "U";
	DM->WITM->Post();
}

void __fastcall TFormRMAN::ClearItemComment(void)
{
	Memo1->Lines->Add("Clear Item Comment." );
	DM->WITM->Open();
	DM->WITM->First();
	PB->Position = 0; PB->Max = DM->WITM->RecordCount; PB->Position = 0;  PB->Refresh();
	while (!DM->WITM->Eof) {
		PB->Position++;  PB->Refresh();
		DM->WITM->Edit();
		DM->WITMITM_COMMENT->Value = "";
		DM->WITM->Post();
		DM->WITM->Next();
	}
	DM->WITM->Close();
	DM->TITM->Refresh();
	DM->TITM->First();
	PB->Max = 1; PB->Position = 0;  PB->Refresh();
}

void __fastcall TFormRMAN::ClearContactComment(void)
{
	Memo1->Lines->Add("Clear Contacts Comment." );
	DM->WCNT->Open();
	DM->WCNT->First();
	PB->Max = DM->WCNT->RecordCount; PB->Position = 0;  PB->Refresh();
	while (!DM->WCNT->Eof) {
		PB->Position++;  PB->Refresh();
		DM->WCNT->Edit();
		DM->WCNTCNT_COMMENT->Value = "";
		DM->WCNT->Post();
		DM->WCNT->Next();
	}
	DM->WCNT->Close();
	DM->TCNT->Refresh();
	DM->TCNT->First();
	PB->Max = 1; PB->Position = 0;  PB->Refresh();
}

void __fastcall TFormRMAN::PayAllInvoice(void)
{
	int cnt = 0;

	RefreshAll();
	Memo1->Lines->Add("Pay All Invoice..." );
	DM->WINVPAY->Open();
	DM->WINV->Open();
	DM->DPUR->OnDataChange = NULL;
	DM->DSAL->OnDataChange = NULL;
	DM->TPUR->First();
	PB->Max = DM->TPUR->RecordCount + DM->TSAL->RecordCount; PB->Position = 0;  PB->Refresh();
	while (!DM->TPUR->Eof) {
		PB->Position++;  PB->Refresh();
		if (DM->TPURDue->Value != 0) {
			DM->WINVPAY->Append();
			DM->WINVPAYINVPAY_INV_ID->Value = DM->TPURINV_ID->Value;
			DM->WINVPAYINVPAY_AMOUNT->Value = DM->TPURDue->Value;
			DM->WINVPAYINVPAY_DATE->AsDateTime = Now();
			DM->WINVPAY->Post();

			DM->WINV->Locate("INV_ID",DM->TPURINV_ID->Value);
			DM->WINV->Edit();
			DM->WINVINV_LOCKDATE->AsDateTime = Now();
			DM->WINVINV_STATUS->Value = "Close";
			DM->WINV->Post();
			cnt++;
		} else {
			if (DM->TPURTotal->Value == 0) {
				DM->WINV->Locate("INV_ID",DM->TPURINV_ID->Value);
				DM->WINV->Edit();
				DM->WINVINV_STATUS->Value = "Free";
				DM->WINVINV_LOCKDATE->AsDateTime = TDateTime(0);
				DM->WINV->Post();
			}
		}
		PB->Max = DM->TPUR->RecordCount + DM->TSAL->RecordCount;
		DM->TPUR->Next();
	}

	DM->TSAL->First();
	while (!DM->TSAL->Eof) {
		PB->Position++;  PB->Refresh();
		if (DM->TSALDue->Value != 0) {
			DM->WINVPAY->Append();
			DM->WINVPAYINVPAY_INV_ID->Value = DM->TSALINV_ID->Value;
			DM->WINVPAYINVPAY_AMOUNT->Value = DM->TSALDue->Value;
			DM->WINVPAYINVPAY_DATE->AsDateTime = Now();
			DM->WINVPAY->Post();

			DM->WINV->Locate("INV_ID",DM->TSALINV_ID->Value);
			DM->WINV->Edit();
			DM->WINVINV_STATUS->Value = "Close";
			DM->WINV->Post();
			cnt ++;
		} else {
			if (DM->TSALTotal->Value == 0) {
				DM->WINV->Locate("INV_ID",DM->TSALINV_ID->Value);
				DM->WINV->Edit();
				DM->WINVINV_LOCKDATE->AsDateTime = TDateTime(0);
				DM->WINVINV_STATUS->Value = "Free";
				DM->WINV->Post();
			}
		}
		PB->Max = DM->TPUR->RecordCount + DM->TSAL->RecordCount;
		DM->TSAL->Next();
	}

	DM->DPUR->OnDataChange = DM->DPURDataChange;
	DM->DSAL->OnDataChange = DM->DSALDataChange;
	DM->WINVPAY->Close();
	DM->WINV->Close();
	Memo1->Lines->Add("  Pay Invoices Done." );
	PB->Max = 1; PB->Position = 0;  PB->Refresh();
}

//---------------------------------------------------------------------------

//---------------------------------------------------------------------------

