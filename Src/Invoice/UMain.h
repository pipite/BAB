//---------------------------------------------------------------------------

#ifndef UMainH
#define UMainH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <System.DateUtils.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Data.DB.hpp>
#include <Data.Win.ADODB.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.DBCtrls.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Phys.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Phys.MSAcc.hpp>
#include <FireDAC.Stan.Async.hpp>
#include <FireDAC.Stan.Def.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Param.hpp>
#include <FireDAC.Stan.Pool.hpp>
#include <FireDAC.UI.Intf.hpp>
#include <FireDAC.Comp.UI.hpp>
#include <FireDAC.VCLUI.Wait.hpp>
#include <Data.Bind.Components.hpp>
#include <Data.Bind.EngExt.hpp>
#include <System.Bindings.Outputs.hpp>
#include <System.Rtti.hpp>
#include <Vcl.Bind.DBEngExt.hpp>
#include <Vcl.Bind.Editors.hpp>
#include <FireDAC.Phys.MSSQL.hpp>
#include <Vcl.Mask.hpp>
#include <FireDAC.Phys.MSSQLDef.hpp>
#include <FireDAC.Phys.DB2.hpp>
#include <FireDAC.Phys.DB2Def.hpp>
#include <FireDAC.Phys.TDBX.hpp>
#include <FireDAC.Phys.TDBXDef.hpp>

#include "UnitAbout.h"
#include "UnitITM.h"
#include "UnitINVITM.h"
#include "UnitINVPAY.h"
#include "UnitCNTMerge.h"
#include "UnitITMMerge.h"
#include "UnitDB.h"
#include "UnitSC.h"
#include "DMDM.h"
#include <Vcl.Imaging.jpeg.hpp>
#include <Vcl.WinXCtrls.hpp>
#include <Vcl.ButtonGroup.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.Dialogs.hpp>

#include <utilcls.h>
#include <Clipbrd.hpp>

