unit UagendarCita;

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
  dxSkinXmas2008Blue, cxLabel, cxTextEdit, cxGroupBox, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxSpinEdit, cxTimeEdit,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxScheduler, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerDateNavigator, cxSchedulerHolidays, cxSchedulerTimeGridView,
  cxSchedulerUtils, cxSchedulerWeekView, cxSchedulerYearView,
  cxSchedulerGanttView, cxSchedulerRecurrence, cxSchedulerTreeListBrowser,
  cxSchedulerRibbonStyleEventEditor, dxSkinscxSchedulerPainter,
   Vcl.WinXCalendars, Vcl.ExtCtrls,
  Vcl.Mask,  Vcl.Grids,
  Vcl.Samples.Calendar, cxCalc, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPrnDlg, dxPSCore,
  dxPSContainerLnk, dxSkinTheBezier;

type
  TFAgendarCita = class(TForm)
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
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox4: TcxLookupComboBox;
    cxLookupComboBox5: TcxLookupComboBox;
    cxLabel8: TcxLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxLookupComboBox3PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAgendarCita: TFAgendarCita;


implementation

{$R *.dfm}
 USES UDMCitas,Ulogin,UDMCodificadores;

procedure TFAgendarCita.cxButton1Click(Sender: TObject);
begin
  if  (cxLookupComboBox1.Text = '') or
      (cxLookupComboBox2.Text = '') or
      (cxLookupComboBox3.Text = '') or
      (cxLookupComboBox4.Text = '') or
      (cxLookupComboBox5.Text = '') or
      (cxTextEdit1.Text = '') or
      (cxMaskEdit1.Text = '') or
      (cxDateEdit1.Text = '')
  then
  begin
    ShowMessage('DEBE LLENAR TODOS LOS CAMPOS');
  end
  else
  begin

    try
      // insertando la nueva cita
      with FDMCitas.QInsertarCita do
      begin
        ParamByName('NOMBRE').AsString:=cxTextEdit1.Text;
        ParamByName('TELEFONO').AsString:=cxMaskEdit1.Text;
        ParamByName('MOTIVO').AsString:=cxLookupComboBox1.Text;
        ParamByName('ESTADO').AsString:=cxLookupComboBox2.Text;
        ParamByName('FECHA_CITA').AsDate:=cxDateEdit1.Date;
        ParamByName('HORA_INICIO').AsString:=cxLookupComboBox3.Text;
        ParamByName('HORA_FIN').AsString:=cxLookupComboBox4.Text;
        ParamByName('RECEPCIONISTA').AsString:=flogin.NOMBRE_COMPLETO;
        ParamByName('MEDICO_ASIGNADO').AsString:=cxLookupComboBox5.Text;

        if cxLookupComboBox2.Text = 'CONFIRMADA' then
        begin
         ParamByName('FECHA_CONFIRMACION').AsDate:=NOW;
        end;

        Execute;
        ShowMessage('CITA AGENDADA PARA EL DIA: '+ cxDateEdit1.Text+ ' CON EXITO');
      end;
    except on E: Exception do

    end;



    cxTextEdit1.Clear;
    cxMaskEdit1.Clear;
    cxLookupComboBox1.Clear;
    cxLookupComboBox2.Clear;
    cxLookupComboBox3.Clear;
    cxLookupComboBox4.Clear;
    cxLookupComboBox5.Clear;
    cxDateEdit1.Date;
    cxLookupComboBox5.SetFocus;
  end;

end;

procedure TFAgendarCita.cxButton2Click(Sender: TObject);
begin
  try
      cxTextEdit1.Clear;
      cxMaskEdit1.Clear;
      cxLookupComboBox1.Clear;
      cxLookupComboBox2.Clear;
      cxLookupComboBox3.Clear;
      cxLookupComboBox4.Clear;
      cxLookupComboBox5.Clear;
      cxDateEdit1.Date;
     // cxTimeEdit1.Time:=Now;
     // cxTimeEdit2.Time:=Now;
      cxLookupComboBox5.SetFocus;
  except on E: Exception do
  end;
end;

procedure TFAgendarCita.cxLookupComboBox3PropertiesChange(Sender: TObject);
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

procedure TFAgendarCita.FormActivate(Sender: TObject);
begin
  try

    cxDateEdit1.Date:=Now;
    cxLookupComboBox1.Properties.DataController.DataSet.Active:=True;
    cxLookupComboBox2.Properties.DataController.DataSet.Active:=True;
    cxLookupComboBox3.Properties.DataController.DataSet.Active:=True;
    cxLookupComboBox5.Properties.DataController.DataSet.Active:=True;

    cxLookupComboBox4.Enabled:=False;

  except on E: Exception do

  end;
end;

procedure TFAgendarCita.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try

   cxLookupComboBox1.Properties.DataController.DataSet.Close;
   cxLookupComboBox2.Properties.DataController.DataSet.Close;
   cxLookupComboBox3.Properties.DataController.DataSet.Close;
   cxLookupComboBox5.Properties.DataController.DataSet.Close;


    cxTextEdit1.Clear;
    cxMaskEdit1.Clear;
    cxLookupComboBox1.Clear;
    cxLookupComboBox2.Clear;
    cxLookupComboBox3.Clear;
    cxLookupComboBox4.Clear;
    cxLookupComboBox5.Clear;
    cxDateEdit1.Date;
    cxLookupComboBox5.SetFocus;

  except on E: Exception do
  end;
end;

end.
