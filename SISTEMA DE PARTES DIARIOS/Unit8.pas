unit Unit8;

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
  dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons, cxLabel, cxTextEdit, cxMemo,
  cxGroupBox;

type
  TFmotivoAE = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxMemo1: TcxMemo;
    cxLabel1: TcxLabel;
    button1: TcxButton;
    button2: TcxButton;
    procedure button2Click(Sender: TObject);
    procedure button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  var motivo,atencion:string;
    { Public declarations }
  end;

var
  FmotivoAE: TFmotivoAE;

implementation

{$R *.dfm}

procedure TFmotivoAE.button1Click(Sender: TObject);
begin
motivo:=cxMemo1.Text;
atencion:='1';
Close;
end;

procedure TFmotivoAE.button2Click(Sender: TObject);
begin
if cxMemo1.Text='' then
ShowMessage('DEBE LLENAR EL MOTIVO')
else
atencion:='0';
Close;
end;

end.
