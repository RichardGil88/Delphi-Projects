unit Ucasos;

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
  TFcasos = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView0: TcxGridDBTableView;
    cxGrid1DBTableView0dptoseccion: TcxGridDBColumn;
    cxGrid1Level0: TcxGridLevel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1Level4: TcxGridLevel;
    cxGrid1Level5: TcxGridLevel;
    cxGrid1Level6: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView4: TcxGridDBTableView;
    cxGrid1DBTableView5: TcxGridDBTableView;
    cxGrid1DBTableView6: TcxGridDBTableView;
    cxGrid1DBTableView1idexpediente: TcxGridDBColumn;
    cxGrid1DBTableView1ExpedienteOperativo: TcxGridDBColumn;
    cxGrid1DBTableView2idfaci: TcxGridDBColumn;
    cxGrid1DBTableView2faci: TcxGridDBColumn;
    cxGrid1DBTableView3idFase: TcxGridDBColumn;
    cxGrid1DBTableView3fase: TcxGridDBColumn;
    cxGrid1DBTableView4NivelAprobacin: TcxGridDBColumn;
    cxGrid1DBTableView5idniveldecompatirmentacion: TcxGridDBColumn;
    cxGrid1DBTableView5niveldecompartimentacion: TcxGridDBColumn;
    cxGrid1DBTableView6idOperacion: TcxGridDBColumn;
    cxGrid1DBTableView6operacion: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcasos: TFcasos;

implementation
  uses UDM;
{$R *.dfm}

procedure TFcasos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action:=caFree;
end;

procedure TFcasos.FormShow(Sender: TObject);
begin
cxGrid1DBTableView0.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView2.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView3.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView4.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView5.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView6.DataController.DataSource.DataSet.Active:=True;

cxGrid1DBTableView0.DataController.Refresh;
cxGrid1DBTableView1.DataController.Refresh;
cxGrid1DBTableView2.DataController.Refresh;
cxGrid1DBTableView3.DataController.Refresh;
cxGrid1DBTableView4.DataController.Refresh;
cxGrid1DBTableView5.DataController.Refresh;
cxGrid1DBTableView6.DataController.Refresh;
end;

end.
