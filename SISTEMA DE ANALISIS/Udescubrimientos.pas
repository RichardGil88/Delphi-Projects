unit Udescubrimientos;

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
  TFdescubrimientos = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView0: TcxGridDBTableView;
    cxGrid1Level0: TcxGridLevel;
    cxGrid1DBTableView0dptoseccion: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1Level4: TcxGridLevel;
    cxGrid1Level5: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level6: TcxGridLevel;
    cxGrid1Level7: TcxGridLevel;
    cxGrid1Level8: TcxGridLevel;
    cxGrid1Level9: TcxGridLevel;
    cxGrid1DBTableView1iddestado: TcxGridDBColumn;
    cxGrid1DBTableView1estado: TcxGridDBColumn;
    cxGrid1DBTableView1descripcion: TcxGridDBColumn;
    cxGrid1DBTableView1activo: TcxGridDBColumn;
    cxGrid1DBTableView1orden: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView4: TcxGridDBTableView;
    cxGrid1DBTableView5: TcxGridDBTableView;
    cxGrid1DBTableView6: TcxGridDBTableView;
    cxGrid1DBTableView7: TcxGridDBTableView;
    cxGrid1DBTableView8: TcxGridDBTableView;
    cxGrid1DBTableView9: TcxGridDBTableView;
    cxGrid1DBTableView2idFase: TcxGridDBColumn;
    cxGrid1DBTableView2fase: TcxGridDBColumn;
    cxGrid1DBTableView3fuente: TcxGridDBColumn;
    cxGrid1DBTableView4idlugar: TcxGridDBColumn;
    cxGrid1DBTableView4lugar: TcxGridDBColumn;
    cxGrid1DBTableView4descripcion: TcxGridDBColumn;
    cxGrid1DBTableView4activo: TcxGridDBColumn;
    cxGrid1DBTableView4orden: TcxGridDBColumn;
    cxGrid1DBTableView5idorigendescubrimiento: TcxGridDBColumn;
    cxGrid1DBTableView5origendescubrimiento: TcxGridDBColumn;
    cxGrid1DBTableView5descripcion: TcxGridDBColumn;
    cxGrid1DBTableView5activo: TcxGridDBColumn;
    cxGrid1DBTableView5orden: TcxGridDBColumn;
    cxGrid1DBTableView6idtipodes: TcxGridDBColumn;
    cxGrid1DBTableView6tipodes: TcxGridDBColumn;
    cxGrid1DBTableView7idetapa: TcxGridDBColumn;
    cxGrid1DBTableView7etapamigracion: TcxGridDBColumn;
    cxGrid1DBTableView7descripcion: TcxGridDBColumn;
    cxGrid1DBTableView7activo: TcxGridDBColumn;
    cxGrid1DBTableView7orden: TcxGridDBColumn;
    cxGrid1DBTableView8idinvolucrado: TcxGridDBColumn;
    cxGrid1DBTableView8involucradomigracion: TcxGridDBColumn;
    cxGrid1DBTableView8descripcion: TcxGridDBColumn;
    cxGrid1DBTableView8activo: TcxGridDBColumn;
    cxGrid1DBTableView8orden: TcxGridDBColumn;
    cxGrid1DBTableView9idtipomigracion: TcxGridDBColumn;
    cxGrid1DBTableView9tipomigracion: TcxGridDBColumn;
    cxGrid1DBTableView9descripcion: TcxGridDBColumn;
    cxGrid1DBTableView9activo: TcxGridDBColumn;
    cxGrid1DBTableView9orden: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fdescubrimientos: TFdescubrimientos;

implementation
 uses UDM;
{$R *.dfm}

procedure TFdescubrimientos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TFdescubrimientos.FormShow(Sender: TObject);
begin
cxGrid1DBTableView0.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView2.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView3.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView4.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView5.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView6.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView7.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView8.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView9.DataController.DataSource.DataSet.Active:=True;

cxGrid1DBTableView0.DataController.Refresh;
cxGrid1DBTableView1.DataController.Refresh;
cxGrid1DBTableView2.DataController.Refresh;
cxGrid1DBTableView3.DataController.Refresh;
cxGrid1DBTableView4.DataController.Refresh;
cxGrid1DBTableView5.DataController.Refresh;
cxGrid1DBTableView6.DataController.Refresh;
cxGrid1DBTableView7.DataController.Refresh;
cxGrid1DBTableView8.DataController.Refresh;
cxGrid1DBTableView9.DataController.Refresh;
end;

end.
