unit UUsuariosEliminar;

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
  dxSkinWhiteprint, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light;

type
  TFUsuariosEliminar = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLookupComboBox1: TcxLookupComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel2: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUsuariosEliminar: TFUsuariosEliminar;

implementation

uses Ulogin, UDM1, UDMUsuarios;
{$R *.dfm}

procedure TFUsuariosEliminar.cxButton1Click(Sender: TObject);
begin
  try
    if cxLookupComboBox1.Text = '' then
      ShowMessage('DEBE SELECCIONAR UN USUARIO')
    else
    begin
      FDMUsuarios.Qeliminaruser.ParamByName('Puser').AsString :=
        cxLookupComboBox1.Text;
      FDMUsuarios.Qeliminaruser.Execute;
      ShowMessage('EL USUARIO HA SIDO ELIMINADO CON EXITO');
      cxLookupComboBox1.Clear;
      cxLookupComboBox1.SetFocus;
      cxLookupComboBox1.Properties.ListSource.DataSet.Refresh;

    end;
  except
    on E: Exception do
  end;

end;

procedure TFUsuariosEliminar.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFUsuariosEliminar.FormShow(Sender: TObject);
begin
  try
    with FDMUsuarios do
    begin
      Quser1.Active := True;
      // Quser1.ParamByName('Puser').AsString:=flogin.USUARIO;
      Quser1.Execute;
      cxLookupComboBox1.Properties.ListSource.DataSet.Active := True;

    end;
  except
    on E: Exception do
  end;

end;

end.
