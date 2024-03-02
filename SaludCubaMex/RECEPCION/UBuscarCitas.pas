unit UBuscarCitas;

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
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxGroupBox, cxTextEdit,
  cxLabel;

type
  TFBuscarCita = class(TForm)
    cxGroupBox1: TcxGroupBox;
    MostrarTodos: TcxButton;
    cxButton1: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1MOTIVO: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_CITA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_CONFIRMACION: TcxGridDBColumn;
    cxGrid1DBTableView1HORA_INICIO: TcxGridDBColumn;
    cxGrid1DBTableView1HORA_FIN: TcxGridDBColumn;
    cxGrid1DBTableView1MEDICO_ASIGNADO: TcxGridDBColumn;
    cxGrid1DBTableView1RECEPCIONISTA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    CONFIRMAR_CITA: TMenuItem;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1TELEFONO: TcxGridDBColumn;
    procedure MostrarTodosClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure CONFIRMAR_CITAClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
   procedure MOV_CITA_PARA_HISTORIAL;
  public
    { Public declarations }
  end;

var
  FBuscarCita: TFBuscarCita;

  FECHA_SELECCIONADA:TDate;

  NOMBRE,TELEFONO,MOTIVO,ESTADO,RECEPCIONISTA,MEDICO_ASIGNADO,HORA_INICIO,HORA_FIN:string;
  CODIGO,CODIGO1:Integer;
  FECHA_CITA,FECHA_CONFIRMACION:TDate;

implementation

USES ULogin,UDMCitas,ComObj;
{$R *.dfm}

procedure TFBuscarCita.CONFIRMAR_CITAClick(Sender: TObject);
begin
  try
     FDMCitas.QConfirmarCita.ParamByName('ESTADO').AsString:='CONFIRMADA';
     FDMCitas.QConfirmarCita.ParamByName('FECHA').AsDate:=Now;
     FDMCitas.QConfirmarCita.ParamByName('CODIGO').AsInteger:=CODIGO1;
     FDMCitas.QConfirmarCita.Execute;

     cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
     ShowMessage('CITA ELIMINADA CON EXITO');

  except on E: Exception do
  end;
end;

procedure TFBuscarCita.cxButton1Click(Sender: TObject);
var
 Word: Variant;
 Documento: Variant;
  begin
     if (cxTextEdit1.Text = '') OR (cxTextEdit2.Text = '') then
     begin
        ShowMessage('DEBE SELECCIONAR UNA CITA DE LA TABLA');
     end
     else
     begin
       try
        (* Creas un objeto Word *)
         Word := CreateOleObject('Word.Application');

        (* Añades un documento basado en la plantilla *)
         Word.Documents.Add(ExtractFilePath(Application.ExeName)+'CITA.dot');
         Documento := Word.Documents.Item(1);

        (* Asignas valores a los campos *)
         Documento.Variables.Add('FECHA',DateToStr(FECHA_CITA));
         Documento.Variables.Add('HORA', HORA_INICIO);
         Documento.Variables.Add('NOMBRE', NOMBRE);
         Documento.Variables.Add('MOTIVO', MOTIVO);
         Documento.Variables.Add('DOCTOR', MEDICO_ASIGNADO);
         Documento.Fields.Update;
       //  Documento.Fields.ToggleShowCodes;
         Word.Visible := true;
       except
         Documento.Free;
         ShowMessage('NO SE PUDO GENERAR LA CITA');
       end;
     end;
  end;


procedure TFBuscarCita.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   // CAPTIRAR TODOS LOS DATOS DE LA CITA
   try
      CODIGO1:=cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['CODIGO'];
      NOMBRE:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['NOMBRE'];
      TELEFONO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['TELEFONO'];
      MOTIVO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['MOTIVO'];
      ESTADO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['ESTADO'];
      FECHA_CITA:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['FECHA_CITA'];
      HORA_INICIO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['HORA_INICIO'];
      HORA_FIN:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['HORA_FIN'];
      RECEPCIONISTA:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['RECEPCIONISTA'];
      MEDICO_ASIGNADO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['MEDICO_ASIGNADO'];

      cxTextEdit1.Text:=NOMBRE;
      cxTextEdit2.Text:=DateToStr(FECHA_CITA);

   except on E: Exception do
   end;
