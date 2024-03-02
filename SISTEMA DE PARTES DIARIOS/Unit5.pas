unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxGraphics, cxMaskEdit, cxTextEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLabel, StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxGroupBox,Unit2,
  DB, MemDS, DBAccess, Uni, cxLookAndFeels;

type
  TFmodpass = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel4: TcxLabel;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmodpass: TFmodpass;

implementation
uses Unit3;
{$R *.dfm}

procedure TFmodpass.cxButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFmodpass.cxButton1Click(Sender: TObject);
begin
 if (cxLookupComboBox1.Text='')or(cxMaskEdit1.Text='')then
 ShowMessage('DEBE LLENAR TODOS LOS CAMPOS')
 else
  begin
     with DM.Qmodpass do
      begin

       ParamByName('puser').AsString:=cxLookupComboBox1.Text;
       ParamByName('pnewpass').AsString:=('12345'+cxMaskEdit1.Text);
       Execute;
       ShowMessage('CONTRASEÑA MODIFICADA CON EXITO');
       cxMaskEdit1.Clear;
      end
  end;
end;

procedure TFmodpass.FormShow(Sender: TObject);
begin
 with DM do
     begin
       Quser1.Active:=True;
       //Quser1.ParamByName('Puser').AsString:=flogin.USUARIO;
       Quser1.Execute;
       cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
     end;
end;

end.
