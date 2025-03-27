//---------------------------------------------------------------------------

#ifndef UnitLFH
#define UnitLFH
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
#include <Vcl.Mask.hpp>

#include "DMDM.h"

//---------------------------------------------------------------------------
class TFormLF : public TForm
{
__published:	// Composants gérés par l'EDI
	TLabel *Label1;
	TLabel *Label2;
	TDBEdit *DBEditComment;
	TButton *ButtonCancel;
	TButton *ButtonOK;
	TDBEdit *DBEditName;
	TDataSource *DLF;
	TFDQuery *WLF;
	TLargeintField *WLFLF_ID;
	TWideStringField *WLFLF_CATEGORY;
	TWideStringField *WLFLF_COMMENT;
	void __fastcall ButtonCancelClick(TObject *Sender);
	void __fastcall ButtonOKClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall FormShow(TObject *Sender);
private:	// Déclarations utilisateur
	UnicodeString OriginalCategory;
public:		// Déclarations utilisateur
	UnicodeString Mode;
	__fastcall TFormLF(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormLF *FormLF;
//---------------------------------------------------------------------------
#endif
