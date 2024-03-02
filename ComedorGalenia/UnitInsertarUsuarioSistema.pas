unit UnitInsertarUsuarioSistema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxTextEdit, cxLabel, Vcl.Menus, Vcl.StdCtrls,
  cxButtons;

type
  TFormInsertarUsuarioSistema = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxMaskEdit1: TcxMaskEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInsertarUsuarioSistema: TFormInsertarUsuarioSistema;

implementation

{$R *.dfm}
uses UnitDataModule1;

procedure TFormInsertarUsuarioSistema.cxButton1Click(Sender: TObject);
begin
  if (cxTextEdit1.Text<>'') and (cxMaskEdit1.Text<>'') and (cxLookupComboBox1.Text<>'') then
  begin
    DataModule1.QInsertarUsuarioSistema.ParamByName('Usuario').AsString:=cxTextEdit1.Text;
    DataModule1.QInsertarUsuarioSistema.ParamByName('Contraseña').AsString:=cxMaskEdit1.Text;
    DataModule1.QInsertarUsuarioSistema.ParamByName('Perfil').AsString:=cxLookupComboBox1.Text;
    DataModule1.QInsertarUsuarioSistema.Execute;

    cxTextEdit1.Clear;
    cxMaskEdit1.Clear;
    cxLookupComboBox1.Clear;
    cxTextEdit1.SetFocus;
    ShowMessage('Usuario insertado exitosamente');

  end
  else
  ShowMessage('Debe llenar todos los campos.');
end;

procedure TFormInsertarUsuarioSistema.cxButton2Click(Sender: TObject);
begin
    cxTextEdit1.Clear;
    cxMaskEdit1.Clear;
    cxLookupComboBox1.Clear;
    cxTextEdit1.SetFocus;
end;

procedure TFormInsertarUsuarioSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    cxTextEdit1.Clear;
    cxMaskEdit1.Clear;
    cxLookupComboBox1.Clear;
end;

procedure TFormInsertarUsuarioSistema.FormShow(Sender: TObject);
begin
   DataModule1.QPerfiles.Execute;
end;

end.
