unit Umodcargo;

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
  dxSkinXmas2008Blue, Menus, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel, StdCtrls,
  cxButtons, cxGroupBox, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint;

type
  TFmodcargo = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    cxComboBox1: TcxComboBox;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmodcargo: TFmodcargo;

implementation
 USES UDM,UPrincipal;
{$R *.dfm}

procedure TFmodcargo.cxButton1Click(Sender: TObject);
begin
  if (cxLookupComboBox1.Text='')or(cxComboBox1.Text='')then
 ShowMessage('Debe llenar todos los campos')
 else
  begin
   with DM.Qmodcargo do
   begin
     ParamByName('puser').AsString:=cxLookupComboBox1.Text;
     ParamByName('pcargo').AsString:=cxComboBox1.Text;
     Execute;
     ShowMessage('Cargo modificado con éxito');
     cxLookupComboBox1.Clear;
     cxComboBox1.Clear;
   end
  end;
end;

procedure TFmodcargo.cxButton2Click(Sender: TObject);
begin
 Close;
end;

procedure TFmodcargo.FormShow(Sender: TObject);
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

  // cargos
  if FPrincipal.CARGO = 'Super Admin' then
  begin
    cxComboBox1.Properties.Items.Clear;
    cxComboBox1.Properties.Items.Add('Super Admin');
    cxComboBox1.Properties.Items.Add('Admin');
    cxComboBox1.Properties.Items.Add('Usuario');
  end;

  if FPrincipal.CARGO = 'Admin' then
  begin
    cxComboBox1.Properties.Items.Clear;
    cxComboBox1.Properties.Items.Add('Admin');
    cxComboBox1.Properties.Items.Add('Usuario');
  end;
end;

end.
