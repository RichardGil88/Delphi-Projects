unit UEstadisticas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Vcl.StdCtrls, cxRadioGroup, cxGroupBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.Menus, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxCalendar, dxSkinTheBezier,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFEstadisticas = class(TForm)
    cxGroupBox1: TcxGroupBox;
    MostrarTodos: TcxButton;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1PRIMER_APELLIDO: TcxGridDBColumn;
    cxGrid1DBTableView1SEGUNDO_APELLIDO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid1DBTableView1IMPUESTO_CLINICA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1MEDICO: TcxGridDBColumn;
    cxButton1: TcxButton;
    procedure MostrarTodosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
  NOMBRE,PAGAR,APELLIDO,FECHA:string;
    { Public declarations }
  end;

var
  FEstadisticas: TFEstadisticas;

implementation

uses UDMEstadisticas,UConsultasVender;
{$R *.dfm}

procedure TFEstadisticas.cxButton1Click(Sender: TObject);
begin
  try
   FConsultasVender.RichEdit1.Lines.Add('SALUDCUBAMEX'#10);
   FConsultasVender.RichEdit1.Lines.Add('DOCTORA: ANGELA MONTEJO'#10);
   FConsultasVender.RichEdit1.Lines.Add('NOMBRE: '+ NOMBRE +' '+APELLIDO+#10);
   FConsultasVender.RichEdit1.Lines.Add('PAGAR: '+ PAGAR + #10);
   FConsultasVender.RichEdit1.Lines.Add('FECHA: '+FECHA+#10);
   FConsultasVender.RichEdit1.Lines.Add('   '#10);
   FConsultasVender.RichEdit1.Lines.Add('   '#10);
   FConsultasVender.RichEdit1.PlainText:=True;
   FConsultasVender.RichEdit1.Print(FConsultasVender.RichEdit1.Lines.Text);
   FConsultasVender.RichEdit1.Clear;
  except

  end;
end;

procedure TFEstadisticas.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  try
    NOMBRE:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['NOMBRE'];
    APELLIDO:=cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['PRIMER_APELLIDO'];
    PAGAR:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['PRECIO'];
    FECHA:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['FECHA'];
  except

  end;

end;

procedure TFEstadisticas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active := False;

  except
    on E: Exception do
  end;
end;

procedure TFEstadisticas.MostrarTodosClick(Sender: TObject);
begin
  if (cxDateEdit2.Text <> '') and (cxDateEdit3.Text <> '') then
  begin
    try

      FDMESTADISTICAS.QEstadisticas.ParamByName('FECHADESDE').AsDate := cxDateEdit2.Date;
      FDMESTADISTICAS.QEstadisticas.ParamByName('FECHAHASTA').AsDate := cxDateEdit3.Date;
      FDMESTADISTICAS.QEstadisticas.Execute;

      cxGrid1DBTableView1.DataController.DataSource.DataSet.Active := True;
      cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

    except

    end;
  end
  else
  begin
    ShowMessage('DEBE LLENAR TODOS LOS CAMPOS ');
  end;
end;

end.
