//---------------------------------------------------------------------------

#ifndef UnitASMITMH
#define UnitASMITMH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
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
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Mask.hpp>

#include "DMDM.h"

//---------------------------------------------------------------------------
class TFormASMITM : public TForm
{
__published:	// Composants gérés par l'EDI
	TPanel *Panel1;
	TButton *ButtonDelete;
	TButton *ButtonCancel;
	TButton *ButtonOK;
	TDBEdit *DBEditEmail;
	TLabel *Label3;
	TButton *ButtonQtyPlus;
	TDBEdit *DBEditQty;
	TButton *ButtonQtyMoins;
	TLabel *Label7;
	TLabel *LabelNextStock;
	TDBText *DBText2;
	TLabel *Label12;
	TLabel *LabelQty;
	TLabel *LabelItem;
	TDBText *DBText3;
	TFDQuery *WASM;
	TDataSource *DWASM;
	TFDQuery *WASMITM;
	TDataSource *DWASMITM;
	TFDQuery *WITM;
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
	TDataSource *DWITM;
	TLargeintField *WASMITMASMITM_ID;
	TLargeintField *WASMITMASMITM_ASM_ID;
	TLargeintField *WASMITMASMITM_ITM_ID;
	TLargeintField *WASMITMASMITM_QTY;
	TWideStringField *WASMITMASMITM_COMMENT;
	TLargeintField *WASMASM_ID;
	TLargeintField *WASMASM_ITM_ID;
	TLargeintField *WASMASM_ITM_QTY;
	TDateField *WASMASM_DATE;
	TWideStringField *WASMASM_COMMENT;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall DBEditQtyChange(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall ButtonCancelClick(TObject *Sender);
	void __fastcall ButtonDeleteClick(TObject *Sender);
	void __fastcall ButtonOKClick(TObject *Sender);
	void __fastcall ButtonQtyPlusClick(TObject *Sender);
	void __fastcall ButtonQtyMoinsClick(TObject *Sender);
private:	// Déclarations utilisateur
	int InitialQty;
public:		// Déclarations utilisateur
	UnicodeString Mode;

	__fastcall TFormASMITM(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormASMITM *FormASMITM;
//---------------------------------------------------------------------------
#endif
