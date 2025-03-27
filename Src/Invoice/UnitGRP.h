//---------------------------------------------------------------------------

#ifndef UnitGRPH
#define UnitGRPH
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
class TFormGRP : public TForm
{
__published:	// Composants gérés par l'EDI
	TLabel *Label1;
	TLabel *Label2;
	TDBEdit *DBEditComment;
	TDBEdit *DBEditName;
	TFDQuery *WGRP;
	TDataSource *DGRP;
	TButton *ButtonCancel;
	TButton *ButtonOK;
	TLargeintField *WGRPGRP_ID;
	TWideStringField *WGRPGRP_NAME;
	TWideStringField *WGRPGRP_COMMENT;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall ButtonCancelClick(TObject *Sender);
	void __fastcall ButtonOKClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// Déclarations utilisateur
	UnicodeString OriginalName;
public:		// Déclarations utilisateur
	UnicodeString Mode;

	__fastcall TFormGRP(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormGRP *FormGRP;
//---------------------------------------------------------------------------
#endif
