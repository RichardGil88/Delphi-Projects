unit Unit16;

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
  cxButtons, cxGroupBox;

type
  TFmodcargo = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel1: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
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
 USES Unit2;
{$R *.dfm}

procedure TFmodcargo.cxButton1Click(Sender: TObject);
begin
  if (cxLookupComboBox1.Text='')or(cxLookupComboBox2.Text='')then
 ShowMessage('DEBE LLENAR TODOS LOS CAMPOS')
 else
  begin
     with DM.Qmodcargo do
      begin
       ParamByName('puser').AsString:=cxLookupComboBox1.Text;
       ParamByName('pcargo').AsString:=cxLookupComboBox2.Text;
       Execute;
       ShowMessage('CARGO MODIFICADO CON EXITO');
       cxLookupComboBox1.Clear;
       cxLookupComboBox2.Clear;
      end
  end;
end;

procedure TFmodcargo.cxButton2Click(Sender: TObject);
begin
 Close;
end;

procedure TFmodcargo.FormShow(Sender: TObject);
begin
   with DM do
     begin
       Quser1.Active:=True;
       Quser1.Execute;
       cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
       cxLookupComboBox2.Properties.ListSource.DataSet.Active:=True;
     end;
end;

end.