end;

procedure TFBuscarCita.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    cxGrid1DBTableView1.DataController.DataSet.Close;
  except on E: Exception do
  end;
end;

procedure TFBuscarCita.MostrarTodosClick(Sender: TObject);
begin
  try

    MOV_CITA_PARA_HISTORIAL;

    if FLogin.CARGO = 'DOCTOR' then
    begin

       FDMCitas.QCitasDoctor.ParamByName('FECHA').AsDate:=Now;
       FDMCitas.QCitasDoctor.ParamByName('DOCTOR').AsString:=FLogin.NOMBRE_COMPLETO;
       FDMCitas.QCitasDoctor.Execute;

       cxGrid1DBTableView1.DataController.DataSource:=FDMCitas.DSCitasDoctor;
       cxGrid1DBTableView1.DataController.DataSource.DataSet:=FDMCitas.QCitasDoctor;
       cxGrid1DBTableView1.DataController.DataSet.Open;

    end
    else
    begin
        FDMCitas.QCitasTodas.ParamByName('FECHA').AsDate:=Now;
        FDMCitas.QCitasTodas.Execute;

        cxGrid1DBTableView1.DataController.DataSource:=FDMCitas.DSCitasTodas;
        cxGrid1DBTableView1.DataController.DataSource.DataSet:=FDMCitas.QCitasTodas;
        cxGrid1DBTableView1.DataController.DataSet.Open;
    end;

  except on E: Exception do
  end;
  
end;

procedure TFBuscarCita.MOV_CITA_PARA_HISTORIAL;
VAR I:Integer;
begin
   try
    // MOVIENDO PARA HISTORIAL LAS ANTIGUAS AL DIA DE HOY
      with FDMCitas.QCitasOld do
      begin
        ParamByName('FECHA').AsDate:=NOW;
        Execute;

        for I := 0 to RecordCount -1 do
        begin
          if I=0  then  First;
          CODIGO:= FieldValues['CODIGO'];
          NOMBRE:= FieldValues['NOMBRE'];
          TELEFONO:= FieldValues['TELEFONO'];
          MOTIVO:= FieldValues['MOTIVO'];
          ESTADO:= FieldValues['ESTADO'];
          FECHA_CITA:= FieldValues['FECHA_CITA'];
          HORA_INICIO:= FieldValues['HORA_INICIO'];
          HORA_FIN:= FieldValues['HORA_FIN'];
          RECEPCIONISTA:= FieldValues['RECEPCIONISTA'];
          MEDICO_ASIGNADO:= FieldValues['MEDICO_ASIGNADO'];

          // insertando la nueva cita EN HISTORIAL
          with FDMCitas.QInsertarCitaHist do
          begin
            ParamByName('NOMBRE').AsString:=NOMBRE;
            ParamByName('TELEFONO').asstring:=TELEFONO;
            ParamByName('MOTIVO').AsString:=MOTIVO;
            ParamByName('ESTADO').AsString:=ESTADO;
            ParamByName('FECHA_CITA').AsDate:=FECHA_CITA;
            ParamByName('HORA_INICIO').AsString:=HORA_INICIO;
            ParamByName('HORA_FIN').AsString:=HORA_FIN;
            ParamByName('RECEPCIONISTA').AsString:=RECEPCIONISTA;
            ParamByName('MEDICO_ASIGNADO').AsString:=MEDICO_ASIGNADO;

            if ESTADO = 'CONFIRMADA' then
            begin
              FECHA_CONFIRMACION:= FDMCitas.QCitasOld.FieldValues['FECHA_CONFIRMACION'];

              ParamByName('FECHA_CONFIRMACION').AsDate:=FECHA_CONFIRMACION;
            end;

            Execute;
          end;

          // ELIMINANDO LA CITA
          with FDMCitas.QEliminarCita do
          begin
            ParamByName('CODIGO').asinteger:=CODIGO;
            Execute;
          end;

          Next;
        end;
      end;
   except on E: Exception do
   end;
end;

end.
