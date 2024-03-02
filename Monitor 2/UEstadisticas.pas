unit UEstadisticas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox,
  cxPC, StdCtrls;

type
  TFEstadisticas = class(TForm)
    PageControl1: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGrid2DBTableView1id: TcxGridDBColumn;
    cxGrid2DBTableView1fecha: TcxGridDBColumn;
    cxGrid2DBTableView1despachador: TcxGridDBColumn;
    cxGrid2DBTableView1procesados: TcxGridDBColumn;
    cxGrid2DBTableView1chequeados: TcxGridDBColumn;
    cxGrid2DBTableView1masivos: TcxGridDBColumn;
    cxGrid2DBTableView1ParaEstudio: TcxGridDBColumn;
    cxGrid2DBTableView1almacenados: TcxGridDBColumn;
    cxGrid3DBTableView1id: TcxGridDBColumn;
    cxGrid3DBTableView1fecha: TcxGridDBColumn;
    cxGrid3DBTableView1grupo: TcxGridDBColumn;
    cxGrid3DBTableView1unidad: TcxGridDBColumn;
    cxGrid3DBTableView1cdadRx: TcxGridDBColumn;
    cxGrid4DBTableView1id: TcxGridDBColumn;
    cxGrid4DBTableView1fecha: TcxGridDBColumn;
    cxGrid4DBTableView1idMon: TcxGridDBColumn;
    cxGrid4DBTableView1tipoTx: TcxGridDBColumn;
    cxGrid4DBTableView1PktRx: TcxGridDBColumn;
    cxGrid4DBTableView1BytesRx: TcxGridDBColumn;
    cxGrid4DBTableView1Cdad: TcxGridDBColumn;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1fecha: TcxGridDBColumn;
    cxGrid1DBTableView1grupo: TcxGridDBColumn;
    cxGrid1DBTableView1unidad: TcxGridDBColumn;
    cxGrid1DBTableView1autoridad: TcxGridDBColumn;
    cxGrid1DBTableView1chequeo: TcxGridDBColumn;
    cxGrid1DBTableView1cdadRx: TcxGridDBColumn;
    cxGrid3DBTableView1autoridad: TcxGridDBColumn;
    cxGrid2DBTableView1ipdr: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    edt1: TEdit;
    edt2: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
  function BytesToStr(const Bytes: Int64): string;
    { Public declarations }
  end;

var
  FEstadisticas: TFEstadisticas;

implementation
 uses Umain;
{$R *.dfm}

procedure TFEstadisticas.edt1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
 begin
   edt2.Text:=BytesToStr(StrToInt64(Edt1.Text));
 end;
end;

function  TFEstadisticas.BytesToStr(const Bytes: Int64): string;
Const
  KB = 1024;
  MB = 1024 * KB;
  GB = 1024 * MB;
  TB = 1024.0 * GB;
var
  Valor: Double;
  Unidad: string;
  Decimales: Byte;

begin
  Decimales := 2;
  if Bytes < KB then
  begin
    Valor := Bytes;
    Unidad := 'Bytes';
    Decimales := 0;
  end
  else if Bytes < MB then
  begin
    Valor := Bytes / KB;
    Unidad := 'KB';
  end
  else if Bytes < GB then
  begin
    Valor := Bytes / MB;
    Unidad := 'MB';
  end
  else if Bytes < TB then
  begin
    Valor := Bytes / GB;
    Unidad := 'GB';
  end
  else
  begin
    Valor := Bytes / TB;
    Unidad := 'TB';
  end;
  Result := Format('%.*f %s', [Decimales, Valor, Unidad]);
end;

procedure TFEstadisticas.FormShow(Sender: TObject);
begin
 Fmain.UniTable1.Open;
 Fmain.UniTable2.Open;
 Fmain.UniTable3.Open;
 Fmain.UniTable4.Open;
end;

end.
