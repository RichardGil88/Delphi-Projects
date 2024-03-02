unit UHistoriaClinica;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxCheckBox,
  dxToggleSwitch, cxTextEdit, cxLabel, cxGroupBox, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxPC, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxMemo, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TFHistoriaClinica = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLabel6: TcxLabel;
    SWSEXO: TdxToggleSwitch;
    cxPageControl1: TcxPageControl;
    TABCONSULTAS: TcxTabSheet;
    TABRECETAS: TcxTabSheet;
    TABLABORATORIOS: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1PULSO: TcxGridDBColumn;
    cxGrid1DBTableView1TEMPERATURA: TcxGridDBColumn;
    cxGrid1DBTableView1TA: TcxGridDBColumn;
    cxGrid1DBTableView1PESO: TcxGridDBColumn;
    cxGrid1DBTableView1TALLA: TcxGridDBColumn;
    cxGrid1DBTableView1IMC: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1DOCTOR: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox4: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGroupBox5: TcxGroupBox;
    TABSERVICIOSEINSUMOS: TcxTabSheet;
    cxGroupBox6: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGridDBTableView2CODIGO_PACIENTE: TcxGridDBColumn;
    cxGridDBTableView2EXAMEN_REALIZADO: TcxGridDBColumn;
    cxGridDBTableView2FECHA: TcxGridDBColumn;
    cxGridDBTableView2RESULTADO: TcxGridDBColumn;
    cxGridDBTableView2DOCTOR: TcxGridDBColumn;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView3CODIGO_PACIENTE: TcxGridDBColumn;
    cxGridDBTableView3SERVICIO: TcxGridDBColumn;
    cxGridDBTableView3PRECIO_VENTA: TcxGridDBColumn;
    cxGridDBTableView3FECHA: TcxGridDBColumn;
    cxGridDBTableView3DOCTOR: TcxGridDBColumn;
    cxGrid1DBTableView1EDAD: TcxGridDBColumn;
    cxGrid1DBTableView1TABAQUISMO: TcxGridDBColumn;
    cxGrid1DBTableView1ALCOHOLISMO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_DE_SANGRE: TcxGridDBColumn;
    cxGrid1DBTableView1RH: TcxGridDBColumn;
    cxGrid1DBTableView1ALERGIAS: TcxGridDBColumn;
    cxGridDBTableView1PESO: TcxGridDBColumn;
    cxGridDBTableView1TALLA: TcxGridDBColumn;
    cxGridDBTableView1TA: TcxGridDBColumn;
    cxGridDBTableView1TEMPERATURA: TcxGridDBColumn;
    cxGridDBTableView1FECHA: TcxGridDBColumn;
    cxGridDBTableView1DOCTOR: TcxGridDBColumn;
    cxGridDBTableView1RECOMENDACIONES: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxGroupBox8: TcxGroupBox;
    cxGrid6: TcxGrid;
    cxGridDBTableView5: TcxGridDBTableView;
    cxGridDBTableView1MEDICAMENTO: TcxGridDBColumn;
    cxGridDBTableView1PRESENTACION: TcxGridDBColumn;
    cxGridDBTableView1DOSIS: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    EditConsulta: TEdit;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    EditReceta: TEdit;
    cxGridDBTableView1CODIGO: TcxGridDBColumn;
    cxButton7: TcxButton;
    cxGridDBTableView1SEXO: TcxGridDBColumn;
    cxGridDBTableView1EDAD: TcxGridDBColumn;
    PMLAB: TPopupMenu;
    RESULTADO1: TMenuItem;
    ELIMINARLABORATORIO1: TMenuItem;
    cxGroupBox3: TcxGroupBox;
    cxMemo1: TcxMemo;
    cxMemo6: TcxMemo;
    cxLabel3: TcxLabel;
    cxMemo3: TcxMemo;
    cxLabel17: TcxLabel;
    cxMemo5: TcxMemo;
    cxLabel16: TcxLabel;
    cxMemo2: TcxMemo;
    cxLabel15: TcxLabel;
    cxMemo4: TcxMemo;
    cxLabel14: TcxLabel;
    cxLabel4: TcxLabel;
    PMRECETAS: TPopupMenu;
    ELIMINARRECETA1: TMenuItem;
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxGridDBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure RESULTADO1Click(Sender: TObject);
    procedure ELIMINARLABORATORIO1Click(Sender: TObject);
    procedure cxGridDBTableView2CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ELIMINARRECETA1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  CODIGO,
  FECHA,
  NOMBRE,
  PRIMER_APELLIDO,
  SEGUNDO_APELLIDO,
  EDAD,
  MOTIVO_DE_CONSULTA,
  HISTORIA_DE_LA_ENFERMEDAD_ACTUAL,
  SEXO,
  PULSO,
  TEMPERATURA,
  TA,
  PESO,
  TALLA,
  IMC,
  DATOS_POSITIVOS_EXAMEN_FISICO,
  ESTUDIOS_COMPLEMENTARIOS,
  IMPRESION_DIAGNOSTICA,
  TRATAMIENTO,
  OBSERVACIONES,
  TABAQUISMO,
  ALCOHOLISMO,
  TIPO_DE_SANGRE,
  RH,
  APP,
  APF,
  ALERGIAS,
  DOCTOR:string;

  CODIGO_RECETA:Integer;
  RECOMENDACIONES_RECETA:string;
  SEXO_RECETA,EDAD_RECETA,PESO_RECETA,TALLA_RECETA,TEMP_RECETA,TA_RECETA,RECOM_RECETA:string;
  end;

