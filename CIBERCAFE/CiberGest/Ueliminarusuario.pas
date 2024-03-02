unit Ueliminarusuario;

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
  dxSkinXmas2008Blue, cxGraphics, Menus, cxLabel, StdCtrls, cxButtons,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxControls, cxContainer, cxEdit, cxGroupBox, DB,
  DBAccess, MemDS, Uni, cxLookAndFeels, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint;

type
  TFeliminarusuario = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLookupComboBox1: TcxLookupComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Feliminarusuario: TFeliminarusuario;

implementation
uses UDM,uprincipal;
{$R *.dfm}

procedure TFeliminarusuario.cxButton1Click(Sender: TObject);
begin
  if cxLookupComboBox1.Text='' then
    ShowMessage('Debe escojer un usuario')
  else
  begin
    DM.Qeliminaruser.ParamByName('Puser').AsString:=cxLookupComboBox1.Text;
    DM.Qeliminaruser.Execute;
    ShowMessage('El usuario ha sido eliminado con éxito');
  end;
end;

procedure TFeliminarusuario.cxButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFeliminarusuario.FormShow(Sender: TObject);
 begin
   // usuarios
  if FPrincipal.CARGO = 'Super Admin' then
  begin
    with DM.Qusuarios do
    begin
       sql.clear;
       sql.add('select * from usuarios where usuarios.Dpto = :Pdpto');
       ParamByName('Pdpto').AsString:=FPrincipal.DPTO;
       execute;
    end;
    cxLookupComboBox1.Properties.DataController.DataSet.Active:=true;
  end;

  if FPrincipal.CARGO = 'Admin' then
  begin
    with DM.Qusuarios do
    begin
       sql.clear;
       sql.add('select * from usuarios where usuarios.Dpto = :Pdpto and usuarios.unidad = :Punidad');
       ParamByName('Pdpto').AsString:=FPrincipal.DPTO;
       ParamByName('Punidad').AsString:=FPrincipal.UNIDAD;
       execute;
    end;
    cxLookupComboBox1.Properties.DataController.DataSet.Active:=true;
  end;
 end;

end.
