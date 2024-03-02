unit UModificarCita;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxDropDownEdit, cxCalendar, cxSpinEdit, cxTimeEdit, Vcl.StdCtrls, cxButtons,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxLabel,
  cxTextEdit, cxGroupBox;

type
  TFModificarCita = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxTextEdit1: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel3: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxDateEdit1: TcxDateEdit;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1MOTIVO: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_CITA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_CONFIRMACION: TcxGridDBColumn;
    cxGrid1DBTableView1MEDICO_ASIGNADO: TcxGridDBColumn;
    cxGrid1DBTableView1RECEPCIONISTA: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1HORA_INICIO: TcxGridDBColumn;
    cxGrid1DBTableView1HORA_FIN: TcxGridDBColumn;
    cxLabel8: TcxLabel;
    cxLookupComboBox5: TcxLookupComboBox;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox4: TcxLookupComboBox;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1TELEFONO: TcxGridDBColumn;
    procedure FormActivate(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxLookupComboBox3PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FModificarCita: TFModificarCita;
  CODIGO:Integer;

implementation
 USES UDMCitas,UDMCodificadores,ULogin;
{$R *.dfm}

// MODIFICAR CITA
procedure TFModificarCita.cxButton1Click(Sender: TObject);
begin
   if cxTextEdit1.Text = '' then
   begin
     ShowMessage('DEBE SELECCIONAR UNA CITA DE LA TABLA');
   end
   else
   begin

      if (cxDateEdit1.Text = '') OR
         (cxLookupComboBox1.Text='') OR
         (cxLookupComboBox2.Text='') OR
         (cxLookupComboBox3.Text='') OR
         (cxLookupComboBox4.Text='') OR
         (cxLookupComboBox5.Text='') OR
         (cxMaskEdit1.Text='') OR
         (cxTextEdit1.Text='')
      then
      begin
         ShowMessage('DEBE LLENAR TODOS LOS CAMPOS');
      end
      else
      begin
         try
           with FDMCitas.QUpdateCita do
           begin
              ParamByName('CODIGO').AsInteger:= CODIGO;
              ParamByName('NOMBRE').AsString:= cxTextEdit1.Text;
              ParamByName('TELEFONO').AsString:= cxMaskEdit1.Text;
              ParamByName('MOTIVO').AsString:= cxLookupComboBox1.Text;
              ParamByName('ESTADO').AsString:= cxLookupComboBox2.Text;
              ParamByName('FECHA_CITA').AsDate:= cxDateEdit1.Date;
              ParamByName('HORA_INICIO').AsString:= cxLookupComboBox3.text;
              ParamByName('HORA_FIN').AsString:= cxLookupComboBox4.text;
              ParamByName('DOCTOR').AsString:= cxLookupComboBox5.text;

              if cxLookupComboBox2.Text = 'CONFIRMADA' then
              begin
                ParamByName('FECHA_CONFIRMACION').AsDate:=NOW;
              end;

              Execute;
           end;

            cxTextEdit1.SetFocus;
            cxTextEdit1.Clear;
            cxMaskEdit1.Clear;
            cxLookupComboBox1.Clear;
            cxLookupComboBox2.Clear;
            cxLookupComboBox3.Clear;
            cxLookupComboBox4.Clear;
            cxLookupComboBox5.Clear;
            cxDateEdit1.Clear;

            cxGrid1DBTableView1.DataController.DataSet.Refresh;

            ShowMessage('CITA MODIFICADA CON EXITO.');

         except on E: Exception do
            ShowMessage('NO SE PUDO MODIFICAR LA CITA.');
         end;
      end;
   end;
end;

// ELIMINAR CITA
procedure TFModificarCita.cxButton2Click(Sender: TObject);
begin

   if cxTextEdit1.Text = '' then
     begin
       ShowMessage('DEBE SELECCIONAR UNA CITA DE LA TABLA');
     end
   else
   begin
      try
        with FDMCitas.QEliminarCita do
        begin
          ParamByName('CODIGO').AsInteger:= CODIGO;
          Execute;
        end;
        ShowMessage('CITA ELIMINADA CON EXITO.');

        cxTextEdit1.SetFocus;
        cxTextEdit1.Clear;
        cxMaskEdit1.Clear;
        cxLookupComboBox1.Clear;
        cxLookupComboBox2.Clear;
        cxLookupComboBox3.Clear;
        cxLookupComboBox4.Clear;
        cxLookupComboBox5.Clear;
        cxDateEdit1.Clear;

        cxGrid1DBTableView1.DataController.DataSet.Refresh;

      except on E: Exception do
        ShowMessage('NO SE PUDO ELIMINAR LA CITA.');
      end;

   end;

  //ShowMessageFmt('SEGURO',[mrYes,mrNo]);
end;

// ON CELL CLIC
procedure TFModificarCita.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

  try
    CODIGO:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['CODIGO'];
    cxTextEdit1.TEXT:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['NOMBRE'];
    cxMaskEdit1.TEXT:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['TELEFONO'];
    cxLookupComboBox1.TEXT:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['MOTIVO'];
    cxLookupComboBox2.TEXT:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['ESTADO'];
    cxLookupComboBox5.TEXT:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['MEDICO_ASIGNADO'];
    cxDateEdit1.TEXT:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['FECHA_CITA'];
    cxLookupComboBox3.TEXT:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['HORA_INICIO'];
    cxLookupComboBox4.TEXT:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['HORA_FIN'];
    cxTextEdit1.SetFocus;

  except on E: Exception do
  end;

end;

procedure TFModificarCita.cxLookupComboBox3PropertiesChange(Sender: TObject);
begin
  try
     if cxLookupComboBox3.Text <> '' then
    begin
      FDMCitas.qhorafin.ParamByName('phora').AsString:=cxLookupComboBox3.Text;
      FDMCitas.qhorafin.Execute;

      cxLookupComboBox4.Text:=FDMCitas.QHoraFin.FieldValues['hora_fin'];
    end;
  except

  end;
end;

procedure TFModificarCita.FormActivate(Sender: TObject);
begin
    try

      cxLookupComboBox1.Properties.DataController.DataSet.Active:=True;
      cxLookupComboBox2.Properties.DataController.DataSet.Active:=True;
      cxLookupComboBox3.Properties.DataController.DataSet.Active:=True;
      cxLookupComboBox4.Properties.DataController.DataSet.Active:=True;
      cxLookupComboBox5.Properties.DataController.DataSet.Active:=True;

      if FLogin.CARGO = 'DOCTOR' then
      begin
         cxLookupComboBox5.Text:=FLogin.NOMBRE_COMPLETO;
         cxLookupComboBox5.Enabled:=False;

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

procedure TFModificarCita.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  try
    cxTextEdit1.SetFocus;
    cxTextEdit1.Clear;
    cxMaskEdit1.Clear;
    cxLookupComboBox1.Clear;
    cxLookupComboBox2.Clear;
    cxLookupComboBox3.Clear;
    cxLookupComboBox4.Clear;
    cxLookupComboBox5.Clear;
    cxDateEdit1.Clear;
    cxTextEdit1.SetFocus;

    cxGrid1DBTableView1.DataController.DataSet.Close;
    cxLookupComboBox1.Properties.DataController.DataSet.Close;
    cxLookupComboBox2.Properties.DataController.DataSet.Close;

  except on E: Exception do
  end;
     
end;

end.
