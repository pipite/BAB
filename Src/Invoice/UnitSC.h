//---------------------------------------------------------------------------

#ifndef UnitSCH
#define UnitSCH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Imaging.jpeg.hpp>

#include "UMain.h"
//---------------------------------------------------------------------------
class TFormSC : public TForm
{
__published:	// Composants g�r�s par l'EDI
	TLabel *Label1;
	TImage *Image1;
private:	// D�clarations utilisateur
public:		// D�clarations utilisateur
	__fastcall TFormSC(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFormSC *FormSC;
//---------------------------------------------------------------------------
#endif
