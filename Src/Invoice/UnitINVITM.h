//---------------------------------------------------------------------------

#ifndef UnitINVITMH
#define UnitINVITMH
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
class TFormINVITM : public TForm
{
__published:	// Composants gérés par l'EDI
	TFDQuery *WINVITM;
	TDataSource *DWINVITM;
	TLargeintField *WINVITMINVITM_ID;
	TLargeintField *WINVITMINVITM_INV_ID;
	TLargeintField *WINVITMINVITM_ITM_ID;
	TCurrencyField *WINVITMINVITM_AMOUNT;
	TLargeintField *WINVITMINVITM_QTY;
	TWideStringField *WINVITMINVITM_COMMENT;
	TWideStringField *WINVITMINVITM_DELIVERY;
	TFDQuery *WITM;
	TDataSource *DWITM;
	TLargeintField *WITMITM_ID;
	TWideStringField *WITMITM_CP;
	TLargeintField *WITMITM_CODE;
	TWideStringField *WITMITM_INDICE;
	TWideStringField *WITMITM_NAME;
	TCurrencyField *WITMITM_PURCHASE;
	TCurrencyField *WITMITM_SALE;
	TLargeintField *WITMStock;
	TPanel *PanelMain;
	TLabel *LabelItem;
	TDBText *DBText3;
	TLabel *Label6;
	TDBListBox *DBListBox1;
	TDBText *DBText2;
	TLabel *Label12;
	TLabel *Label7;
	TLabel *LabelNextStock;
	TButton *ButtonQtyPlus;
	TDBEdit *DBEditQty;
	TButton *ButtonQtyMoins;
	TLabel *LabelQty;
	TLabel *Label2;
	TDBEdit *DBEditAmount;
	TLabel *LbDefaultPrice;
	TDBText *DBTextDefaultPrice;
	TLabel *LabelDiscountUnit;
	TLabel *LbDiscountUnit;
	TLabel *LbDiscountTotal;
	TLabel *LabelDiscountTotal;
	TLabel *LabelTotalPrice;
	TLabel *Label10;
	TDBEdit *DBEditEmail;
	TButton *ButtonCancel;
	TButton *ButtonOK;
	TButton *ButtonDelete;
	TLabel *Label3;
	TPanel *PanelExist;
	TButton *ButtonModifySelectedItem;
	TButton *ButtonCreateTwoSeparateLine;
	TButton *Button2;
	TLabel *LabelExist;
	TDBGrid *DBGrid1;
	TFDQuery *QINVITM;
	TDataSource *DQINVITM;
	TLargeintField *QINVITMINVITM_ID;
	TLargeintField *QINVITMINVITM_INV_ID;
	TLargeintField *QINVITMINVITM_ITM_ID;
	TLargeintField *QINVITMINVITM_QTY;
	TCurrencyField *QINVITMINVITM_AMOUNT;
	TWideStringField *QINVITMINVITM_DELIVERY;
	TLargeintField *WITMLF;
	TLargeintField *WITMPUR;
	TLargeintField *WITMSAL;
	TLargeintField *WITMASM;
	TLargeintField *WITMUSED;
	void __fastcall ButtonCancelClick(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall ButtonOKClick(TObject *Sender);
	void __fastcall DBEditCalcChange(TObject *Sender);
	void __fastcall ButtonQtyPlusClick(TObject *Sender);
	void __fastcall ButtonQtyMoinsClick(TObject *Sender);
	void __fastcall ButtonDeleteClick(TObject *Sender);
	void __fastcall ButtonModifySelectedItemClick(TObject *Sender);
	void __fastcall ButtonCreateTwoSeparateLineClick(TObject *Sender);
private:	// Déclarations utilisateur
    TFDQuery *INVITM;
	TFDQuery *INV;
	UnicodeString ITMCode;

	void __fastcall UpdateInfo(void);
	void __fastcall AddNew(void);
	void __fastcall TFormINVITM::ModifyExisting(void);

public:		// Déclarations utilisateur
	UnicodeString DialogType;
	UnicodeString Mode;
	int InitialQty;
    double Price;

	//bool Aborted;
	bool Shunt;

	__fastcall TFormINVITM(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormINVITM *FormINVITM;
//---------------------------------------------------------------------------
#endif
