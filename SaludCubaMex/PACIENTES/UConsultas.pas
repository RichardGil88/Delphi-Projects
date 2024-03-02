unit UConsultas;

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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox,
  dxToggleSwitch, cxTextEdit, cxLabel, cxGroupBox, cxMemo;

type
  TFConsultas = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    SWSEXO: TdxToggleSwitch;
    cxLabel6: TcxLabel;
    cxLabel3: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxTextEdit6: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxLabel8: TcxLabel;
    cxTextEdit8: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel10: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxMemo1: TcxMemo;
    cxTextEdit7: TcxTextEdit;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxMemo2: TcxMemo;
    cxMemo3: TcxMemo;
    cxLabel9: TcxLabel;
    cxLabel15: TcxLabel;
    cxMemo4: TcxMemo;
    cxLabel16: TcxLabel;
    cxMemo5: TcxMemo;
    cxLabel17: TcxLabel;
    cxMemo6: TcxMemo;
    cxLabel18: TcxLabel;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel19: TcxLabel;
    cxMemo7: TcxMemo;
    cxLabel20: TcxLabel;
    SWTABAQUISMO: TdxToggleSwitch;
    cxLabel21: TcxLabel;
    SWALCOHOLISMO: TdxToggleSwitch;
    cxLabel22: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel23: TcxLabel;
    SWRH: TdxToggleSwitch;
    cxLabel24: TcxLabel;
    cxMemo8: TcxMemo;
    cxLabel25: TcxLabel;
    cxMemo9: TcxMemo;
    cxLabel27: TcxLabel;
    cxMemo11: TcxMemo;
    procedure FormActivate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultas: TFConsultas;

implementation

{$R *.dfm}
 USES UBuscarPaciente,UDMPacientes,ULogin,UHistoriaClinica;


procedure TFConsultas.cxButton1Click(Sender: TObject);
begin
  try
    if (cxLookupComboBox1.Text = '') or
       (cxTextEdit1.Text = '') or
       (cxTextEdit2.Text = '') or
       (cxTextEdit3.Text = '') or
       (cxTextEdit4.Text = '') or
       (cxTextEdit5.Text = '') or
       (cxTextEdit6.Text = '') or
       (cxTextEdit7.Text = '') or
       (cxTextEdit8.Text = '') or
       (cxTextEdit9.Text = '') or
       (cxTextEdit10.Text = '') or
       (cxMaskEdit1.Text = '') or
       (cxMemo1.Text = '') or
       (cxMemo2.Text = '') or
       (cxMemo3.Text = '') or
       (cxMemo4.Text = '') or
       (cxMemo5.Text = '') or
       (cxMemo6.Text = '') or
       (cxMemo7.Text = '') or
       (cxMemo8.Text = '') or
       (cxMemo9.Text = '') or
       (cxMemo11.Text = '')
    then
    begin
      ShowMessage('USTED DEBE LLENAR TODOS LOS CAMPOS.');
    end
    else
    begin

        // INSERTANDO EL PACIENTE
        with FDMPacientes.QInsertarConsulta do
        begin
          ParamByName('CODIGO_PACIENTE').AsInteger:=StrToInt(cxTextEdit1.Text);
          ParamByName('NOMBRE').AsString:=cxTextEdit2.Text;
          ParamByName('PRIMER_APELLIDO').AsString:=cxTextEdit9.Text;
          ParamByName('SEGUNDO_APELLIDO').AsString:=cxTextEdit10.Text;
          ParamByName('TIPO').AsString:='CONSULTA';
          ParamByName('EDAD').AsInteger:=StrToInt(cxMaskEdit1.Text);
          ParamByName('MOTIVO_DE_CONSULTA').AsMemo:=cxMemo1.Text;

          if SWSEXO.Checked = True then ParamByName('SEXO').AsString:='F';
          if SWSEXO.Checked = False then ParamByName('SEXO').AsString:='M';

          ParamByName('PULSO').AsString:=cxTextEdit8.Text;
          ParamByName('TA').AsString:=cxTextEdit5.Text;
          ParamByName('TEMPERATURA').AsString:=cxTextEdit6.Text;
          ParamByName('PESO').AsString:=cxTextEdit3.Text;
          ParamByName('TALLA').AsString:=cxTextEdit4.Text;
          ParamByName('IMC').AsString:=cxTextEdit7.Text;
          ParamByName('DATOS_POSITIVOS_EXAMEN_FISICO').AsMemo:=cxMemo2.Text;
          ParamByName('ESTUDIOS_COMPLEMENTARIOS').AsMemo:=cxMemo3.Text;
          ParamByName('IMPRESION_DIAGNOSTICA').AsMemo:=cxMemo4.Text;
          ParamByName('TRATAMIENTO').AsMemo:=cxMemo5.Text;
          ParamByName('OBSERVACIONES').AsMemo:=cxMemo6.Text;
          ParamByName('FECHA').AsDate:=NOW;
          ParamByName('DOCTOR').AsString:=FLogin.NOMBRE_COMPLETO;

          if SWTABAQUISMO.Checked = True then ParamByName('TABAQUISMO').AsString:='NO';
          if SWTABAQUISMO.Checked = False then ParamByName('TABAQUISMO').AsString:='SI';

          if SWALCOHOLISMO.Checked = True then ParamByName('ALCOHOLISMO').AsString:='NO';
          if SWALCOHOLISMO.Checked = False then ParamByName('ALCOHOLISMO').AsString:='SI';

          if cxLookupComboBox1.Text =  'DESCONOCIDO' then
          begin
             ParamByName('TIPO_DE_SANGRE').AsString:=cxLookupComboBox1.Text;
             ParamByName('RH').AsString:=' ';
          end
          else
          begin
            ParamByName('TIPO_DE_SANGRE').AsString:=cxLookupComboBox1.Text;
            if SWRH.Checked = True then ParamByName('RH').AsString:='-';
            if SWRH.Checked = False then ParamByName('RH').AsString:='+';
          end;


          

          ParamByName('APP').AsMemo:=cxMemo8.Text;
          ParamByName('APF').AsMemo:=cxMemo9.Text;
          ParamByName('ALERGIAS').AsMemo:=cxMemo11.Text;
          ParamByName('HISTORIA_DE_LA_ENFERMEDAD_ACTUAL').AsMemo:=cxMemo7.Text;

          Execute;

          cxTextEdit3.Clear;
          cxTextEdit4.Clear;
          cxTextEdit5.Clear;
          cxTextEdit6.Clear;
          cxTextEdit7.Clear;
          cxTextEdit8.Clear;
          cxTextEdit8.Clear;
          cxTextEdit10.Clear;
          cxMemo1.Clear;
          cxMemo2.Clear;
          cxMemo3.Clear;
          cxMemo4.Clear;
          cxMemo5.Clear;
          cxMemo6.Clear;
          cxMemo7.Clear;
          cxMemo8.Clear;
          cxMemo9.Clear;
          cxMemo11.Clear;
          cxMaskEdit1.Clear;
          cxLookupComboBox1.Clear;
          cxMaskEdit1.SetFocus;

          ShowMessage('CONSULTA ADICIONADA CON EXITO');

        end;
    end;
  except on E: Exception do
    ShowMessage('NO SE PUDO ADICIONAR LA CONSULTA');
  end;
