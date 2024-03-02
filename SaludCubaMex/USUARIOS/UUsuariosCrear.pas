unit UUsuariosCrear;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,

  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxTextEdit, cxLabel, StdCtrls, cxButtons,
  UniProvider, MySQLUniProvider, DB, DBAccess, Uni, MemDS, cxGroupBox,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinWhiteprint,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinTheBezier;

type
  TFUsuariosCrear = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    cxMaskEdit1: TcxMaskEdit;
    cxMaskEdit2: TcxMaskEdit;
    cxLookupComboBox1: TcxLookupComboBox;
    CREAR: TcxButton;
    CANCELAR: TcxButton;
    cxTextEdit2: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    procedure CREARClick(Sender: TObject);
    procedure CANCELARClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuariosCrear: TFUsuariosCrear;

implementation

USES Ulogin, UDM1, UDMUsuarios;
{$R *.dfm}

procedure TFUsuariosCrear.CANCELARClick(Sender: TObject);
begin
  Close;
end;

procedure TFUsuariosCrear.CREARClick(Sender: TObject);
begin
  try
    if (cxTextEdit1.Text = '') OR (cxMaskEdit1.Text = '') OR
      (cxMaskEdit2.Text = '') OR (cxTextEdit2.Text = '') OR
      (cxLookupComboBox1.Text = '') then
      ShowMessage('DEBE LLENAR TODOS LOS CAMPOS')
    else if (cxMaskEdit1.Text) <> (cxMaskEdit2.Text) then
      ShowMessage('EL CAMPO CONTRASEÑA Y REPETIR CONTRASEÑA NO COINCIDEN')
    else
    begin
      with FDMusuarios do
      begin
        Quser2.ParamByName('Puser').AsString := cxTextEdit1.Text;
        Quser2.Execute;
        if (Quser2.FieldValues['usuario'] = cxTextEdit1.Text) then
          ShowMessage('YA EXISTE UN USUARIO CON ESE NOMBRE DE USUARIO')
        else
        begin
          with FDMusuarios.Qinsertarusuario do
          begin
            ParamByName('Pnombre').AsString := cxTextEdit2.Text;
            ParamByName('Puser').AsString := cxTextEdit1.Text;
            ParamByName('Ppass').AsString := (cxMaskEdit1.Text);
            ParamByName('Pcargo').AsString := cxLookupComboBox1.Text;
            Execute;

            ShowMessage('USUARIO CREADO CON EXITO');
            cxTextEdit1.Clear;
            cxMaskEdit1.Clear;
            cxMaskEdit2.Clear;
            cxLookupComboBox1.Clear;
            cxTextEdit1.SetFocus;
          end;
        end;
      end;
    end;
  except
    on E: Exception do
  end;

end;

procedure TFUsuariosCrear.FormActivate(Sender: TObject);
begin
  cxLookupComboBox1.Properties.ListSource.DataSet.Active := True;
  try
    begin
      with FDMusuarios do
      begin
        Qlistcargoadm.Active := True;
        Qlistcargoadm.Execute;
      end;

    end
  except
    ShowMessage('no se pudo mostrar la ventana');
  end;
end;

end.
