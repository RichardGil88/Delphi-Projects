unit UNuevoPaciente;

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
  dxSkinXmas2008Blue, cxGroupBox, cxTextEdit, cxLabel, cxMemo, cxCheckBox,
  dxToggleSwitch, dxCameraControl, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  dxSkinTheBezier;

type
  TFNuevoPaciente = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxMemo1: TcxMemo;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    SWSEXO: TdxToggleSwitch;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxTextEdit7: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel13: TcxLabel;
    cxMemo6: TcxMemo;
    cxLabel10: TcxLabel;
    cxMemo2: TcxMemo;
    procedure cxButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNuevoPaciente: TFNuevoPaciente;

  CODIGO:string;
  NOMBRE:string;
  PRIMER_APELLIDO:string;
  SEGUNDO_APELLIDO:string;
  TELEFONOS:string;
  CORREO :string;
  SEXO :string;
  ESCOLARIDAD :string;
  ESTADO_CIVIL :string;
  OCUPACION  :string;
  COMENTARIOS :string;
  TABAQUISMO  :string;
  ALCOHOLISMO  :string;
  TIPO_DE_SANGRE  :string;
  RH  :string;
  APP  :string;
  APF  :string;
  ALERGIAS :string;
  FECHA_DE_CREADO  :TDate;


implementation

{$R *.dfm}
 uses UDMPacientes,UDMCodificadores,ULogin;


procedure TFNuevoPaciente.cxButton1Click(Sender: TObject);
begin

  try
    if (cxLookupComboBox2.Text = '') OR
       (cxMemo1.Text = '') OR
       (cxMemo2.Text = '') OR
       (cxMemo6.Text = '') OR
       (cxTextEdit1.Text = '') OR
       (cxTextEdit2.Text = '') OR
       (cxTextEdit3.Text = '') OR
       (cxTextEdit4.Text = '') OR
       (cxTextEdit5.Text = '') OR
       (cxTextEdit7.Text = '')

    then
    begin
      ShowMessage('USTED DEBE LLENAR TODOS LOS CAMPOS.');
    end
    else
    begin

      // VERIFICANDO SI EXISTE
      FDMPacientes.QExistePaciente.ParamByName('NOMBRE').AsString:=cxTextEdit1.Text;
      FDMPacientes.QExistePaciente.ParamByName('PRIMER_APELLIDO').AsString:=cxTextEdit2.Text;
      FDMPacientes.QExistePaciente.ParamByName('SEGUNDO_APELLIDO').AsString:=cxTextEdit3.Text;
      FDMPacientes.QExistePaciente.Execute;

      if FDMPacientes.QExistePaciente.RecordCount > 0 then
      begin
        ShowMessage('YA EXISTE UN PACIENTE CON ESE NOMBRE');
      end
      else
      begin

        // INSERTANDO EL PACIENTE
        with FDMPacientes.QInsertarPaciente do
        begin
          ParamByName('NOMBRE').AsString:=cxTextEdit1.Text;
          ParamByName('PRIMER_APELLIDO').AsString:=cxTextEdit2.Text;
          ParamByName('SEGUNDO_APELLIDO').AsString:=cxTextEdit3.Text;
          ParamByName('TELEFONOS').AsMemo:=cxMemo1.Text;
          ParamByName('CORREO').AsString:=cxTextEdit4.Text;
          ParamByName('ESCOLARIDAD').AsString:=cxTextEdit5.Text;
          ParamByName('ESTADO_CIVIL').AsString:=cxLookupComboBox2.Text;
          ParamByName('OCUPACION').AsString:=cxTextEdit7.Text;
          ParamByName('DIRECCION').AsMemo:=cxMemo6.Text;
          if SWSEXO.Checked = True then ParamByName('SEXO').AsString:='F';
          if SWSEXO.Checked = False then ParamByName('SEXO').AsString:='M';
          ParamByName('FECHA_DE_CREADO').AsDate:=Now;
          ParamByName('COMENTARIOS').AsMemo:=cxMemo2.Text;
          ParamByName('MEDICO').AsString:= Flogin.NOMBRE_COMPLETO;
          Execute;


          cxLookupComboBox2.Clear;
          cxMemo1.Clear;
          cxMemo6.Clear;
          cxMemo2.Clear;
          cxTextEdit1.Clear;
          cxTextEdit2.Clear;
          cxTextEdit3.Clear;
          cxTextEdit4.Clear;
          cxTextEdit5.Clear;
          cxTextEdit7.Clear;
          cxTextEdit1.SetFocus;


          ShowMessage('PACIENTE ADICIONADO CON EXITO');

        end;
      end;
    end;
  except on E: Exception do
    ShowMessage('NO SE PUDO ADICIONAR EL PACIENTE');
  end;


end;

procedure TFNuevoPaciente.cxButton2Click(Sender: TObject);
begin
    cxLookupComboBox2.Clear;
    cxMemo1.Clear;
    cxMemo6.Clear;
    cxMemo2.Clear;
    cxTextEdit1.Clear;
    cxTextEdit2.Clear;
    cxTextEdit3.Clear;
    cxTextEdit4.Clear;
    cxTextEdit5.Clear;
    cxTextEdit7.Clear;
    cxTextEdit1.SetFocus;


end;


procedure TFNuevoPaciente.FormActivate(Sender: TObject);
begin
  try
     cxLookupComboBox2.Properties.DataController.DataSet.Active:=True;
     cxTextEdit1.SetFocus;

  except on E: Exception do
  end;

end;

procedure TFNuevoPaciente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    cxLookupComboBox2.Clear;
    cxMemo1.Clear;
    cxMemo6.Clear;
    cxMemo2.Clear;
    cxTextEdit1.Clear;
    cxTextEdit2.Clear;
    cxTextEdit3.Clear;
    cxTextEdit4.Clear;
    cxTextEdit5.Clear;
    cxTextEdit7.Clear;
    cxTextEdit1.SetFocus;
end;

end.
