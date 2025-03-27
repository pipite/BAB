//---------------------------------------------------------------------------

#ifndef UnitCNTMergeH
#define UnitCNTMergeH
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

#include "DMDM.h"
#include <Vcl.DBGrids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>

//---------------------------------------------------------------------------
class TFormCNTMerge : public TForm
{
__published:	// Composants gérés par l'EDI
	TFDMemTable *TCNTMIX;
	TFDTable *TCNT1;
	TDataSource *DSCNT1;
	TDataSource *DSCNTMIX;
	TFDTable *TCNT2;
	TDataSource *DSCNT2;
	TLabel *Label1;
	TLabel *Label2;
	TLargeintField *TCNT1CNT_ID;
	TWideStringField *TCNT1CNT_FIRSTNAME;
	TWideStringField *TCNT1CNT_PHONE;
	TWideStringField *TCNT1CNT_ADDRESS;
	TWideStringField *TCNT1CNT_COMMENT;
	TLargeintField *TCNT2CNT_ID;
	TWideStringField *TCNT2CNT_FIRSTNAME;
	TWideStringField *TCNT2CNT_PHONE;
	TWideStringField *TCNT2CNT_ADDRESS;
	TWideStringField *TCNT2CNT_COMMENT;
	TIntegerField *TCNTMIXCNT1;
	TIntegerField *TCNTMIXCNT2;
	TDBGrid *DBGrid1;
	TDBGrid *DBGrid2;
	TMemo *Memo1;
	TMemo *Memo2;
	TPanel *Panel1;
	TButton *Button2;
	TButton *Button3;
	TSplitter *Splitter1;
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall FormActivate(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall Button3Click(TObject *Sender);
private:	// Déclarations utilisateur
public:		// Déclarations utilisateur
	__fastcall TFormCNTMerge(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormCNTMerge *FormCNTMerge;
//---------------------------------------------------------------------------
#endif