end;

procedure TFConsultas.cxButton2Click(Sender: TObject);
begin
  try
    cxTextEdit3.Clear;
    cxTextEdit4.Clear;
    cxTextEdit5.Clear;
    cxTextEdit6.Clear;
    cxTextEdit7.Clear;
    cxTextEdit8.Clear;
    cxTextEdit8.Clear;
    cxTextEdit10.Clear;
    cxMemo1.Clear;
    cxMemo2.Clear;
    cxMemo3.Clear;
    cxMemo4.Clear;
    cxMemo5.Clear;
    cxMemo6.Clear;
    cxMemo7.Clear;
    cxMemo8.Clear;
    cxMemo9.Clear;
    cxMemo11.Clear;
    cxMaskEdit1.Clear;
    cxLookupComboBox1.Clear;
    cxMaskEdit1.SetFocus;
  except on E: Exception do
  end;

end;

procedure TFConsultas.cxLookupComboBox1Click(Sender: TObject);
begin
  if cxLookupComboBox1.Text =  'DESCONOCIDO' then
  begin
    SWRH.Enabled:=False;
  end
  else
  begin
    SWRH.Enabled:=True;
  end;
end;

procedure TFConsultas.FormActivate(Sender: TObject);
begin
  try
    cxTextEdit1.Text:=IntToStr(FBuscarPaciente.CODIGO);
    cxTextEdit2.Text:=FBuscarPaciente.NOMBRE;
    cxTextEdit9.Text:=FBuscarPaciente.PRIMER_APELLIDO;
    cxTextEdit10.Text:=FBuscarPaciente.SEGUNDO_APELLIDO;

    if FBuscarPaciente.SEXO = 'M' then  SWSEXO.Checked:=False;
    if FBuscarPaciente.SEXO = 'F' then  SWSEXO.Checked:=True;

    SWRH.Enabled:=True;

    cxLookupComboBox1.Properties.DataController.DataSet.Active:=True;

  except on E: Exception do
  end;
end;

procedure TFConsultas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    cxTextEdit3.Clear;
    cxTextEdit4.Clear;
    cxTextEdit5.Clear;
    cxTextEdit6.Clear;
    cxTextEdit7.Clear;
    cxTextEdit8.Clear;
    cxTextEdit8.Clear;
    cxTextEdit10.Clear;
    cxMemo1.Clear;
    cxMemo2.Clear;
    cxMemo3.Clear;
    cxMemo4.Clear;
    cxMemo5.Clear;
    cxMemo6.Clear;
    cxMemo7.Clear;
    cxMemo8.Clear;
    cxMemo9.Clear;
    cxMemo11.Clear;
    cxMaskEdit1.Clear;
    cxLookupComboBox1.Clear;
    cxMaskEdit1.SetFocus;

  except on E: Exception do
   ShowMessage('ERROR');
  end;
end;

end.
