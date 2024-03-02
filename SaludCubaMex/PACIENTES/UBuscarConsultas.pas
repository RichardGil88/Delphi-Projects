unit UBuscarConsultas;

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
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Vcl.StdCtrls, cxButtons, cxTextEdit, cxLabel,
  cxGroupBox, cxCheckBox, dxToggleSwitch, cxMemo;

type
  TFBuscarConsultas = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxLabel6: TcxLabel;
    SWSEXO: TdxToggleSwitch;
    cxLabel4: TcxLabel;
    cxMemo1: TcxMemo;
    cxLabel14: TcxLabel;
    cxMemo4: TcxMemo;
    cxLabel15: TcxLabel;
    cxMemo2: TcxMemo;
    cxLabel16: TcxLabel;
    cxMemo5: TcxMemo;
    cxLabel17: TcxLabel;
    cxMemo3: TcxMemo;
    cxGrid1DBTableView1PULSO: TcxGridDBColumn;
    cxGrid1DBTableView1TEMPERATURA: TcxGridDBColumn;
    cxGrid1DBTableView1TA: TcxGridDBColumn;
    cxGrid1DBTableView1PESO: TcxGridDBColumn;
    cxGrid1DBTableView1TALLA: TcxGridDBColumn;
    cxGrid1DBTableView1IMC: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1DOCTOR: TcxGridDBColumn;
    cxLabel3: TcxLabel;
    cxMemo6: TcxMemo;
    cxGrid1DBTableView1CODIGO_PACIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1PRIMER_APELLIDO: TcxGridDBColumn;
    cxGrid1DBTableView1SEGUNDO_APELLIDO: TcxGridDBColumn;
    cxGrid1DBTableView1SEXO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1EDAD: TcxGridDBColumn;
    cxGrid1DBTableView1TABAQUISMO: TcxGridDBColumn;
    cxGrid1DBTableView1ALCOHOLISMO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_DE_SANGRE: TcxGridDBColumn;
    cxGrid1DBTableView1RH: TcxGridDBColumn;
    cxLabel19: TcxLabel;
    cxMemo7: TcxMemo;
    cxLabel5: TcxLabel;
    cxMemo8: TcxMemo;
    cxMemo9: TcxMemo;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxMemo10: TcxMemo;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    PopupMenu1: TPopupMenu;
    ELIMINARCONSULTA1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure ELIMINARCONSULTA1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      PESO,TALLA,TA,TEMPERATURA:string;
      CODIGO,EDAD:Integer;
  end;

var
  FBuscarConsultas: TFBuscarConsultas;


implementation

{$R *.dfm}
 uses UDMPACIENTES,UBuscarPaciente,ULogin,UCrearReceta,UBuscarRecetas,
  Umain;

 // CANCELAR
procedure TFBuscarConsultas.cxButton1Click(Sender: TObject);
begin
  try
     if cxMemo1.Text <> '' then
     begin
        FBuscarRecetas.ShowModal;
     end
     else
     begin
       ShowMessage('DEBE SELECCIONAR UNA CONSULTA PRIMERO');
     end;
  except on E: Exception do
  end;
end;

procedure TFBuscarConsultas.cxButton2Click(Sender: TObject);
begin
    try
      cxMemo1.Clear;
      cxMemo2.Clear;
      cxMemo3.Clear;
      cxMemo4.Clear;
      cxMemo5.Clear;
      cxMemo6.Clear;
    except on E: Exception do
    end;

end;

// CREAR RECETA
procedure TFBuscarConsultas.cxButton3Click(Sender: TObject);
begin
  try
     if cxMemo1.Text <> '' then
     begin
        FCrearReceta.ShowModal;
     end
     else
     begin
       ShowMessage('DEBE SELECCIONAR UNA CONSULTA PRIMERO');
     end;
  except on E: Exception do
  end;
end;

procedure TFBuscarConsultas.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

  try
     cxMemo1.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['MOTIVO_DE_CONSULTA'];
     cxMemo4.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['DATOS_POSITIVOS_EXAMEN_FISICO'];
     cxMemo2.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['ESTUDIOS_COMPLEMENTARIOS'];
     cxMemo5.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['IMPRESION_DIAGNOSTICA'];
     cxMemo3.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['TRATAMIENTO'];
     cxMemo6.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['OBSERVACIONES'];

     cxMemo7.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['HISTORIA_DE_LA_ENFERMEDAD_ACTUAL'];
     cxMemo8.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['ALERGIAS'];
     cxMemo9.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['APP'];
     cxMemo10.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['APF'];

      CODIGO:=cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['CODIGO'];
      PESO:=cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['PESO'];
      TALLA:=cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['TALLA'];
      TA:=cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['TA'];
      TEMPERATURA:=cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['TEMPERATURA'];
      EDAD:=cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['EDAD'];

  except on E: Exception do

  end;


end;

procedure TFBuscarConsultas.ELIMINARCONSULTA1Click(Sender: TObject);
begin
  try
     FDMPacientes.QEliminarConsulta.ParamByName('CODIGO').AsInteger:=CODIGO;
     FDMPacientes.QEliminarConsulta.Execute;
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
     ShowMessage('CONSULTA ELIMINADA CON EXITO');

  except on E: Exception do
    ShowMessage('NO SE PUDO ELIMINAR LA CONSULTA');
  end;
end;

// ONACTIVATE
procedure TFBuscarConsultas.FormActivate(Sender: TObject);
begin
  try

     cxTextEdit1.Text:=IntToStr(FBuscarPaciente.CODIGO);
     cxTextEdit2.Text:=FBuscarPaciente.NOMBRE;
     cxTextEdit9.Text:=FBuscarPaciente.PRIMER_APELLIDO;
     cxTextEdit10.Text:=FBuscarPaciente.SEGUNDO_APELLIDO;

     if FBuscarPaciente.SEGUNDO_APELLIDO = 'M' then  SWSEXO.Checked:=False;
     if FBuscarPaciente.SEGUNDO_APELLIDO = 'F' then  SWSEXO.Checked:=True;



     FDMPacientes.QConsutas.ParamByName('CODIGO').AsInteger:= StrToInt(cxTextEdit1.Text);
     FDMPacientes.QConsutas.ParamByName('DOCTOR').AsString:= FLogin.NOMBRE_COMPLETO;
     FDMPacientes.QConsutas.Execute;
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;

  except on E: Exception do
  end;
end;

// ONCLOSE
procedure TFBuscarConsultas.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
   try
      cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;

      cxTextEdit1.Clear;
      cxTextEdit2.Clear;
      cxTextEdit9.Clear;
      cxTextEdit10.Clear;
      cxMemo1.Clear;
      cxMemo2.Clear;
      cxMemo3.Clear;
      cxMemo4.Clear;
      cxMemo5.Clear;
      cxMemo6.Clear;

   except on E: Exception do

   end;
end;

end.
