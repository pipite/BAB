//---------------------------------------------------------------------------

#ifndef UnitITMReplaceH
#define UnitITMReplaceH
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
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>

#include "DMDM.h"

//---------------------------------------------------------------------------
class TFormITMReplace : public TForm
{
__published:	// Composants gérés par l'EDI
	TMemo *Memo1;
	TLabel *LabelReplace;
	TMemo *Memo2;
	TPanel *Panel1;
	TButton *Button1;
	TButton *Button2;
	TFDTable *VReplaceBy;
	TLargeintField *VReplaceByITM_ID;
	TLargeintField *VReplaceByITM_GRP_ID;
	TWideStringField *VReplaceByITM_CP;
	TLargeintField *VReplaceByITM_CODE;
	TWideStringField *VReplaceByITM_INDICE;
	TWideStringField *VReplaceByITM_NAME;
	TWideStringField *VReplaceByITM_UNIT;
	TCurrencyField *VReplaceByITM_PURCHASE;
	TCurrencyField *VReplaceByITM_SALE;
	TLargeintField *VReplaceByPUR;
	TLargeintField *VReplaceBySAL;
	TLargeintField *VReplaceByLF;
	TLargeintField *VReplaceByASM;
	TLargeintField *VReplaceByUSED;
	TLargeintField *VReplaceByStock;
	TWideStringField *VReplaceByITM_COMMENT;
	TDataSource *DataSource2;
	TDBGrid *GITM2;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall GITM2DrawColumnCell(TObject *Sender, const TRect &Rect, int DataCol,
          TColumn *Column, TGridDrawState State);
	void __fastcall Button1Click(TObject *Sender);
private:	// Déclarations utilisateur
	int idtoreplace;
    UnicodeString itmtoreplace;
public:		// Déclarations utilisateur
	__fastcall TFormITMReplace(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormITMReplace *FormITMReplace;
//---------------------------------------------------------------------------
#endif
