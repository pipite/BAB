//---------------------------------------------------------------------------

#ifndef UnitLFITMH
#define UnitLFITMH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.Mask.hpp>
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
#include <Vcl.DBGrids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>

#include "DMDM.h"

//---------------------------------------------------------------------------
class TFormLFITM : public TForm
{
__published:	// Composants gérés par l'EDI
	TGroupBox *GBCategory;
	TDBGrid *DBGrid1;
	TFDQuery *WLF;
	TLargeintField *WLFLF_ID;
	TWideStringField *WLFLF_CATEGORY;
	TWideStringField *WLFLF_COMMENT;
	TDataSource *DLF;
	TPanel *Panel1;
	TLabel *LabelItem;
	TDBText *DBText3;
	TLabel *LabelQty;
	TButton *ButtonQtyMoins;
	TDBEdit *DBEditQty;
	TButton *ButtonQtyPlus;
	TDBEdit *DBEditEmail;
	TLabel *Label3;
	TButton *ButtonDelete;
	TButton *ButtonCancel;
	TButton *ButtonOK;
	TFDQuery *WLFITM;
	TDataSource *DWLFITM;
	TLargeintField *WLFITMLFITM_ID;
	TLargeintField *WLFITMLFITM_LF_ID;
	TLargeintField *WLFITMLFITM_ITM_ID;
	TLargeintField *WLFITMLFITM_QTY;
	TSQLTimeStampField *WLFITMLFITM_DATE;
	TWideStringField *WLFITMLFITM_COMMENT;
	TLabel *Label12;
	TDBText *DBTextCurrentStock;
	TLabel *Label7;
	TLabel *LabelNextStock;
	TFDQuery *WITM;
	TDataSource *DWITM;
	TLargeintField *WITMITM_ID;
	TLargeintField *WITMITM_GRP_ID;
	TWideStringField *WITMITM_CP;
	TLargeintField *WITMITM_CODE;
	TWideStringField *WITMITM_INDICE;
	TWideStringField *WITMITM_NAME;
	TWideStringField *WITMITM_UNIT;
	TCurrencyField *WITMITM_PURCHASE;
	TCurrencyField *WITMITM_SALE;
	TLargeintField *WITMPUR;
	TLargeintField *WITMSAL;
	TLargeintField *WITMLF;
	TLargeintField *WITMASM;
	TLargeintField *WITMUSED;
	TLargeintField *WITMStock;
	TWideStringField *WITMITM_COMMENT;
	void __fastcall ButtonOKClick(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall ButtonDeleteClick(TObject *Sender);
	void __fastcall ButtonCancelClick(TObject *Sender);
	void __fastcall ButtonQtyPlusClick(TObject *Sender);
	void __fastcall ButtonQtyMoinsClick(TObject *Sender);
	void __fastcall DBEditQtyChange(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// Déclarations utilisateur
	int InitialQty;

public:		// Déclarations utilisateur
	UnicodeString Mode;

	__fastcall TFormLFITM(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormLFITM *FormLFITM;
//---------------------------------------------------------------------------
#endif
