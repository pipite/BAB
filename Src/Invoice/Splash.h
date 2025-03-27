//---------------------------------------------------------------------------

#ifndef SplashH
#define SplashH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Imaging.jpeg.hpp>

//---------------------------------------------------------------------------
class TForm5 : public TForm
{
__published:	// Composants gérés par l'EDI
	TLabel *Label1;
	TImage *Image1;
private:	// Déclarations utilisateur
public:		// Déclarations utilisateur
	__fastcall TForm5(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm5 *Form5;
//---------------------------------------------------------------------------
#endif
