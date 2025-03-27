//---------------------------------------------------------------------------

#ifndef UnitITMH
#define UnitITMH

//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Mask.hpp>
#include <Data.DB.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>

#include "UMain.h"
#include "DMDM.h"
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

//---------------------------------------------------------------------------
class TFormITM : public TForm
{
__published:	// Composants gérés par l'EDI
	TGroupBox *GBNew;
	TLabel *LabelStep1;
	TLabel *LabelStep4;
	TPanel *Panel13;
	TLabel *LabelStep2;
	TPanel *Panel1;
	TButton *ButtonCancel;
	TBitBtn *BitBtnOK;
	TDBEdit *DBEditStep3;
	TLabel *LabelStep3;
	TDBEdit *DBEditStep4;
	TButton *ButtonNormal;
	TButton *ButtonDrop;
	TButton *ButtonWorkshop;
	TButton *ButtonImmo;
	TButton *Button6;
	TButton *Button7;
	TButton *Button8;
	TLabel *LabelStep5;
	TDBEdit *DBEditStep5;
	TLabel *LabelStep6;
	TDBEdit *DBEditStep6;
	TButton *ButtonVirtual;
	TLabel *LabelStep7;
	TEdit *EditStepQty;
	TDBText *DBText2;
	TDBEdit *DBEditCODE;
	TDBEdit *DBEditINDICE;
	TLabel *Label1;
	TDBEdit *DBEdit1;
	TLabel *Label2;
	TDBLookupListBox *DBLookupListBox1;
	TButton *ButtonMoins;
	TButton *ButtonPlus;
	TGroupBox *GBCategory;
	TDBGrid *DBGrid1;
	TFDQuery *WLF;
	TLargeintField *WLFLF_ID;
	TWideStringField *WLFLF_CATEGORY;
	TWideStringField *WLFLF_COMMENT;
	TDataSource *DLF;
	void __fastcall ButtonCancelClick(TObject *Sender);
	void __fastcall DBEditStep4Change(TObject *Sender);
	void __fastcall BitBtnOKClick(TObject *Sender);
	void __fastcall ButtonTypeClick(TObject *Sender);
	void __fastcall Button6Click(TObject *Sender);
	void __fastcall Button7Click(TObject *Sender);
	void __fastcall Button8Click(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall EditStepQtyChange(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall DBEditStep5Change(TObject *Sender);
	void __fastcall DBEditStep6Change(TObject *Sender);
	void __fastcall DBEditCODEChange(TObject *Sender);
	void __fastcall DBLookupListBox1Click(TObject *Sender);
	void __fastcall ButtonPlusClick(TObject *Sender);
	void __fastcall ButtonMoinsClick(TObject *Sender);
private:	// Déclarations utilisateur
	int           InitialCode;
	UnicodeString InitialFullCode;
    bool Exit;
	bool __fastcall Controle(void);
public:		// Déclarations utilisateur
    UnicodeString Mode;
	__fastcall TFormITM(TComponent* Owner);

};
//---------------------------------------------------------------------------
extern PACKAGE TFormITM *FormITM;
//---------------------------------------------------------------------------
#endif
