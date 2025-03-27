//---------------------------------------------------------------------------

#ifndef UnitCNTH
#define UnitCNTH
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
class TFormCNT : public TForm
{
__published:	// Composants gérés par l'EDI
	TDBEdit *DBEditName;
	TDBEdit *DBEditPhone;
	TDBEdit *DBEditEmail;
	TDBEdit *DBEditAddress;
	TDBEdit *DBEditComment;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TLabel *Label5;
	TButton *ButtonOK;
	TButton *ButtonCancel;
	TFDQuery *WCNT;
	TDataSource *DCNT;
	TLargeintField *WCNTCNT_ID;
	TWideStringField *WCNTCNT_FIRSTNAME;
	TWideStringField *WCNTCNT_PHONE;
	TWideStringField *WCNTCNT_EMAIL;
	TWideStringField *WCNTCNT_ADDRESS;
	TWideStringField *WCNTCNT_COMMENT;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall ButtonCancelClick(TObject *Sender);
	void __fastcall ButtonOKClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// Déclarations utilisateur
public:		// Déclarations utilisateur
	UnicodeString Mode;
    UnicodeString OriginalName;

	__fastcall TFormCNT(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormCNT *FormCNT;
//---------------------------------------------------------------------------
#endif
