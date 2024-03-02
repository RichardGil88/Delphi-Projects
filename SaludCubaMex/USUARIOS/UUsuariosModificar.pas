unit UUsuariosModificar;

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
  dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinWhiteprint;

type
  TFUsuariosModificar = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLookupComboBox1: TcxLookupComboBox;
    cxMaskEdit1: TcxMaskEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuariosModificar: TFUsuariosModificar;

implementation

uses Ulogin, UDM1, UDMUsuarios;
{$R *.dfm}

procedure TFUsuariosModificar.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFUsuariosModificar.cxButton1Click(Sender: TObject);
begin
  try
    if (cxLookupComboBox1.Text = '') or (cxMaskEdit1.Text = '') then
      ShowMessage('USTED DEBE LLENAR TODOS LOS CAMPOS')
    else
    begin
      with FDMUsuarios.Qmodpass do
      begin

        ParamByName('puser').AsString := cxLookupComboBox1.Text;
        ParamByName('pnewpass').AsString := (cxMaskEdit1.Text);
        Execute;
        ShowMessage('CONTRASEÑA MODIFICADA CON EXITO');
        cxMaskEdit1.Clear;
        cxLookupComboBox1.Clear;
        cxLookupComboBox1.SetFocus;
      end
    end;
  except
    on E: Exception do
  end;

end;

procedure TFUsuariosModificar.FormShow(Sender: TObject);
begin
  try
    with FDMUsuarios do
    begin
      Quser1.Active := True;
      Quser1.Execute;
      cxLookupComboBox1.Properties.ListSource.DataSet.Active := True;
      cxLookupComboBox1.SetFocus;
    end;
  except
    on E: Exception do
  end;

end;

end.
