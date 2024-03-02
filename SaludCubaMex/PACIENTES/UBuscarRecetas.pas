unit UBuscarRecetas;

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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.Menus, cxTextEdit,
  cxLabel, Vcl.StdCtrls, cxButtons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox, cxCheckBox, dxToggleSwitch;

type
  TFBuscarRecetas = class(TForm)
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO_PACIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1PRIMER_APELLIDO: TcxGridDBColumn;
    cxGrid1DBTableView1SEGUNDO_APELLIDO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO: TcxGridDBColumn;
    cxGrid1DBTableView1SEXO: TcxGridDBColumn;
    cxGrid1DBTableView1PESO: TcxGridDBColumn;
    cxGrid1DBTableView1TALLA: TcxGridDBColumn;
    cxGrid1DBTableView1TA: TcxGridDBColumn;
    cxGrid1DBTableView1TEMPERATURA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1DOCTOR: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox3: TcxGroupBox;
    cxButton3: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxTextEdit10: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    SWSEXO: TdxToggleSwitch;
    cxLabel6: TcxLabel;
    cxLabel5: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxTextEdit6: TcxTextEdit;
    cxGridDBTableView1CODIGO_RECETA: TcxGridDBColumn;
    cxGridDBTableView1MEDICAMENTO: TcxGridDBColumn;
    cxGridDBTableView1PRESENTACION: TcxGridDBColumn;
    cxGridDBTableView1DOSIS: TcxGridDBColumn;
    cxGrid1DBTableView1RECOMENDACIONES: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    ELIMINARRECETA1: TMenuItem;
    Edit1: TEdit;
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton3Click(Sender: TObject);
    procedure ELIMINARRECETA1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBuscarRecetas: TFBuscarRecetas;
  CODIGO_RECETA:Integer;
  SEXO,RECOMENDACIONES:string;

implementation

{$R *.dfm}
  USES UDMPacientes,UBuscarPaciente,UBuscarConsultas,ULogin,ComObj;

  // imprimir
procedure TFBuscarRecetas.cxButton3Click(Sender: TObject);
var
 Word: Variant;
 Documento: Variant;
 I,C:Integer;
 MED,PRE,DOS:string;
begin
   if Edit1.Text <> '' then
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
       Documento.Variables.Add('E', FBuscarConsultas.EDAD);
       Documento.Variables.Add('S', SEXO);
       Documento.Variables.Add('P', cxTextEdit3.Text);
       Documento.Variables.Add('T', cxTextEdit4.Text);
       Documento.Variables.Add('TEMP', cxTextEdit6.Text);
       Documento.Variables.Add('R', RECOMENDACIONES);
       Documento.Variables.Add('TA', cxTextEdit5.Text);

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

procedure TFBuscarRecetas.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  try
      CODIGO_RECETA:=cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['CODIGO'];
      RECOMENDACIONES:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['RECOMENDACIONES'];

      Edit1.Text:=RECOMENDACIONES;

      if SWSEXO.Checked = False then SEXO:='M';
      if SWSEXO.Checked = True  then SEXO:='F';



      FDMPacientes.QRecetaMedicamentos.ParamByName('CODIGO_RECETA').AsInteger:=CODIGO_RECETA;
      FDMPacientes.QRecetaMedicamentos.Execute;

      cxGridDBTableView1.DataController.DataSource.DataSet.Active:=True;
      cxGridDBTableView1.DataController.DataSource.DataSet.Refresh;

  except on E: Exception do
  end;

end;


procedure TFBuscarRecetas.ELIMINARRECETA1Click(Sender: TObject);
begin
  try
     FDMPacientes.QEliminarReceta.ParamByName('CODIGO').AsInteger:=CODIGO_RECETA;
     FDMPacientes.QEliminarReceta.ParamByName('CODIGO_RECETA').AsInteger:=CODIGO_RECETA;
     FDMPacientes.QEliminarReceta.Execute;

     cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
     cxGridDBTableView1.DataController.DataSource.DataSet.Refresh;
     ShowMessage('RECETA ELIMINADA CON EXITO');

  except on E: Exception do
    ShowMessage('NO SE PUDO ELIMINAR LA RECETA');
  end;
end;

procedure TFBuscarRecetas.FormActivate(Sender: TObject);
begin
    try
     cxTextEdit1.Text:=IntToStr(FBuscarPaciente.CODIGO);
     cxTextEdit2.Text:=FBuscarPaciente.NOMBRE;
     cxTextEdit9.Text:=FBuscarPaciente.PRIMER_APELLIDO;
     cxTextEdit10.Text:=FBuscarPaciente.SEGUNDO_APELLIDO;

     if FBuscarPaciente.SEGUNDO_APELLIDO = 'M' then  SWSEXO.Checked:=False;
     if FBuscarPaciente.SEGUNDO_APELLIDO = 'F' then  SWSEXO.Checked:=True;

     cxTextEdit3.Text:=  FBuscarConsultas.PESO;
     cxTextEdit5.Text:=  FBuscarConsultas.TA;
     cxTextEdit6.Text:=  FBuscarConsultas.TEMPERATURA;
     cxTextEdit4.Text:=  FBuscarConsultas.TALLA;


      FDMPacientes.QRecetas.ParamByName('CODIGO').AsInteger:=StrToInt(cxTextEdit1.Text);
      FDMPacientes.QRecetas.ParamByName('DOCTOR').AsString:=FLOGIN.NOMBRE_COMPLETO;
      FDMPacientes.QRecetas.Execute;

      cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;


    except on E: Exception do
    end;
end;

procedure TFBuscarRecetas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
      cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=False;
      cxGridDBTableView1.DataController.DataSource.DataSet.Active:=False;

  except on E: Exception do
  end;
end;

end.
