unit UBuscarPaciente;

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
  dxSkinXmas2008Blue, cxGroupBox, cxTextEdit, cxLabel, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxMemo, cxCheckBox, dxToggleSwitch, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFBuscarPaciente = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxButton1: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox3: TcxGroupBox;
    cxLabel4: TcxLabel;
    cxMemo1: TcxMemo;
    cxLabel14: TcxLabel;
    cxMemo4: TcxMemo;
    cxLabel17: TcxLabel;
    cxMemo3: TcxMemo;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1PRIMER_APELLIDO: TcxGridDBColumn;
    cxGrid1DBTableView1SEGUNDO_APELLIDO: TcxGridDBColumn;
    cxGrid1DBTableView1CORREO: TcxGridDBColumn;
    cxGrid1DBTableView1SEXO: TcxGridDBColumn;
    cxGrid1DBTableView1ESCOLARIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO_CIVIL: TcxGridDBColumn;
    cxGrid1DBTableView1OCUPACION: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    ELIMINARPACIENTE1: TMenuItem;
    cxLabel3: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxButton5: TcxButton;
    cxLabel6: TcxLabel;
    SWSEXO: TdxToggleSwitch;
    cxGrid1DBTableView1MEDICO: TcxGridDBColumn;
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure ELIMINARPACIENTE1Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  CODIGO:Integer;
  NOMBRE,PRIMER_APELLIDO,SEGUNDO_APELLIDO,SEXO:string;

  end;

var
  FBuscarPaciente: TFBuscarPaciente;

  

implementation

{$R *.dfm}
 USES UDMPacientes,UCrearReceta,ULaboratorios,UConsultas,
 UHistoriaClinica,UConsultasVender,ULogin;



// HISTORIAS CLINICAS
procedure TFBuscarPaciente.cxButton1Click(Sender: TObject);
begin
  try
     if cxTextEdit1.Text <> '' then
     begin
        FHistoriaClinica.ShowModal;
     end
     else
     begin
       ShowMessage('DEBE SELECCIONAR UN PACIENTE PRIMERO');
     end;
  except on E: Exception do
  end;
end;

// VENDER SERVICIO
procedure TFBuscarPaciente.cxButton5Click(Sender: TObject);
begin
  try
     if cxTextEdit1.Text <> '' then
     begin
        FConsultasVender.ShowModal;
     end
     else
     begin
       ShowMessage('DEBE SELECCIONAR UN PACIENTE PRIMERO');
     end;
  except on E: Exception do
  end;

end;

procedure TFBuscarPaciente.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   try
      CODIGO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['CODIGO'];
      NOMBRE:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['NOMBRE'];
      PRIMER_APELLIDO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['PRIMER_APELLIDO'];
      SEGUNDO_APELLIDO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['SEGUNDO_APELLIDO'];
      SEXO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['SEXO'];

      cxMemo1.Lines.Text:=  cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['TELEFONOS'];
      cxMemo4.Lines.Text:=  cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['DIRECCION'];
      cxMemo3.Lines.Text:=  cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['COMENTARIOS'];

      cxTextEdit1.Text:=IntToStr(CODIGO);
      cxTextEdit2.Text:=NOMBRE;
      cxTextEdit3.Text:=PRIMER_APELLIDO;
      cxTextEdit4.Text:=SEGUNDO_APELLIDO;

      if FBuscarPaciente.SEXO = 'M' then  SWSEXO.Checked:=False;
      if FBuscarPaciente.SEXO = 'F' then  SWSEXO.Checked:=True;



   except
   end;
end;

procedure TFBuscarPaciente.ELIMINARPACIENTE1Click(Sender: TObject);
begin
  try
     FDMPacientes.QEliminarPaciente.ParamByName('CODIGO').AsInteger:=CODIGO;
     FDMPacientes.QEliminarPaciente.Execute;
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
     ShowMessage('PACIENTE ELIMINADO CON EXITO');


  except
    ShowMessage('NO SE PUDO ELIMINAR EL PACIENTE');
  end;
end;

procedure TFBuscarPaciente.FormActivate(Sender: TObject);
begin
  try
    if flogin.CARGO = 'RECEPCIONISTA' then
    begin
      cxButton1.Enabled:=False;
    end;


    FDMPacientes.QPacientes.Execute;
  except

  end;
end;

procedure TFBuscarPaciente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=False;
    cxTextEdit1.Clear;
    cxTextEdit2.Clear;

    except on E: Exception do
  end;
end;

end.
