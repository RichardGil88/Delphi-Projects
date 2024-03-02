unit ULaboratorios;

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
  dxSkinXmas2008Blue, Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxCheckBox, dxToggleSwitch, Vcl.StdCtrls,
  cxButtons, cxTextEdit, cxLabel, cxGroupBox, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCalendar;

type
  TFLaboratorios = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxTextEdit7: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel10: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLabel3: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    procedure FormActivate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RESULTADO1Click(Sender: TObject);
    procedure ELIMINARLABORATORIO1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLaboratorios: TFLaboratorios;
  CODIGO:Integer;

implementation

{$R *.dfm}
 uses UDMPACIENTES,UBuscarPaciente,ULogin,ULabResult;

procedure TFLaboratorios.cxButton1Click(Sender: TObject);
begin
  try
    if (cxTextEdit1.Text = '') or
       (cxTextEdit2.Text = '') or
       (cxTextEdit9.Text = '') or
       (cxTextEdit7.Text = '') or
       (cxDateEdit1.Text = '') or
       (cxTextEdit10.Text = '')
    then
    begin
      ShowMessage('USTED DEBE LLENAR TODOS LOS CAMPOS.');
    end
    else
    begin
        // INSERTANDO EL PACIENTE
        with FDMPacientes.QInsertarLaboratorio do
        begin
          ParamByName('CODIGO_PACIENTE').AsInteger:=StrToInt(cxTextEdit1.Text);
          ParamByName('NOMBRE').AsString:=cxTextEdit2.Text;
          ParamByName('PRIMER_APELLIDO').AsString:=cxTextEdit9.Text;
          ParamByName('SEGUNDO_APELLIDO').AsString:=cxTextEdit10.Text;
          ParamByName('TIPO').AsString:='LABORATORIO';
          ParamByName('EXAMEN_REALIZADO').AsString:=cxTextEdit7.Text;
          ParamByName('FECHA').AsDate:=cxDateEdit1.Date;
          ParamByName('DOCTOR').AsString:=FLogin.NOMBRE_COMPLETO;

          Execute;



          cxTextEdit7.Clear;
          cxDateEdit1.Clear;
          cxTextEdit7.SetFocus;

          ShowMessage('LABORATORIO ADICIONADO CON EXITO');

        end;

    end;
  except on E: Exception do
    ShowMessage('NO SE PUDO ADICIONAR EL LABORATORIO');
  end;
end;

procedure TFLaboratorios.cxButton2Click(Sender: TObject);
begin
    cxTextEdit7.Clear;
    cxDateEdit1.Clear;
    cxTextEdit7.SetFocus;
end;

procedure TFLaboratorios.ELIMINARLABORATORIO1Click(Sender: TObject);
begin
  try
     FDMPacientes.QEliminarLab.ParamByName('CODIGO').AsInteger:=CODIGO;
     FDMPacientes.QEliminarLab.Execute;
     ShowMessage('LABORATORIO ELIMINADO CON EXITO');

  except on E: Exception do
    ShowMessage('NO SE PUDO ELIMINAR EL LABORATORIO');
  end;
end;

procedure TFLaboratorios.FormActivate(Sender: TObject);
begin
  try
     cxTextEdit1.Text:=IntToStr(FBuscarPaciente.CODIGO);
     cxTextEdit2.Text:=FBuscarPaciente.NOMBRE;
     cxTextEdit9.Text:=FBuscarPaciente.PRIMER_APELLIDO;
     cxTextEdit10.Text:=FBuscarPaciente.SEGUNDO_APELLIDO;

     cxTextEdit7.SetFocus;
  except on E: Exception do
  end;
end;

procedure TFLaboratorios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    cxTextEdit7.Clear;
    cxDateEdit1.Clear;
    cxTextEdit7.SetFocus;
end;

procedure TFLaboratorios.RESULTADO1Click(Sender: TObject);
begin
  FLabResult.ShowModal;

  try
     FDMPacientes.QLabResult.ParamByName('RESULTADO').AsString:=  FLabResult.RESULTADO;
     FDMPacientes.QLabResult.ParamByName('CODIGO').AsInteger:=  CODIGO;
     FDMPacientes.QLabResult.Execute;

     ShowMessage('RESULTADO AGREGADO CON EXITO');
  except on E: Exception do
    ShowMessage('NO SE PUDO AGREGAR EL RESULTADO.');
  end;
end;

end.
