unit UEventos;

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
  TFEventos = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView0: TcxGridDBTableView;
    cxGrid1Level0: TcxGridLevel;
    cxGrid1DBTableView0afiliacion: TcxGridDBColumn;
    cxGrid1DBTableView0descripcion: TcxGridDBColumn;
    cxGrid1DBTableView0activo: TcxGridDBColumn;
    cxGrid1DBTableView0orden: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1Level4: TcxGridLevel;
    cxGrid1Level5: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView4: TcxGridDBTableView;
    cxGrid1DBTableView5: TcxGridDBTableView;
    cxGrid1DBTableView1idafiliacionespecifica: TcxGridDBColumn;
    cxGrid1DBTableView1afiliacionespecifica: TcxGridDBColumn;
    cxGrid1DBTableView1descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1activo: TcxGridDBColumn;
    cxGrid1DBTableView1orden: TcxGridDBColumn;
    cxGrid1DBTableView2idestado: TcxGridDBColumn;
    cxGrid1DBTableView2estado: TcxGridDBColumn;
    cxGrid1DBTableView2descripcion: TcxGridDBColumn;
    cxGrid1DBTableView2activo: TcxGridDBColumn;
    cxGrid1DBTableView2orden: TcxGridDBColumn;
    cxGrid1DBTableView3idnivelparticipacion: TcxGridDBColumn;
    cxGrid1DBTableView3nivelparticipacion: TcxGridDBColumn;
    cxGrid1DBTableView3descripcion: TcxGridDBColumn;
    cxGrid1DBTableView3activo: TcxGridDBColumn;
    cxGrid1DBTableView3orden: TcxGridDBColumn;
    cxGrid1DBTableView4idorigen: TcxGridDBColumn;
    cxGrid1DBTableView4origen: TcxGridDBColumn;
    cxGrid1DBTableView4descripcion: TcxGridDBColumn;
    cxGrid1DBTableView4activo: TcxGridDBColumn;
    cxGrid1DBTableView4orden: TcxGridDBColumn;
    cxGrid1DBTableView5idtipoevento: TcxGridDBColumn;
    cxGrid1DBTableView5tipoevento: TcxGridDBColumn;
    cxGrid1DBTableView5descripcion: TcxGridDBColumn;
    cxGrid1DBTableView5activo: TcxGridDBColumn;
    cxGrid1DBTableView5orden: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEventos: TFEventos;

implementation
uses UDM;
{$R *.dfm}

procedure TFEventos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TFEventos.FormShow(Sender: TObject);
begin
cxGrid1DBTableView0.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView2.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView3.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView4.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView5.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView0.DataController.Refresh;
cxGrid1DBTableView1.DataController.Refresh;
cxGrid1DBTableView2.DataController.Refresh;
cxGrid1DBTableView3.DataController.Refresh;
cxGrid1DBTableView4.DataController.Refresh;
cxGrid1DBTableView5.DataController.Refresh;
end;

end.
