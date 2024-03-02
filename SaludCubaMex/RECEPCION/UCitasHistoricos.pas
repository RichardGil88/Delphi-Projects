unit UCitasHistoricos;

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
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.ComCtrls, dxCore,
  cxDateUtils, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxGroupBox, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon;

type
  TFCitasHistoricos = class(TForm)
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    cxButton3: TcxButton;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1MOTIVO: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_CITA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_CONFIRMACION: TcxGridDBColumn;
    cxGrid1DBTableView1HORA_INICIO: TcxGridDBColumn;
    cxGrid1DBTableView1HORA_FIN: TcxGridDBColumn;
    cxGrid1DBTableView1MEDICO_ASIGNADO: TcxGridDBColumn;
    cxGrid1DBTableView1RECEPCIONISTA: TcxGridDBColumn;
    cxGrid1DBTableView1TELEFONO: TcxGridDBColumn;
    cxLabel8: TcxLabel;
    cxLabel1: TcxLabel;
    procedure cxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCitasHistoricos: TFCitasHistoricos;

implementation

{$R *.dfm}
USES UDMCitas,ULogin;

procedure TFCitasHistoricos.cxButton3Click(Sender: TObject);
begin
    if (cxDateEdit2.Text <> '') and  (cxDateEdit3.Text <> '') then
    begin
      try
        if FLogin.CARGO = 'DOCTOR' then
          begin

             FDMCitas.QCitasBuscarDoctorHist.ParamByName('FECHADESDE').AsDate:=cxDateEdit2.Date;
             FDMCitas.QCitasBuscarDoctorHist.ParamByName('FECHAHASTA').AsDate:=cxDateEdit3.Date;
             FDMCitas.QCitasBuscarDoctorHist.ParamByName('DOCTOR').AsString:=FLogin.NOMBRE_COMPLETO;
             FDMCitas.QCitasBuscarDoctorHist.Execute;

             cxGrid1DBTableView1.DataController.DataSource:=FDMCitas.DSCitasBuscarDoctorHist;
             cxGrid1DBTableView1.DataController.DataSource.DataSet:=FDMCitas.QCitasBuscarDoctorHist;
             cxGrid1DBTableView1.DataController.DataSet.Active:=True;

          end
        else
        begin
             FDMCitas.QCitasBuscarHist.ParamByName('FECHADESDE').AsDate:=cxDateEdit2.Date;
             FDMCitas.QCitasBuscarHist.ParamByName('FECHAHASTA').AsDate:=cxDateEdit3.Date;
             FDMCitas.QCitasBuscarHist.Execute;

             cxGrid1DBTableView1.DataController.DataSource:=FDMCitas.DSCitasBuscarHist;
             cxGrid1DBTableView1.DataController.DataSource.DataSet:=FDMCitas.QCitasBuscarHist;
             cxGrid1DBTableView1.DataController.DataSet.Active:=True;
        end;
        cxGrid1DBTableView1.DataController.DataSet.Refresh;
      except on E: Exception do
      end;

    end
    else
    begin
      ShowMessage('DEBE LLENAR TODOS LOS CAMPOS ');
    end;

    
end;

procedure TFCitasHistoricos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   try
      cxGrid1DBTableView1.DataController.DataSource.DataSet.Close;
      cxDateEdit3.Clear;
      cxDateEdit2.Clear;
   except on E: Exception do
   end;

end;
end.