//---------------------------------------------------------------------------
class TFMain : public TForm
{
__published:	// Composants gérés par l'EDI
	TFDGUIxWaitCursor *FDGUIxWaitCursor1;
	TTimer *Timer1;
	TFontDialog *FontDialog1;
	TGroupBox *GroupBox17;
	TButton *BtnMergeContacts;
	TPanel *Panel2;
	TDBGrid *GCNT;
	TSplitter *Splitter1;
	TGroupBox *GroupBox15;
	TSplitter *Splitter11;
	TGroupBox *GroupBoxCMD;
	TPageControl *PageControl2;
	TTabSheet *TabSheetPUR;
	TSplitter *Splitter4;
	TPanel *PanelPUR;
	TCheckBox *CheckBox1;
	TPanel *Panel14;
	TDBNavigator *DBNavigator5;
	TButton *ButtonReportPUR;
	TDBGrid *GPUR;
	TPanel *PanelPURITM;
	TPanel *Panel6;
	TLabel *Label7;
	TDBNavigator *DBNavigator4;
	TButton *ButtonAddPURITM;
	TButton *ButtonNewPURITM;
	TButton *ButtonPURITMDeliveryLEND;
	TButton *ButtonPURITMDeliveryYES;
	TButton *ButtonPURITMDeliveryNO;
	TButton *ButtonNewPURITMIndice;
	TPanel *Panel8;
	TDBGrid *GPURITM;
	TTabSheet *TabSheetSAL;
	TSplitter *Splitter12;
	TPanel *PanelSAL;
	TCheckBox *CheckBox2;
	TDBGrid *GSAL;
	TPanel *Panel27;
	TDBNavigator *DBNavigator9;
	TButton *ButtonReportSAL;
	TPanel *PanelSALITM;
	TPanel *Panel30;
	TLabel *Label14;
	TDBNavigator *DBNavigator10;
	TButton *ButtonSALWithoutCode;
	TButton *Button39;
	TButton *Button40;
	TButton *Button43;
	TPanel *Panel31;
	TDBGrid *GSALITM;
	TTabSheet *TabSheetLF;
	TPanel *PanelLF;
	TTabSheet *TabSheetASM;
	TSplitter *Splitter3;
	TPanel *Panel13;
	TDBGrid *GASMITM;
	TPanel *Panel12;
	TDBNavigator *DBNavigator8;
	TPanel *V;
	TPanel *Panel15;
	TButton *ButtonASM_New;
	TDBNavigator *DBNavigator7;
	TTabSheet *TabSheetHIST;
	TPanel *PanelITMHistory;
	TSplitter *Splitter7;
	TSplitter *Splitter10;
	TPanel *Panel18;
	TPanel *Panel19;
	TLabel *LabelITMFoundSAL;
	TDBGrid *GHSTITMSAL;
	TPanel *Panel20;
	TSplitter *Splitter8;
	TPanel *Panel21;
	TLabel *LabelITMFoundPUR;
	TDBGrid *GHSTITMPUR;
	TDBGrid *GHSTPURITM;
	TPanel *Panel22;
	TLabel *LabelITMFoundLF;
	TLabel *LabelITMFoundFROMASM;
	TLabel *LabelITMFoundASM;
	TSplitter *Splitter6;
	TSplitter *Splitter9;
	TDBGrid *GHSTITMLF;
	TDBGrid *GHSTITMFROMASM;
	TDBGrid *GHSTITMASM;
	TTabSheet *TabSheetRPT;
	TTabSheet *TabSheetTDL;
	TGroupBox *GroupBox20;
	TTabSheet *TabSheetAdmin;
	TPanel *Panel39;
	TGroupBox *GroupBox18;
	TButton *ButtonBackup;
	TButton *ButtonRestore;
	TGroupBox *GroupBox8;
	TEdit *EditPassword;
	TPanel *Panel17;
	TTreeView *TreeViewLOG;
	TLabel *Label1;
	TButton *Button66;
	TButton *Button67;
	TButton *BtNewSale;
	TPanel *Panel4;
	TButton *Button3;
	TButton *Button24;
	TButton *Button25;
	TButton *Button26;
	TButton *Button27;
	TButton *Button28;
	TButton *Button30;
	TButton *Button45;
	TButton *Button46;
	TButton *Button47;
	TButton *Button48;
	TButton *Button50;
	TButton *Button51;
	TButton *Button52;
	TButton *Button53;
	TButton *Button54;
	TButton *Button55;
	TButton *Button56;
	TButton *Button57;
	TButton *Button58;
	TButton *Button59;
	TButton *Button60;
	TButton *Button61;
	TButton *Button62;
	TButton *Button63;
	TButton *Button64;
	TPanel *Panel3;
	TGroupBox *GroupBox2;
	TDBGrid *GGRP;
	TPanel *Panel16;
	TDBNavigator *DBNavigator3;
	TDBEdit *DBEdit1;
	TSplitter *Splitter2;
	TGroupBox *GroupBox14;
	TButton *ButtonITMClearFilter;
	TEdit *Edit1;
	TCheckBox *CBHideZeroStock;
	TButton *ButtonReportITM;
	TCheckBox *CBWithoutVirtual;
	TGroupBox *GroupBox7;
	TPanel *PanelITM;
	TPanel *Panel24;
	TLabel *LabelFilter;
	TDBNavigator *DBNavigator2;
	TButton *ButtonMergeItem;
	TDBGrid *GITM;
	TPanel *PanelInfo;
	TLabel *LabelInfo;
	TButton *ButtonAdminOff;
	TButton *ButtonSALReplaceITM;
	TCheckBox *CBFilterCNT;
	TTabSheet *TabSheetMOV;
	TPanel *Panel38;
	TMonthCalendar *MonthCalendar1;
	TMonthCalendar *MonthCalendar2;
	TPanel *Panel7;
	TDBGrid *GPROFIT;
	TPanel *Panel23;
	TLabel *Label29;
	TButton *ButtonReport_YY_MM;
	TButton *ButtonReport_YY_MM_INV;
	TButton *ButtonReport_DAY_INV_ITM;
	TCheckBox *CBGroup;
	TCheckBox *CBOnlyVirtual;
	TCheckBox *CBDropItem;
	TCheckBox *CBWarning;
	TCheckBox *CBItemToUpdate;
	TPanel *PanelMOV;
	TDBGrid *GMOVPUR;
	TPanel *Panel5;
	TSplitter *Splitter13;
	TDBGrid *GMOVSAL;
	TPanel *Panel25;
	TRadioButton *RBOnlySelectedItem;
	TRadioButton *RBApplyFilter;
	TRadioButton *RBNoFilter;
	TCheckBox *CBAutoBackup;
	TLabel *Label2;
	TButton *ButtonBackupPath;
	TLabel *LabelPathBackup;
	TDBGrid *GASM;
	TButton *ButtonSelectSQLServer;
	TSplitter *Splitter22;
	TPanel *Panel26;
	TDBGrid *GLFITM;
	TPanel *Panel10;
	TDBNavigator *DBNavigator6;
	TButton *ButtonLFITMAddSelectedItem;
	TButton *ButtonLFITMCreateNewItem;
	TPanel *Panel29;
	TDBGrid *GLF;
	TPanel *Panel34;
	TDBNavigator *DBNavigator12;
	TCheckBox *CBLFFilterByCategory;
	TCheckBox *CBLFApplySmartFilter;
	TLabel *Label4;
	TEdit *EditAutoSaveDays;
	TLabel *Label5;
	TSplitter *Splitter23;
	TDBGrid *GLFITMSAL;
	TSplitter *Splitter24;
	TDBGrid *GLFITMPUR;
	TButton *ButtonClearEmptyContact;
	TDBNavigator *DBNavigator13;
	TDBNavigator *DBNavigator14;
	TDBNavigator *DBNavigator15;
	TButton *ButtonCleanUpSale;
	TButton *ButtonCleanUpPurchase;
	TPanel *Panel35;
	TDBNavigator *DBNavigator1;
	TLabel *Label15;
	TLabel *Label16;
	TLabel *Label18;
	TLabel *Label21;
	TLabel *Label22;
	TPanel *Panel36;
	TLabel *LabelListPUR;
	TDBNavigator *DBNavigator16;
	TDBNavigator *DBNavigator17;
	TDBNavigator *DBNavigator18;
	TGroupBox *GroupBox23;
	TGroupBox *GroupBox9;
	TDBGrid *GTODO_NEG;
	TSplitter *Splitter5;
	TGroupBox *GroupBox11;
	TDBGrid *GTODO_UNK;
	TSplitter *Splitter21;
	TPanel *Panel1;
	TPanel *Panel37;
	TGroupBox *GroupBox22;
	TSplitter *Splitter16;
	TGroupBox *GroupBox16;
	TDBGrid *GTODO_PURPAY;
	TGroupBox *GroupBox13;
	TDBGrid *GTODO_SALPAY;
	TGroupBox *GroupBox21;
	TSplitter *Splitter19;
	TGroupBox *GroupBox12;
	TDBGrid *GTODO_PURDLV;
	TGroupBox *GroupBox10;
	TDBGrid *GTODO_SALDLV;
	TGroupBox *GroupBox4;
	TSplitter *Splitter17;
	TSplitter *Splitter18;
	TPanel *Panel28;
	TLabel *Label23;
	TLabel *Label24;
	TDBText *DBText4;
	TDBText *DBText5;
	TPanel *Panel40;
	TLabel *Label25;
	TLabel *Label26;
	TDBText *DBText6;
	TDBText *DBText7;
	TDBMemo *DBMemoTODO;
	TSpeedButton *ButtonXlsItem;
	TSpeedButton *ButtonXlsPUR;
	TSpeedButton *ButtonXlsPURITM;
	TSpeedButton *ButtonXlsSAL;
	TSpeedButton *ButtonXlsSALITM;
	TSpeedButton *ButtonXlsLFITM;
	TSpeedButton *ButtonXlsMOVITMPUR;
	TSpeedButton *ButtonXlsMOVITMSAL;
	TSpeedButton *ButtonXlsPROFIT;
	TSpeedButton *ButtonXlsTODO_NEG;
	TSpeedButton *BurronXlsTODO_UNK;
	TDBNavigator *DBNavigator19;
	TDBNavigator *DBNavigator20;
	TCheckBox *CBPURITMLink;
	TCheckBox *CBSALITMLink;
	TCheckBox *CBLFITMLink;
	TButton *ButtonQuickPayAllSAL;
	TCheckBox *CBSALLink;
	TCheckBox *CBPURLink;
	TPanel *PanelSalLock;
	TPanel *PanelPurLock;
	TButton *ButtonCreateNewItemWithoutPurchase;
	TButton *Button1;
	TGroupBox *GroupBox3;
	TDBMemo *DBMemoTextInfo;
	TGroupBox *GroupBox1;
	TButton *ButtonCleanUpAllInvoice;
	TButton *ButtonImport;
	TPanel *Panel9;
	TLabel *Label3;
	TEdit *EditCompanyName;
	TLabel *Label6;
	TEdit *EditCompanyEmail;
	TLabel *Label8;
	TEdit *EditCompanyTel;
	TLabel *Label11;
	TEdit *EditCompanyAddress1;
	TLabel *Label12;
	TEdit *EditCompanyAddress2;
	TLabel *Label13;
	TGroupBox *GroupBox19;
	TComboBox *ComboBoxStyle;
	TButton *ButtonFont;
	TPanel *Panel11;
	TButton *ButtonClearLog;
	TButton *ButtonAbout;
	TCheckBox *CBNegativeStockCompens;
	TCheckBox *CBLockItemZero;
	TCheckBox *CBAutoClearItem;
	TLabel *Label17;
	TEdit *EditUnlock;
	TFileOpenDialog *FolderSelectDialog;
	TButton *ButtonResetParam;
	void __fastcall GCNTTitleClick(TColumn *Column);
	void __fastcall GGRPTitleClick(TColumn *Column);
	void __fastcall GITMTitleClick(TColumn *Column);
	void __fastcall ButtonAddPURITMClick(TObject *Sender);
	void __fastcall ButtonASM_NewClick(TObject *Sender);
	void __fastcall ButtonASMITM_AddClick(TObject *Sender);
	void __fastcall ButtonBackupClick(TObject *Sender);
	void __fastcall ButtonRestoreClick(TObject *Sender);
	void __fastcall BtnMergeContactsClick(TObject *Sender);
	void __fastcall ButtonPURITMDeliveryClick(TObject *Sender);
	void __fastcall GPURTitleClick(TColumn *Column);
	void __fastcall Edit1Change(TObject *Sender);
	void __fastcall ButtonITMClearFilterClick(TObject *Sender);
	void __fastcall ButtonMergeItemClick(TObject *Sender);
	void __fastcall GITMDrawColumnCell(TObject *Sender, const TRect &Rect, int DataCol,
          TColumn *Column, TGridDrawState State);
	void __fastcall GPURDrawColumnCell(TObject *Sender, const TRect &Rect, int DataCol,
          TColumn *Column, TGridDrawState State);
	void __fastcall GSALDrawColumnCell(TObject *Sender, const TRect &Rect, int DataCol,
          TColumn *Column, TGridDrawState State);
	void __fastcall ButtonAddSALITMClick(TObject *Sender);
	void __fastcall ButtonSalDeliveryClick(TObject *Sender);
	void __fastcall BtNewSaleClick(TObject *Sender);
	void __fastcall CBGroupClick(TObject *Sender);
	void __fastcall CBOnlyVirtualClick(TObject *Sender);
	void __fastcall CBWarningClick(TObject *Sender);
	void __fastcall CBHideZeroStockClick(TObject *Sender);
	void __fastcall CBDropItemClick(TObject *Sender);
	void __fastcall ButtonSALWithoutCodeClick(TObject *Sender);
	void __fastcall CBItemToUpdateClick(TObject *Sender);
	void __fastcall EditPasswordChange(TObject *Sender);
	void __fastcall ButtonReportITMClick(TObject *Sender);
	void __fastcall ButtonNewPURITMIndiceClick(TObject *Sender);
	void __fastcall ButtonAlphaClick(TObject *Sender);
	void __fastcall ButtonReportSALClick(TObject *Sender);
	void __fastcall ButtonLFITMCreateNewItemClick(TObject *Sender);
	void __fastcall GPROFITTitleClick(TColumn *Column);
	void __fastcall MonthCalendar1Click(TObject *Sender);
	void __fastcall ButtonReport_DAY_INV_ITMClick(TObject *Sender);
	void __fastcall CBWithoutVirtualClick(TObject *Sender);
	void __fastcall EditParamChange(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall GCNTDblClick(TObject *Sender);
	void __fastcall GGRPDblClick(TObject *Sender);
	void __fastcall GSALITMDblClick(TObject *Sender);
	void __fastcall GSALDblClick(TObject *Sender);
	void __fastcall GITMDblClick(TObject *Sender);
	void __fastcall GSALPAYDblClick(TObject *Sender);
	void __fastcall ButtonReport_YY_MM_INVClick(TObject *Sender);
	void __fastcall ButtonReport_YY_MMClick(TObject *Sender);
	void __fastcall PageControl2Change(TObject *Sender);
	void __fastcall GPURITMDrawColumnCell(TObject *Sender, const TRect &Rect, int DataCol,
          TColumn *Column, TGridDrawState State);
	void __fastcall GSALITMDrawColumnCell(TObject *Sender, const TRect &Rect, int DataCol,
          TColumn *Column, TGridDrawState State);
	void __fastcall GPURDblClick(TObject *Sender);
	void __fastcall GPURITMDblClick(TObject *Sender);
	void __fastcall GPURPAYDblClick(TObject *Sender);
	void __fastcall GLFITMDblClick(TObject *Sender);
	void __fastcall ButtonReportPURClick(TObject *Sender);
	void __fastcall ComboBoxStyleChange(TObject *Sender);
	void __fastcall CBFilterCNTClick(TObject *Sender);
	void __fastcall GASMDblClick(TObject *Sender);
	void __fastcall GASMITMDblClick(TObject *Sender);
	void __fastcall Timer1Timer(TObject *Sender);
	void __fastcall Edit1KeyUp(TObject *Sender, WORD &Key, TShiftState Shift);
	void __fastcall GLFITMDrawColumnCell(TObject *Sender, const TRect &Rect, int DataCol,
          TColumn *Column, TGridDrawState State);
	void __fastcall ButtonAdminOffClick(TObject *Sender);
	void __fastcall ButtonClearLogClick(TObject *Sender);
	void __fastcall ButtonFontClick(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall ButtonConnectClick(TObject *Sender);
	void __fastcall GPURITMTitleClick(TColumn *Column);
	void __fastcall ButtonSALReplaceITMClick(TObject *Sender);
	void __fastcall GSALITMTitleClick(TColumn *Column);
	void __fastcall GSALTitleClick(TColumn *Column);
	void __fastcall GLFITMTitleClick(TColumn *Column);
	void __fastcall ButtonCleanUpAllInvoiceClick(TObject *Sender);
	void __fastcall GMOVPURTitleClick(TColumn *Column);
	void __fastcall GMOVPURDrawColumnCell(TObject *Sender, const TRect &Rect, int DataCol,
          TColumn *Column, TGridDrawState State);
	void __fastcall RBOnlySelectedItemClick(TObject *Sender);
	void __fastcall GMOVSALDrawColumnCell(TObject *Sender, const TRect &Rect, int DataCol,
          TColumn *Column, TGridDrawState State);
	void __fastcall GMOVSALTitleClick(TColumn *Column);
	void __fastcall RBApplyFilterClick(TObject *Sender);
	void __fastcall RBNoFilterClick(TObject *Sender);
	void __fastcall ButtonBackupPathClick(TObject *Sender);
	void __fastcall CBAutoBackupClick(TObject *Sender);
	void __fastcall ButtonSelectSQLServerClick(TObject *Sender);
	void __fastcall EditCompanyNameChange(TObject *Sender);
	void __fastcall ButtonClearEmptyContactClick(TObject *Sender);
	void __fastcall CBLFFilterByCategoryClick(TObject *Sender);
	void __fastcall CBLFApplySmartFilterClick(TObject *Sender);
	void __fastcall GLFDrawColumnCell(TObject *Sender, const TRect &Rect, int DataCol,
          TColumn *Column, TGridDrawState State);
	void __fastcall GLFITMPURDblClick(TObject *Sender);
	void __fastcall GLFITMSALDblClick(TObject *Sender);
	void __fastcall GMOVPURDblClick(TObject *Sender);
	void __fastcall GMOVSALDblClick(TObject *Sender);
	void __fastcall GLFTitleClick(TColumn *Column);
	void __fastcall EditUnlockChange(TObject *Sender);
	void __fastcall EditCompanyEmailChange(TObject *Sender);
	void __fastcall EditCompanyTelChange(TObject *Sender);
	void __fastcall EditCompanyAddress1Change(TObject *Sender);
	void __fastcall EditCompanyAddress2Change(TObject *Sender);
	void __fastcall ButtonCleanUpSaleClick(TObject *Sender);
	void __fastcall ButtonCleanUpPurchaseClick(TObject *Sender);
	void __fastcall GLFDblClick(TObject *Sender);
	void __fastcall ButtonLFITMAddSelectedItemClick(TObject *Sender);
	void __fastcall GLFITMPURDrawColumnCell(TObject *Sender, const TRect &Rect, int DataCol,
          TColumn *Column, TGridDrawState State);
	void __fastcall GLFITMSALDrawColumnCell(TObject *Sender, const TRect &Rect, int DataCol,
          TColumn *Column, TGridDrawState State);
	void __fastcall ButtonImportClick(TObject *Sender);
	void __fastcall GASMTitleClick(TColumn *Column);
	void __fastcall GLFITMPURTitleClick(TColumn *Column);
	void __fastcall GLFITMSALTitleClick(TColumn *Column);
	void __fastcall GHSTITMPURDblClick(TObject *Sender);
	void __fastcall GHSTITMSALDblClick(TObject *Sender);
	void __fastcall GHSTITMPURTitleClick(TColumn *Column);
	void __fastcall GHSTPURITMTitleClick(TColumn *Column);
	void __fastcall GHSTITMSALTitleClick(TColumn *Column);
	void __fastcall GHSTITMLFTitleClick(TColumn *Column);
	void __fastcall GHSTITMFROMASMTitleClick(TColumn *Column);
	void __fastcall GHSTITMASMTitleClick(TColumn *Column);
	void __fastcall GASMITMTitleClick(TColumn *Column);
	void __fastcall GTODO_NEGTitleClick(TColumn *Column);
	void __fastcall GTODO_UNKTitleClick(TColumn *Column);
	void __fastcall GTODO_PURPAYTitleClick(TColumn *Column);
	void __fastcall GTODO_SALPAYTitleClick(TColumn *Column);
	void __fastcall GTODO_PURDLVTitleClick(TColumn *Column);
	void __fastcall GTODO_SALDLVTitleClick(TColumn *Column);
	void __fastcall GTODO_PURPAYDblClick(TObject *Sender);
	void __fastcall GTODO_SALPAYDblClick(TObject *Sender);
	void __fastcall GTODO_PURDLVDblClick(TObject *Sender);
	void __fastcall GTODO_SALDLVDblClick(TObject *Sender);
	void __fastcall ButtonXlsItemClick(TObject *Sender);
	void __fastcall ButtonXlsPURClick(TObject *Sender);
	void __fastcall ButtonXlsPURITMClick(TObject *Sender);
	void __fastcall ButtonXlsSALClick(TObject *Sender);
	void __fastcall ButtonXlsSALITMClick(TObject *Sender);
	void __fastcall ButtonXlsLFITMClick(TObject *Sender);
	void __fastcall ButtonXlsMOVITMPURClick(TObject *Sender);
	void __fastcall ButtonXlsMOVITMSALClick(TObject *Sender);
	void __fastcall ButtonXlsPROFITClick(TObject *Sender);
	void __fastcall ButtonXlsTODO_NEGClick(TObject *Sender);
	void __fastcall BurronXlsTODO_UNKClick(TObject *Sender);
	void __fastcall CBPURITMLinkClick(TObject *Sender);
	void __fastcall CBSALITMLinkClick(TObject *Sender);
	void __fastcall CBLFITMLinkClick(TObject *Sender);
	void __fastcall CBPURLinkClick(TObject *Sender);
	void __fastcall CBSALLinkClick(TObject *Sender);
	void __fastcall ButtonNewPURITMClick(TObject *Sender);
	void __fastcall ButtonCreateNewItemWithoutPurchaseClick(TObject *Sender);
	void __fastcall ButtonQuickPayAllSALClick(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall ButtonAboutClick(TObject *Sender);
	void __fastcall CBLockItemZeroClick(TObject *Sender);
	void __fastcall CBNegativeStockCompensClick(TObject *Sender);
	void __fastcall CBAutoClearItemClick(TObject *Sender);
	void __fastcall ButtonResetParamClick(TObject *Sender);

private:	// Déclarations utilisateur

	TStringList     *Param;
	UnicodeString   StyleName;
	UnicodeString   OptionAutoBackup;
	SC_HANDLE       schSCManager;

	bool FirstLaunch;
	UnicodeString __fastcall GetIP (void);
	UnicodeString __fastcall GetParam(UnicodeString param);
	void __fastcall GridOrderBy(TDBGrid *dbgrid, UnicodeString fname);
	int  __fastcall GridTitleClick(TDBGrid * grid, TFDQuery *query, TColumn *column, UnicodeString fieldname, int oldindex);
	bool __fastcall CheckAdminMode();
	void __fastcall CheckService(void);
	bool __fastcall CheckDatabase(void);
	bool __fastcall IsServiceFound(UnicodeString servicename);
	void __fastcall GetQueryServiceStatusExErrorCode(void);
	void __fastcall GetStartServiceErrorCode(void);
	void __fastcall SetSkin(UnicodeString skin);
	void __fastcall CBOnOff(TCheckBox *Sender,bool onoff);
	void __fastcall LocateGRPByName(UnicodeString name);
    void __fastcall Backup(UnicodeString savefile);
	void __fastcall AutoPurge(void);
	void __fastcall AutoBackup(void);

public:		// Déclarations utilisateur
	TTreeNode	 *LOGRootSessionNode;

	bool          DoOnce;
	bool          DoExit;
	UnicodeString PARAMFILE;
	//UnicodeString TODOFILE;
	UnicodeString SoftwareVersion;
	UnicodeString SoftwareDBVersion;
//	UnicodeString SQLServerDBVersion;

	TColor ColorBack;
	TColor ColorBlack;
	TColor ColorValid;
	TColor ColorNormal;
	TColor ColorDisabled;
	TColor ColorWarning;
	TColor ColorError;
	TColor ColorITMFilter;
	TColor ColorCNTFilter;

	bool DatabaseFound;
	bool ServiceFound;
	bool ServiceStarted;
	bool NetworkServer;
	bool AdminMode;
	bool MasterFound;

	UnicodeString AppPath;
	UnicodeString ConfPath;
	UnicodeString Password;
	UnicodeString Server;
	UnicodeString Instance;
	UnicodeString ServiceStatus;
	UnicodeString ClientIP;
	UnicodeString ServerIP;

	TDateTime LastSalPay;

	void __fastcall SaveParam(void);
	void __fastcall SetFilter(UnicodeString action);
	void __fastcall ClearFilter(UnicodeString mode);
	bool __fastcall Admin(void);
	bool __fastcall AllowModify(void);
	UnicodeString __fastcall MajMin(UnicodeString mm);
	bool __fastcall UpdateFormCaption(void);
	int  __fastcall GetNextPURCode(void);
	int  __fastcall GetNextSALCode(void);
	int  __fastcall GetNextItemCode(void);
	void __fastcall CleanUpInvoice(int invid);
	void __fastcall XlsExportDataset(TDataSet *ds, TDBGrid *grd);
    void __fastcall ClearUnusedItem(void);

	__fastcall TFMain(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFMain *FMain;
//---------------------------------------------------------------------------
#endif
