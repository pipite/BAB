//---------------------------------------------------------------------------

#ifndef UnitRMANH
#define UnitRMANH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Data.DB.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Stan.Async.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Param.hpp>

#include "DMDM.h"
#include "DMIM.h"
#include <Vcl.ComCtrls.hpp>
#include <FireDAC.Phys.hpp>
#include <FireDAC.Stan.Def.hpp>
#include <FireDAC.Stan.Pool.hpp>
#include <FireDAC.UI.Intf.hpp>
#include <FireDAC.VCLUI.Wait.hpp>
#include <FireDAC.Phys.ODBC.hpp>
#include <FireDAC.Phys.ODBCDef.hpp>
#include <FireDAC.Phys.ODBCBase.hpp>
#include <Data.Win.ADODB.hpp>
#include <Vcl.Dialogs.hpp>
//---------------------------------------------------------------------------
class TFormRMAN : public TForm
{
__published:	// Composants gérés par l'EDI
	TPanel *Panel2;
	TButton *ButtonAutoImportALL;
	TButton *ButtonImportContact;
	TButton *ButtonImportGroup;
	TButton *ButtonImportItem;
	TButton *ButtonImportPurchaseSale;
	TButton *ButtonClearItemComment;
	TButton *ButtonClearContactComment;
	TButton *AutoImportMinimal;
	TPanel *Panel1;
	TMemo *Memo1;
	TProgressBar *PB;
	TADOConnection *ADOConnect;
	TADOTable *ACreditor;
	TADOTable *AItem;
	TADOTable *ADebitor;
	TADOQuery *APurchase;
	TADOQuery *AQPurItm;
	TADOTable *AGroup;
	TButton *ButtonTryOtExit;
	TButton *ButtonPayAllInvoice;
	TFileOpenDialog *FolderSelectDialog;
	void __fastcall ButtonAutoImportALLClick(TObject *Sender);
	void __fastcall AutoImportMinimalClick(TObject *Sender);
	void __fastcall ButtonEmptyAllClick(TObject *Sender);
	void __fastcall ButtonFillMinimalFieldClick(TObject *Sender);
	void __fastcall ButtonImportContactClick(TObject *Sender);
	void __fastcall ButtonImportGroupClick(TObject *Sender);
	void __fastcall ButtonImportItemClick(TObject *Sender);
	void __fastcall ButtonImportPurchaseSaleClick(TObject *Sender);
	void __fastcall ButtonClearContactCommentClick(TObject *Sender);
	void __fastcall ButtonPayAllInvoiceClick(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall ButtonTryOtExitClick(TObject *Sender);
private:	// Déclarations utilisateur
	UnicodeString RMANPath;
	TStringList *CS;
	bool FlagRMAN;
	bool FlagStock1;

	bool __fastcall CheckRMAN(void);
	bool __fastcall CheckStock1(void);
	bool __fastcall CheckFile(UnicodeString file);

	void __fastcall EmptyTable(TFDTable *t);
	void __fastcall Invoice(void);
	void __fastcall InvoiceItem(int n);
	int __fastcall  FindItmInComment(UnicodeString c);
	void __fastcall ReCreateItm(UnicodeString pn);
    void __fastcall RefreshAll(void);

public:		// Déclarations utilisateur
	__fastcall TFormRMAN(TComponent* Owner);
    bool IsConnected;

	void __fastcall PayAllInvoice(void);
	bool __fastcall TryConnect(UnicodeString cs);
	void __fastcall Disconnect(void);
	void __fastcall ClearAll(void);
	void __fastcall FillMinimalField(void);
	void __fastcall InitializeParam(void);
	void __fastcall Contact(void);
	void __fastcall ClearItemComment(void);
	void __fastcall ClearContactComment(void);
	void __fastcall Group(void);
	void __fastcall Item(void);
	void __fastcall PurchaseSale(void);

};
//---------------------------------------------------------------------------
extern PACKAGE TFormRMAN *FormRMAN;
//---------------------------------------------------------------------------
#endif
