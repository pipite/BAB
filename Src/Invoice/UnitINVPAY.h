//---------------------------------------------------------------------------

#ifndef UnitINVPAYH
#define UnitINVPAYH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.DBCtrls.hpp>
#include <Vcl.Mask.hpp>
#include <Data.DB.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.Grids.hpp>
#include <Vcl.ExtCtrls.hpp>

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

#include "DMDM.h"
#include "UnitINV.h"

//---------------------------------------------------------------------------
class TFormINVPAY : public TForm
{
__published:	// Composants gérés par l'EDI
	TMonthCalendar *MonthCalendar1;
	TButton *ButtonCancel;
	TButton *ButtonPay;
	TLabel *Label1;
	TLabel *Label3;
	TEdit *EditINVPAYAmount;
	TEdit *EditINVPAYComment;
	TPanel *Panel1;
	TButton *Button8;
	TButton *Button3;
	TButton *Button7;
	TButton *Button9;
	TButton *Button11;
	TButton *Button4;
	TButton *Button10;
	TButton *Button5;
	TButton *Button12;
	TButton *Button6;
	TButton *Button2;
	TButton *Button1;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall ButtonCancelClick(TObject *Sender);
	void __fastcall ButtonPayClick(TObject *Sender);
	void __fastcall Button9Click(TObject *Sender);
	void __fastcall ButtonNumberClick(TObject *Sender);

private:	// Déclarations utilisateur

public:		// Déclarations utilisateur

	__fastcall TFormINVPAY(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormINVPAY *FormINVPAY;
//---------------------------------------------------------------------------
#endif
