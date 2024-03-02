unit Ubancovoces;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinDarkRoom, dxSkinFoggy, dxSkinSeven, dxSkinSharp;

type
  TFbancovoces = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1Level4: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView4: TcxGridDBTableView;
    cxGrid1DBTableView1idambiente: TcxGridDBColumn;
    cxGrid1DBTableView1ambiente: TcxGridDBColumn;
    cxGrid1DBTableView1descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1orden: TcxGridDBColumn;
    cxGrid1DBTableView1activa: TcxGridDBColumn;
    cxGrid1DBTableView2idestado: TcxGridDBColumn;
    cxGrid1DBTableView2estado: TcxGridDBColumn;
    cxGrid1DBTableView2descripcion: TcxGridDBColumn;
    cxGrid1DBTableView2orden: TcxGridDBColumn;
    cxGrid1DBTableView2activa: TcxGridDBColumn;
    cxGrid1DBTableView3estadosalud: TcxGridDBColumn;
    cxGrid1DBTableView3descripcion: TcxGridDBColumn;
    cxGrid1DBTableView3orden: TcxGridDBColumn;
    cxGrid1DBTableView3activa: TcxGridDBColumn;
    cxGrid1DBTableView4procedencia: TcxGridDBColumn;
    cxGrid1DBTableView4descripcion: TcxGridDBColumn;
    cxGrid1DBTableView4orden: TcxGridDBColumn;
    cxGrid1DBTableView4activa: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fbancovoces: TFbancovoces;

implementation
uses UDM;
{$R *.dfm}

procedure TFbancovoces.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
end;

procedure TFbancovoces.FormShow(Sender: TObject);
begin

  cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
  cxGrid1DBTableView2.DataController.DataSource.DataSet.Active:=True;
  cxGrid1DBTableView3.DataController.DataSource.DataSet.Active:=True;
  cxGrid1DBTableView4.DataController.DataSource.DataSet.Active:=True;

  cxGrid1DBTableView1.DataController.Refresh;
  cxGrid1DBTableView2.DataController.Refresh;
  cxGrid1DBTableView3.DataController.Refresh;
  cxGrid1DBTableView4.DataController.Refresh;

end;

end.