var
  FHistoriaClinica: TFHistoriaClinica;
  CODIGO_LAB:Integer;

  

implementation

{$R *.dfm}
uses UBuscarPaciente,UDMPacientes,ComObj,
     ULogin,UCrearReceta,UConsultasVender,UConsultas,
     ULaboratorios,ULabResult;

     
// IMPRIMIR LA CONSULTA
procedure TFHistoriaClinica.cxButton1Click(Sender: TObject);
var
 Word: Variant;
 Documento: Variant;
begin
   if EditConsulta.Text <> '' then
   begin
     try
      (* Creas un objeto Word *)
       Word := CreateOleObject('Word.Application');

      (* Añades un documento basado en la plantilla *)
       Word.Documents.Add(ExtractFilePath(Application.ExeName)+'HISTORIA CLINICA.dot');
       Documento := Word.Documents.Item(1);

      (* Asignas valores a los campos *)

        Documento.Variables.Add('FECHA',FECHA);
        Documento.Variables.Add('NOMBRE',NOMBRE);
        Documento.Variables.Add('PRIMER_APELLIDO',PRIMER_APELLIDO);
        Documento.Variables.Add('SEGUNDO_APELLIDO',SEGUNDO_APELLIDO);
        Documento.Variables.Add('EDAD',EDAD);
        Documento.Variables.Add('MOTIVO_DE_CONSULTA',MOTIVO_DE_CONSULTA);
        Documento.Variables.Add('HISTORIA_DE_LA_ENFERMEDAD_ACTUAL',HISTORIA_DE_LA_ENFERMEDAD_ACTUAL);
        Documento.Variables.Add('SEXO',SEXO);
        Documento.Variables.Add('PULSO',PULSO);
        Documento.Variables.Add('TEMPERATURA',TEMPERATURA);
        Documento.Variables.Add('TA',TA);
        Documento.Variables.Add('PESO',PESO);
        Documento.Variables.Add('TALLA',TALLA);
        Documento.Variables.Add('IMC',IMC);
        Documento.Variables.Add('DATOS_POSITIVOS_EXAMEN_FISICO',DATOS_POSITIVOS_EXAMEN_FISICO);
        Documento.Variables.Add('ESTUDIOS_COMPLEMENTARIOS',ESTUDIOS_COMPLEMENTARIOS);
        Documento.Variables.Add('IMPRESION_DIAGNOSTICA',IMPRESION_DIAGNOSTICA);
        Documento.Variables.Add('TRATAMIENTO',TRATAMIENTO);
        Documento.Variables.Add('OBSERVACIONES',OBSERVACIONES);
        Documento.Variables.Add('TABAQUISMO',TABAQUISMO);
        Documento.Variables.Add('ALCOHOLISMO',ALCOHOLISMO);
        Documento.Variables.Add('TIPO_DE_SANGRE',TIPO_DE_SANGRE);
        Documento.Variables.Add('RH',RH);
        Documento.Variables.Add('APP',APP);
        Documento.Variables.Add('APF',APF);
        Documento.Variables.Add('ALERGIAS',ALERGIAS);
        Documento.Variables.Add('DOCTOR',DOCTOR);

       Documento.Fields.Update;
     //  Documento.Fields.ToggleShowCodes;
       Word.Visible := true;
     except
       Documento.Free;
       ShowMessage('NO SE PUDO GENERAR LA CONSULTA');
     end;
   end
   else
   begin
     ShowMessage('PRIMERO DEBE SELECCIONAR UNA CONSULTA.');
   end;
   
