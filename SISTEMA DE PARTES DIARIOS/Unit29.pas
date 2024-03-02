unit Unit29;

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
  dxSkinXmas2008Blue, cxGroupBox, Menus, StdCtrls, cxButtons, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TFcambiarestadoKM = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLookupComboBox1: TcxLookupComboBox;
    ESTADOS: TcxLabel;
    button1: TcxButton;
    button2: TcxButton;
    procedure button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FcambiarestadoKM: TFcambiarestadoKM;

implementation
 USES Unit2,Unit10;
{$R *.dfm}

procedure TFcambiarestadoKM.button1Click(Sender: TObject);
begin
 with DM.UniSQL1 do
  begin
   SQL.Clear;
   SQL.Add('update `km no permanentes 1` set `km no permanentes 1`.`ESTADO`=:Pestado');
   SQL.Add(' where `km no permanentes 1`.idkmnoperm =:Pid;');
   ParamByName('Pestado').AsString:=cxLookupComboBox1.Text;
   ParamByName('Pid').AsInteger:=Fkmnopermanentes.idkm;
   Execute;
   ShowMessage('ESTADO CAMBIADO SATISFACTORIAMENTE');
   FKMNOPERMANENTES.cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
   Close;
  end;
end;

procedure TFcambiarestadoKM.button2Click(Sender: TObject);
begin
Close;
end;

procedure TFcambiarestadoKM.FormShow(Sender: TObject);
begin
cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
end;

end.
