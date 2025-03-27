//---------------------------------------------------------------------------

#ifndef UnitITMMergeH
#define UnitITMMergeH
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
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.ExtCtrls.hpp>

#include "DMDM.h"

//---------------------------------------------------------------------------
class TFormITMMerge : public TForm
{
__published:	// Composants gérés par l'EDI
	TDataSource *DataSource1;
	TDataSource *DataSource2;
	TFDTable *FDTable1;
	TDBGrid *DBGrid1;
	TDBGrid *DBGrid2;
	TFDTable *FDTable2;
	TLabel *Label1;
	TLabel *Label2;
	TLargeintField *FDTable2ITM_ID;
	TLargeintField *FDTable2ITM_GRP_ID;
	TWideStringField *FDTable2ITM_CP;
	TLargeintField *FDTable2ITM_CODE;
	TWideStringField *FDTable2ITM_INDICE;
	TWideStringField *FDTable2ITM_NAME;
	TWideStringField *FDTable2ITM_UNIT;
	TCurrencyField *FDTable2ITM_PURCHASE;
	TCurrencyField *FDTable2ITM_SALE;
	TLargeintField *FDTable2PUR;
	TLargeintField *FDTable2SAL;
	TLargeintField *FDTable2LF;
	TLargeintField *FDTable2ASM;
	TLargeintField *FDTable2USED;
	TLargeintField *FDTable2Stock;
	TWideStringField *FDTable2ITM_COMMENT;
	TLargeintField *FDTable1ITM_ID;
	TLargeintField *FDTable1ITM_GRP_ID;
	TWideStringField *FDTable1ITM_CP;
	TLargeintField *FDTable1ITM_CODE;
	TWideStringField *FDTable1ITM_INDICE;
	TWideStringField *FDTable1ITM_NAME;
	TWideStringField *FDTable1ITM_UNIT;
	TCurrencyField *FDTable1ITM_PURCHASE;
	TCurrencyField *FDTable1ITM_SALE;
	TLargeintField *FDTable1PUR;
	TLargeintField *FDTable1SAL;
	TLargeintField *FDTable1LF;
	TLargeintField *FDTable1ASM;
	TLargeintField *FDTable1USED;
	TLargeintField *FDTable1Stock;
	TWideStringField *FDTable1ITM_COMMENT;
	TPanel *Panel1;
	TButton *Button1;
	TButton *Button2;
	TMemo *Memo1;
	TMemo *Memo2;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
private:	// Déclarations utilisateur
public:		// Déclarations utilisateur
	__fastcall TFormITMMerge(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormITMMerge *FormITMMerge;
//---------------------------------------------------------------------------
#endif