end;

// IMPRIMIR LA RECETA
procedure TFHistoriaClinica.cxButton4Click(Sender: TObject);
var 
 i:Integer;
 Word: Variant;
 Documento: Variant;
 C:Integer;
 MED,PRE,DOS:string;
begin

      // IMPRIMIENDO LA RECETA.
   if EditReceta.Text <> '' then
   begin
        C:=0;

       try
        (* Creas un objeto Word *)
         Word := CreateOleObject('Word.Application');

        (* Añades un documento basado en la plantilla *)
         Word.Documents.Add(ExtractFilePath(Application.ExeName)+'RECETA.dot');
         Documento := Word.Documents.Item(1);

        (* Asignas valores a los campos *)
         Documento.Variables.Add('N',cxTextEdit2.Text+ ' '+cxTextEdit9.Text);
         Documento.Variables.Add('F', DateToStr(NOW));
         Documento.Variables.Add('E', EDAD_RECETA);
         Documento.Variables.Add('S', SEXO_RECETA);
         Documento.Variables.Add('P', PESO_RECETA);
         Documento.Variables.Add('T', TALLA_RECETA);
         Documento.Variables.Add('TEMP', TEMP_RECETA);
         Documento.Variables.Add('R', RECOM_RECETA);
         Documento.Variables.Add('TA', TA_RECETA);

         for I := 0 to FDMPacientes.QRecetaMedicamentos.RecordCount -1 do
         begin
           if I = 0 then  FDMPacientes.QRecetaMedicamentos.First;

           Inc(C);

           MED:=  FDMPacientes.QRecetaMedicamentos.FieldValues['MEDICAMENTO'];
           Documento.Variables.Add('M'+INTTOSTR(C), MED);

           PRE:=  FDMPacientes.QRecetaMedicamentos.FieldValues['PRESENTACION'];
           Documento.Variables.Add('P'+INTTOSTR(C), PRE);

           DOS:=  FDMPacientes.QRecetaMedicamentos.FieldValues['DOSIS'];
           Documento.Variables.Add('D'+INTTOSTR(C), DOS);

           FDMPacientes.QRecetaMedicamentos.Next;
         end;

         for I := C to 7 do
         begin

            if C < 8 then
            begin
             Inc(C);

               Documento.Variables.Add('M'+INTTOSTR(C), ' ');

               Documento.Variables.Add('P'+INTTOSTR(C), ' ');

               Documento.Variables.Add('D'+INTTOSTR(C), ' ');

            end;
         end;

         Documento.Fields.Update;
       //  Documento.Fields.ToggleShowCodes;
         Word.Visible := true;
       except
         Documento.Free;
         ShowMessage('NO SE PUDO GENERAR LA CITA');
       end;
   end
   else
   begin
       ShowMessage('DEBE SELECCIONAR UNA RECETA.');
   end;
