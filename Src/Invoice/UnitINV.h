//---------------------------------------------------------------------------

#ifndef UnitINVH
#define UnitINVH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
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
#include <Vcl.DBCtrls.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.Mask.hpp>

#include "DMDM.h"
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TFormINV : public TForm
{
__published:	// Composants gérés par l'EDI
	TDataSource *DINV;
	TFDQuery *WCNT;
	TDataSource *DCNT;
	TLargeintField *WCNTCNT_ID;
	TWideStringField *WCNTCNT_FIRSTNAME;
	TGroupBox *GBINV;
	TMonthCalendar *MonthCalendar1;
	TDBGrid *DBGrid2;
	TButton *ButtonNewContact;
	TLabel *Label2;
	TDBEdit *DBEditComment;
	TButton *ButtonCancel;
	TButton *ButtonOK;
	TGroupBox *GBINVPAY;
	TDBGrid *GINVPAY;
	TButton *ButtonAddPayment;
	TDBNavigator *DBNavigator;
	TLabel *Label5;
	TLabel *Label1;
	TFDQuery *WINV;
	TLargeintField *WINVINV_ID;
	TWideStringField *WINVINV_TYPE;
	TLargeintField *WINVINV_NUMBER;
	TSQLTimeStampField *WINVINV_DATE;
	TLargeintField *WINVINV_CNT_ID;
	TWideStringField *WINVINV_COMMENT;
	TWideStringField *WINVINV_STATUS;
	TSQLTimeStampField *WINVINV_LOCKDATE;
	TDBText *DBText1;
	TDBText *DBText2;
	TFDTable *WINVPAY;
	TLargeintField *WINVPAYINVPAY_ID;
	TLargeintField *WINVPAYINVPAY_INV_ID;
	TSQLTimeStampField *WINVPAYINVPAY_DATE;
	TCurrencyField *WINVPAYINVPAY_AMOUNT;
	TWideStringField *WINVPAYINVPAY_COMMENT;
	TDataSource *DINVPAY;
	TButton *ButtonPayAll;
	TCheckBox *CBAllowModify;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall ButtonCancelClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall ButtonOKClick(TObject *Sender);
	void __fastcall ButtonNewContactClick(TObject *Sender);
	void __fastcall ButtonAddPaymentClick(TObject *Sender);
	void __fastcall WINVPAYBeforeDelete(TDataSet *DataSet);
	void __fastcall WINVPAYAfterDelete(TDataSet *DataSet);
	void __fastcall ButtonPayAllClick(TObject *Sender);
	void __fastcall CBAllowModifyClick(TObject *Sender);
private:	// Déclarations utilisateur
	TFDQuery *INV;
	TFDQuery *INVITM;
	int invid;
	int itemcount;
    UnicodeString invtype;

	void __fastcall EnableDisable(void);
	void __fastcall UpdateINV(void);

public:		// Déclarations utilisateur
	UnicodeString Mode;
	UnicodeString Type;

	TDateTime     invpaydate;
	UnicodeString comment;
	int           amount;
	int           due;
	int           total;

	__fastcall TFormINV(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormINV *FormINV;
//---------------------------------------------------------------------------
#endif
