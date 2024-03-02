unit Unit39;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  AdvCircularProgress, ExtCtrls;

type
  TFveralertas = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1Unidad: TcxGridDBColumn;
    cxGrid1DBTableView1Alerta: TcxGridDBColumn;
    cxGrid1DBTableView1Estado: TcxGridDBColumn;
    cxGrid1DBTableView1Usuario: TcxGridDBColumn;
    cxGrid1DBTableView1atendidopor: TcxGridDBColumn;
    AdvCircularProgress1: TAdvCircularProgress;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fveralertas: TFveralertas;

implementation
  uses Unit2,Unit1;
{$R *.dfm}

procedure TFveralertas.FormShow(Sender: TObject);
begin
   cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
end;

end.
