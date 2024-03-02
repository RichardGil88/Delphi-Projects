unit UCrearReceta;

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
  cxGroupBox, cxCheckBox, dxToggleSwitch, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.ComCtrls,
  dxBarBuiltInMenu, cxPC, cxTreeView, Winapi.ShlObj, cxShellCommon,
  cxShellTreeView, cxMemo, Vcl.ExtCtrls, FireDAC.VCLUI.Memo, cxRichEdit,
  dxCustomPreview, dxPDFViewer;

type
  TFCrearReceta = class(TForm)
    cxPageControl1: TcxPageControl;
    TABRECETA: TcxTabSheet;
    TABTRATAMIENTOS: TcxTabSheet;
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
    cxLabel10: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLabel13: TcxLabel;
    cxShellTreeView1: TcxShellTreeView;
    cxMemo1: TcxMemo;
    cxLabel14: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    cxLabel8: TcxLabel;
    cxTextEdit11: TcxTextEdit;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxLabel12: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxButton1: TcxButton;
    cxGrid1DBTableView1MEDICAMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRESENTACION: TcxGridDBColumn;
    cxGrid1DBTableView1DOSIS: TcxGridDBColumn;
    cxButton2: TcxButton;
    PMMEDICAMENTOS: TPopupMenu;
    ELIMINAR1: TMenuItem;
    cxButton4: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxShellTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure ELIMINAR1Click(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCrearReceta: TFCrearReceta;
  ARCHIVO:string;
  Node: TTreeNode;
  PATH:string;
  CODIGO_RECETA1:Integer;
  CODIGO_TEMP:Integer;

  CANT:Integer;

implementation

{$R *.dfm}
USES UDMPacientes,ULogin,UBuscarPaciente,UDMCodificadores,
     UHistoriaClinica,ComObj;


// AGREGAR  MEDICAMENTO A TEMP
procedure TFCrearReceta.cxButton1Click(Sender: TObject);
begin
  //  INSERTAR EN TEMP

  if (cxTextEdit7.Text = '') OR (cxTextEdit11.Text = '') OR (cxTextEdit8.Text = '') then
  begin
    ShowMessage('USTED DEBE LLENAR TODOS LOS CAMPOS');
  end
  else
  begin
    try
      if CANT < 7 then
      begin

        FDMPacientes.QInsertatTemp.ParamByName('MEDICAMENTO').AsString:=cxTextEdit7.Text;
        FDMPacientes.QInsertatTemp.ParamByName('PRESENTACION').AsString:=cxTextEdit11.Text;
        FDMPacientes.QInsertatTemp.ParamByName('DOSIS').AsString:=cxTextEdit8.Text;
        FDMPacientes.QInsertatTemp.Execute;

        cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
        cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

        cxTextEdit7.Clear;
        cxTextEdit8.Clear;
        cxTextEdit11.Clear;

        CANT:=CANT+1;
      end
      else
      begin
        ShowMessage('SOLO SE PERMITEN 7 MEDICAMENTOS POR RECETA');
      end;

    except on E: Exception do

    end;
  end;

end;

// CANCELAR
procedure TFCrearReceta.cxButton2Click(Sender: TObject);
begin
  // ELIMINANDO TODO DE LA TABLA MED TEMP..
  try
      FDMPacientes.QEliminarTemp.Execute;
      cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

  except on E: Exception do

  end;

end;

// CREAR E IMPRIMIR LA RECETA RECETA
procedure TFCrearReceta.cxButton4Click(Sender: TObject);
var
 I:Integer;
 MEDICAMENTOTEMP,PRESENTACIONTEMP,DOSISTEMP:string;

 Word: Variant;
 Documento: Variant;
 C:Integer;
 MED,PRE,DOS:string;

begin
  try

    FDMPacientes.QMedTemp.Execute;

    if (cxMemo1.Text = '') OR (FDMPacientes.QMedTemp.RecordCount <1)then
    begin
      ShowMessage('USTED DEBE LLENAR LAS TODOS LOS CAMPOS Y AGREGAR AL MENOS UN MEDICAMENTO.');
    end
    else
    begin

       // SI NO HA INSERTADO NINGUN MEDICAMENTO AUN
      if CANT > 0 then
      begin
        // INSERTANDO LA RECETA
        with FDMPacientes.QInsertarReseta do
        begin
          ParamByName('CODIGO_PACIENTE').AsInteger:=StrToInt(cxTextEdit1.Text);
          ParamByName('NOMBRE').AsString:=cxTextEdit2.Text;
          ParamByName('PRIMER_APELLIDO').AsString:=cxTextEdit9.Text;
          ParamByName('SEGUNDO_APELLIDO').AsString:=cxTextEdit10.Text;
          ParamByName('TIPO').AsString:='RECETA';
          ParamByName('EDAD').AsString:=UHistoriaClinica.FHistoriaClinica.EDAD;

          if SWSEXO.Checked = True then ParamByName('SEXO').AsString:='F';
          if SWSEXO.Checked = False then ParamByName('SEXO').AsString:='M';

          ParamByName('PESO').AsString:=cxTextEdit3.Text;
          ParamByName('TALLA').AsString:=cxTextEdit4.Text;
          ParamByName('TA').AsString:=cxTextEdit5.Text;
          ParamByName('TEMPERATURA').AsString:=cxTextEdit6.Text;
          ParamByName('FECHA').AsDate:=NOW;
          ParamByName('DOCTOR').AsString:=FLogin.NOMBRE_COMPLETO;
          ParamByName('RECOMENDACIONES').AsMemo:=cxMemo1.Text;
          Execute;

          //  OBTENIENDO EL ULTIMO ID DE RECETA.
          FDMPacientes.QLast.Execute;
          CODIGO_RECETA1:= FDMPacientes.QLast.FieldValues['CODIGO'];

          //INSERTANDO LOS MEDICAMENTOS DE LA RECETA
          FDMPacientes.QMedTemp.Execute;
          for I := 0 to FDMPacientes.QMedTemp.RecordCount -1 do
          begin
            if I=0 then  FDMPacientes.QMedTemp.First;

            MEDICAMENTOTEMP:= FDMPacientes.QMedTemp.FieldValues['MEDICAMENTO'];
            PRESENTACIONTEMP:= FDMPacientes.QMedTemp.FieldValues['PRESENTACION'];
            DOSISTEMP:= FDMPacientes.QMedTemp.FieldValues['DOSIS'];

            FDMPacientes.QInsertarMedicamentosReceta.ParamByName('CODIGO_RECETA').AsInteger:=CODIGO_RECETA1;
            FDMPacientes.QInsertarMedicamentosReceta.ParamByName('MEDICAMENTO').AsString:=MEDICAMENTOTEMP;
            FDMPacientes.QInsertarMedicamentosReceta.ParamByName('PRESENTACION').AsString:=PRESENTACIONTEMP;
            FDMPacientes.QInsertarMedicamentosReceta.ParamByName('DOSIS').AsString:=DOSISTEMP;
            FDMPacientes.QInsertarMedicamentosReceta.Execute;

            FDMPacientes.QMedTemp.Next;
          end;

          ShowMessage('RECETA ADICIONADA CON EXITO');
          CANT:=0;
        end;
      end
      else
      begin
        ShowMessage('DEBE AGREGAR AL MENOS UN MEDICAMENTO A LA RECETA');
      end;

      // IMPRIMIENDO LA RECETA.
      try
        if FDMPacientes.QMedTemp.RecordCount > 0 then
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
             Documento.Variables.Add('E', FHistoriaClinica.EDAD);
             Documento.Variables.Add('S', FHistoriaClinica.SEXO);
             Documento.Variables.Add('P', FHistoriaClinica.PESO);
             Documento.Variables.Add('T', FHistoriaClinica.TALLA);
             Documento.Variables.Add('TEMP', FHistoriaClinica.TEMPERATURA);
             Documento.Variables.Add('R', cxMemo1.Text);
             Documento.Variables.Add('TA', FHistoriaClinica.TA);

             for I := 0 to FDMPacientes.QMedTemp.RecordCount -1 do
             begin
               if I = 0 then  FDMPacientes.QMedTemp.First;

               Inc(C);

               MED:=  FDMPacientes.QMedTemp.FieldValues['MEDICAMENTO'];
               Documento.Variables.Add('M'+INTTOSTR(C), MED);

               PRE:=  FDMPacientes.QMedTemp.FieldValues['PRESENTACION'];
               Documento.Variables.Add('P'+INTTOSTR(C), PRE);

               DOS:=  FDMPacientes.QMedTemp.FieldValues['DOSIS'];
               Documento.Variables.Add('D'+INTTOSTR(C), DOS);

               FDMPacientes.QMedTemp.Next;
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
             ShowMessage('NO SE PUDO GENERAR LA RECETA');
           end;
         end;

      except on E: Exception do

      end;


      // LIMPIANDO TEMP Y CERRANDO LA PANTALLA
      try
        FDMPacientes.QEliminarTemp.Execute;
        cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

        FCrearReceta.Close;
      except on E: Exception do

      end;

    end;
  except on E: Exception do
    ShowMessage('NO SE PUDO ADICIONAR LA RECETA');
  end;


end;


procedure TFCrearReceta.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  try
     CODIGO_TEMP:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['CODIGO'];

  except on E: Exception do
  end;
end;

procedure TFCrearReceta.cxShellTreeView1Change(Sender: TObject; Node: TTreeNode);
begin
   ARCHIVO:= Node.Text;
  if FileExists(PATH+ARCHIVO) then
   begin
    // dxPDFViewer1.LoadFromFile(PATH+ARCHIVO);

     if ExtractFileExt(node.Text)='.doc'  then
     begin
       //dxPDFViewer1.Lines.Clear;


      end;
   end;
end;

// ELIMINAR MEDICAMENTO DE TEMP
procedure TFCrearReceta.ELIMINAR1Click(Sender: TObject);
begin
  // ELIMINANDO TODO DE LA TABLA MED TEMP..
  try
    FDMPacientes.QEliminarTemp1.ParamByName('CODIGO').AsInteger:=CODIGO_TEMP;
    FDMPacientes.QEliminarTemp1.Execute;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

  except on E: Exception do

  end;
end;

procedure TFCrearReceta.FormActivate(Sender: TObject);
begin
  try
     cxTextEdit1.Text:=IntToStr(FBuscarPaciente.CODIGO);
     cxTextEdit2.Text:=FBuscarPaciente.NOMBRE;
     cxTextEdit9.Text:=FBuscarPaciente.PRIMER_APELLIDO;
     cxTextEdit10.Text:=FBuscarPaciente.SEGUNDO_APELLIDO;


     if FBuscarPaciente.SEXO = 'M' then  SWSEXO.Checked:=false;
     if FBuscarPaciente.SEXO = 'F' then  SWSEXO.Checked:=true;

     cxTextEdit5.Text:= FHistoriaClinica.TA;
     cxTextEdit6.Text:= FHistoriaClinica.TEMPERATURA;
     cxTextEdit4.Text:= FHistoriaClinica.TALLA;
     cxTextEdit3.Text:= FHistoriaClinica.PESO;

     if FLogin.CARGO <> 'DIRECTOR MEDICO'  then
     begin
        TABTRATAMIENTOS.Visible:=False;
     end;

     if FLogin.USUARIO <> 'ANGELADOC'  then
     begin
        TABTRATAMIENTOS.Visible:=False;
     end;

    //  TAB TRATAMIENTOS
    PATH:= ExtractFilePath(Application.ExeName)+ 'TRATAMIENTOS\';

    cxShellTreeView1.Root.CustomPath:=  PATH;
   // cxShellTreeView1.Root.


  except on E: Exception do
     ShowMessage('ERROR');
  end;
end;

procedure TFCrearReceta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    try
      cxTextEdit11.Clear;
      cxTextEdit1.Clear;
      cxTextEdit2.Clear;
      cxTextEdit3.Clear;
      cxTextEdit4.Clear;
      cxTextEdit5.Clear;
      cxTextEdit7.Clear;
      cxTextEdit8.Clear;
      cxTextEdit9.Clear;
      cxTextEdit10.Clear;
      cxMemo1.Clear;

      CANT:=0;

    except on E: Exception do
    end;

end;

end.
