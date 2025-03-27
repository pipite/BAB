//---------------------------------------------------------------------------

#ifndef UnitDBH
#define UnitDBH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>

#include "DMDM.h"
#include <Vcl.ExtCtrls.hpp>

//---------------------------------------------------------------------------
class TFormDB : public TForm
{
__published:	// Composants gérés par l'EDI
	TGroupBox *GroupBox3;
	TLabel *Label21;
	TLabel *Label25;
	TEdit *EditServer;
	TEdit *EditInstance;
	TButton *ButtonRestore;
	TPanel *Panel1;
	TLabel *LabelInfo;
	TButton *ButtonContinue;
	TButton *ButtonEmpty;
	TGroupBox *GroupBox1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TLabel *LabelServer;
	TLabel *LabelDatabase;
	TLabel *LabelSQLServerDBVersion;
	TLabel *Label5;
	TLabel *LabelSQLEngine;
	TLabel *Label6;
	TLabel *LabelServiceStart;
	TLabel *Label15;
	TLabel *LabelIP;
	TButton *Button1;
	TLabel *Label7;
	void __fastcall EditParamChange(TObject *Sender);
	void __fastcall ButtonRestoreClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall ButtonEmptyClick(TObject *Sender);
	void __fastcall ButtonContinueClick(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
private:	// Déclarations utilisateur
	TStringList     *Param;

public:		// Déclarations utilisateur
	__fastcall TFormDB(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormDB *FormDB;
//---------------------------------------------------------------------------
#endif