end;


// AGREGAR SERVICIOS
procedure TFHistoriaClinica.cxButton5Click(Sender: TObject);
begin
  try
     FConsultasVender.ShowModal; 
     cxGridDBTableView3.DataController.DataSource.DataSet.Refresh;
  except on E: Exception do
  end;
end;

// NUEVA CONSULTA
procedure TFHistoriaClinica.cxButton6Click(Sender: TObject);
begin
   try
      FCONSULTAS.ShowModal;
      cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
   except on E: Exception do
   
   end;
end;

// NUEVO LAB
procedure TFHistoriaClinica.cxButton7Click(Sender: TObject);
begin
   try
      FLaboratorios.ShowModal;
      cxGridDBTableView2.DataController.DataSource.DataSet.Refresh;
   except on E: Exception do
   
   end;
end;

// NUEVA RECETA
procedure TFHistoriaClinica.cxButton2Click(Sender: TObject);
begin
  if EditConsulta.Text <> '' then
  begin
    FCrearReceta.ShowModal;
    cxGridDBTableView1.DataController.DataSource.DataSet.Refresh;
  end
  else
  begin
    ShowMessage('DEBE SELECCIONAR LA CONSULTA PRIMERO');
  end;
end;


// CLICK EN LA TABLA DE LAS CONSULTAS
procedure TFHistoriaClinica.cxGrid1DBTableView1CellClick(
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

     CODIGO:=cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['CODIGO'];
     FECHA:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['FECHA'];
     NOMBRE:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['NOMBRE'];
     PRIMER_APELLIDO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['PRIMER_APELLIDO'];
     SEGUNDO_APELLIDO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['SEGUNDO_APELLIDO'];
     EDAD:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['EDAD'];
     MOTIVO_DE_CONSULTA:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['MOTIVO_DE_CONSULTA'];
     HISTORIA_DE_LA_ENFERMEDAD_ACTUAL:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['HISTORIA_DE_LA_ENFERMEDAD_ACTUAL'];
     SEXO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['SEXO'];
     PULSO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['PULSO'];
     TEMPERATURA:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['TEMPERATURA'];
     TA:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['TA'];
     PESO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['PESO'];
     TALLA:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['TALLA'];
     IMC:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['IMC'];
     DATOS_POSITIVOS_EXAMEN_FISICO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['DATOS_POSITIVOS_EXAMEN_FISICO'];
     ESTUDIOS_COMPLEMENTARIOS:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['ESTUDIOS_COMPLEMENTARIOS'];
     IMPRESION_DIAGNOSTICA:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['IMPRESION_DIAGNOSTICA'];
     TRATAMIENTO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['TRATAMIENTO'];
     OBSERVACIONES:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['OBSERVACIONES'];
     TABAQUISMO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['TABAQUISMO'];
     ALCOHOLISMO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['ALCOHOLISMO'];
     TIPO_DE_SANGRE:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['TIPO_DE_SANGRE'];
     RH:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['RH'];
     APP:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['APP'];
     APF:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['APF'];
     ALERGIAS:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['ALERGIAS'];
     DOCTOR:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['DOCTOR'];

     EditConsulta.Text:=DOCTOR;

  except on E: Exception do

  end;
end;


// CLICK EN LA TABLA DE LAS RECETAS
procedure TFHistoriaClinica.cxGridDBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  try
      EditReceta.Text:=cxGridDBTableView1.DataController.DataSource.DataSet.FieldValues['CODIGO'];
      
  except on E: Exception do
  end;

  try
      CODIGO_RECETA:=cxGridDBTableView1.DataController.DataSource.DataSet.FieldValues['CODIGO'];
      RECOMENDACIONES_RECETA:= cxGridDBTableView1.DataController.DataSource.DataSet.FieldValues['RECOMENDACIONES'];
      EDAD_RECETA:=cxGridDBTableView1.DataController.DataSource.DataSet.FieldValues['EDAD'];
      PESO_RECETA:=cxGridDBTableView1.DataController.DataSource.DataSet.FieldValues['PESO'];
      TALLA_RECETA:=cxGridDBTableView1.DataController.DataSource.DataSet.FieldValues['TALLA'];
      TEMP_RECETA:=cxGridDBTableView1.DataController.DataSource.DataSet.FieldValues['TEMPERATURA'];
      TA_RECETA:=cxGridDBTableView1.DataController.DataSource.DataSet.FieldValues['TA'];
      RECOM_RECETA:=cxGridDBTableView1.DataController.DataSource.DataSet.FieldValues['RECOMENDACIONES'];
      
   //   Edit1.Text:=RECOMENDACIONES;

      if SWSEXO.Checked = False then SEXO_RECETA:='M';
      if SWSEXO.Checked = True  then SEXO_RECETA:='F';



      FDMPacientes.QRecetaMedicamentos.ParamByName('CODIGO_RECETA').AsInteger:=CODIGO_RECETA;
      FDMPacientes.QRecetaMedicamentos.Execute;

      cxGridDBTableView5.DataController.DataSource.DataSet.Active:=True;
      cxGridDBTableView5.DataController.DataSource.DataSet.Refresh;

  except on E: Exception do
  end;

end;


// CLICK EN LA TABLA DE LOS LABORATORIOS
procedure TFHistoriaClinica.cxGridDBTableView2CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  CODIGO_LAB:=cxGridDBTableView2.DataController.DataSource.DataSet.FieldValues['CODIGO'];
end;


// RESULTADO LABORATORIO
procedure TFHistoriaClinica.RESULTADO1Click(Sender: TObject);
begin
  FLabResult.ShowModal;

  try
     FDMPacientes.QLabResult.ParamByName('RESULTADO').AsString:=  FLabResult.RESULTADO;
     FDMPacientes.QLabResult.ParamByName('CODIGO').AsInteger:=  CODIGO_LAB;
     FDMPacientes.QLabResult.Execute;
     cxGridDBTableView2.DataController.DataSource.DataSet.Refresh;

     ShowMessage('RESULTADO AGREGADO CON EXITO');
  except on E: Exception do
    ShowMessage('NO SE PUDO AGREGAR EL RESULTADO.');
  end;
  
end;

// ELIMINAR LABORATORIO
procedure TFHistoriaClinica.ELIMINARLABORATORIO1Click(Sender: TObject);
begin
  try
     FDMPacientes.QEliminarLab.ParamByName('CODIGO').AsInteger:=CODIGO_LAB;
     FDMPacientes.QEliminarLab.Execute;
     cxGridDBTableView2.DataController.DataSource.DataSet.Refresh;
     ShowMessage('LABORATORIO ELIMINADO CON EXITO');

  except on E: Exception do
    ShowMessage('NO SE PUDO ELIMINAR EL LABORATORIO');
  end;
end;

// ELIMINAR RECETA
procedure TFHistoriaClinica.ELIMINARRECETA1Click(Sender: TObject);
begin
   try

     FDMPacientes.QEliminarReceta.ParamByName('CODIGO').AsInteger:=CODIGO_RECETA;
     FDMPacientes.QEliminarReceta.Execute;
     cxGridDBTableView1.DataController.DataSource.DataSet.Refresh;
     cxGridDBTableView5.DataController.DataSource.DataSet.Refresh;
     ShowMessage('RECETA ELIMINADA CON EXITO');

   except on E: Exception do
      ShowMessage('NO SE PUDO ELIMINAR LA RECETA');
   end;
end;



//ON ACTIVATE
procedure TFHistoriaClinica.FormActivate(Sender: TObject);
begin
   // MOSTRANDO LOS DATOS DEL PACIENTE
  try
     cxTextEdit1.Text:=IntToStr(FBuscarPaciente.CODIGO);
     cxTextEdit2.Text:=FBuscarPaciente.NOMBRE;
     cxTextEdit9.Text:=FBuscarPaciente.PRIMER_APELLIDO;
     cxTextEdit10.Text:=FBuscarPaciente.SEGUNDO_APELLIDO;

     if FBuscarPaciente.SEXO = 'M' then  SWSEXO.Checked:=false;
     if FBuscarPaciente.SEXO = 'F' then  SWSEXO.Checked:=true;

  except on E: Exception do
  end;

   // MOSTRANDO LAS CONSULTAS
  try
     if cxTextEdit1.Text <> '' then
     begin
        FDMPacientes.QConsutas.ParamByName('CODIGO').AsInteger:= StrToInt(cxTextEdit1.Text);
        FDMPacientes.QConsutas.ParamByName('DOCTOR').ASSTRING:= FLogin.NOMBRE_COMPLETO;
        FDMPacientes.QConsutas.Execute;
        cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
     end;
  except on E: Exception do
  end;

  // MOSTRANDO LAS RECETAS
  try
     if cxTextEdit1.Text <> '' then
     begin
        FDMPacientes.QRECETAS.ParamByName('CODIGO').AsInteger:= StrToInt(cxTextEdit1.Text);
        FDMPacientes.QRECETAS.ParamByName('DOCTOR').ASSTRING:= FLogin.NOMBRE_COMPLETO;
        FDMPacientes.QRECETAS.Execute;
        cxGridDBTableView1.DataController.DataSource.DataSet.Active:=True;
     end;
  except on E: Exception do
  end;

  // MOSTRANDO LOS LABORATORIOS
  try
     if cxTextEdit1.Text <> '' then
     begin
        FDMPacientes.QLaboratorios.ParamByName('CODIGO').AsInteger:= StrToInt(cxTextEdit1.Text);
        FDMPacientes.QLaboratorios.ParamByName('DOCTOR').ASSTRING:= FLogin.NOMBRE_COMPLETO;
        FDMPacientes.QLaboratorios.Execute;
        cxGridDBTableView2.DataController.DataSource.DataSet.Active:=True;
     end;
  except on E: Exception do
  end;

  // MOSTRANDO LOS SERVICIOS
  try
     if cxTextEdit1.Text <> '' then
     begin
        FDMPacientes.QServicios.ParamByName('CODIGO').AsInteger:= StrToInt(cxTextEdit1.Text);
        FDMPacientes.QServicios.ParamByName('DOCTOR').ASSTRING:= FLogin.NOMBRE_COMPLETO;
        FDMPacientes.QServicios.Execute;
        cxGridDBTableView3.DataController.DataSource.DataSet.Active:=True;
     end;
  except on E: Exception do
  end;

//  // MOSTRANDO LOS INSUMOS
//  try
//     if cxTextEdit1.Text <> '' then
//     begin
//        FDMPacientes.QInsumoshist.ParamByName('CODIGO').AsInteger:= StrToInt(cxTextEdit1.Text);
//        FDMPacientes.QInsumoshist.ParamByName('DOCTOR').ASSTRING:= FLogin.NOMBRE_COMPLETO;
//        FDMPacientes.QInsumoshist.Execute;
//        cxGridDBTableView4.DataController.DataSource.DataSet.Active:=True;
//     end;
//  except on E: Exception do
//  end;

end;

// ON CLOSE
procedure TFHistoriaClinica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   try
       cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=False;
       cxGridDBTableView1.DataController.DataSource.DataSet.Active:=False;
       cxGridDBTableView2.DataController.DataSource.DataSet.Active:=False;
       cxGridDBTableView3.DataController.DataSource.DataSet.Active:=False;
//       cxGridDBTableView4.DataController.DataSource.DataSet.Active:=False;

       EditConsulta.Clear;
       EditReceta.Clear;

   except on E: Exception do
   end;
end;



end.
