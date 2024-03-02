unit Umodpass;

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
  cxLabel, StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxGroupBox,
  DB, MemDS, DBAccess, Uni, cxLookAndFeels, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint;

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
uses UDM,UPrincipal;
{$R *.dfm}

procedure TFmodpass.cxButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFmodpass.cxButton1Click(Sender: TObject);
begin
   if (cxLookupComboBox1.Text='')or(cxMaskEdit1.Text='')then
   begin
   ShowMessage('Debe llenar todos los campos');
   end
   else
   begin
     with DM do
     begin
       Qmodpass.ParamByName('puser').AsString:=cxLookupComboBox1.Text;
       Qmodpass.ParamByName('pnewpass').AsString:=(cxMaskEdit1.Text);
       Qmodpass.Execute;
       ShowMessage('Contraseña modificada con éxito');
       cxMaskEdit1.Clear;
     end
   end;
end;

procedure TFmodpass.FormShow(Sender: TObject);
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
