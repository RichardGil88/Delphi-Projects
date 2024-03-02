unit Umodificar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons, cxLabel, cxTextEdit;

type
  TFmodificar = class(TForm)
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
  valor:string;
    { Public declarations }
  end;

var
  Fmodificar: TFmodificar;

implementation

{$R *.dfm}

procedure TFmodificar.cxButton1Click(Sender: TObject);
begin
 valor:=cxTextEdit1.Text;
 if valor <> '' then
 begin
  cxTextEdit1.clear;
  Close;
 end
 else  ShowMessage('debe insertar al menos un valor');
end;

end.
