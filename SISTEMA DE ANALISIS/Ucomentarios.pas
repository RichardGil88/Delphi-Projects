unit Ucomentarios;

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
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinDarkRoom, dxSkinFoggy, dxSkinSeven, dxSkinSharp;

type
  TFComentarios = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView0: TcxGridDBTableView;
    cxGrid1Level0: TcxGridLevel;
    cxGrid1DBTableView0estado: TcxGridDBColumn;
    cxGrid1DBTableView0descripcion: TcxGridDBColumn;
    cxGrid1DBTableView0activo: TcxGridDBColumn;
    cxGrid1DBTableView0orden: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView1tematicas: TcxGridDBColumn;
    cxGrid1DBTableView2idtipocomentario: TcxGridDBColumn;
    cxGrid1DBTableView2tipocomentario: TcxGridDBColumn;
    cxGrid1DBTableView2descripcion: TcxGridDBColumn;
    cxGrid1DBTableView2orden: TcxGridDBColumn;
    cxGrid1DBTableView2activa: TcxGridDBColumn;
    cxGrid1DBTableView2idtipocomentario1: TcxGridDBColumn;
    cxGrid1DBTableView2tipocomentario1: TcxGridDBColumn;
    cxGrid1DBTableView2descripcion1: TcxGridDBColumn;
    cxGrid1DBTableView2orden1: TcxGridDBColumn;
    cxGrid1DBTableView2activa1: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FComentarios: TFComentarios;

implementation
  uses UDM;
{$R *.dfm}

procedure TFComentarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TFComentarios.FormShow(Sender: TObject);
begin
cxGrid1DBTableView0.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView2.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView0.DataController.Refresh;
cxGrid1DBTableView1.DataController.Refresh;
cxGrid1DBTableView2.DataController.Refresh;
end;

end.
