unit Uclaves;

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
  cxControls, cxGridCustomView, cxGrid,UDM, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinDarkRoom, dxSkinFoggy, dxSkinSeven, dxSkinSharp;

type
  TFclaves = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView0: TcxGridDBTableView;
    cxGrid1Level0: TcxGridLevel;
    cxGrid1DBTableView0aplicadopor: TcxGridDBColumn;
    cxGrid1DBTableView0descripcion: TcxGridDBColumn;
    cxGrid1DBTableView0activo: TcxGridDBColumn;
    cxGrid1DBTableView0orden: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1Level4: TcxGridLevel;
    cxGrid1Level5: TcxGridLevel;
    cxGrid1Level6: TcxGridLevel;
    cxGrid1Level7: TcxGridLevel;
    cxGrid1Level8: TcxGridLevel;
    cxGrid1Level9: TcxGridLevel;
    cxGrid1Level10: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView4: TcxGridDBTableView;
    cxGrid1DBTableView5: TcxGridDBTableView;
    cxGrid1DBTableView6: TcxGridDBTableView;
    cxGrid1DBTableView7: TcxGridDBTableView;
    cxGrid1DBTableView8: TcxGridDBTableView;
    cxGrid1DBTableView9: TcxGridDBTableView;
    cxGrid1DBTableView10: TcxGridDBTableView;
    cxGrid1DBTableView1idEstado: TcxGridDBColumn;
    cxGrid1DBTableView1estado: TcxGridDBColumn;
    cxGrid1DBTableView2idFinalidad: TcxGridDBColumn;
    cxGrid1DBTableView2Finalidad: TcxGridDBColumn;
    cxGrid1DBTableView3idLugar: TcxGridDBColumn;
    cxGrid1DBTableView3lugar: TcxGridDBColumn;
    cxGrid1DBTableView4idMotivo: TcxGridDBColumn;
    cxGrid1DBTableView4motivoNoCumplimiento: TcxGridDBColumn;
    cxGrid1DBTableView5idMotivo: TcxGridDBColumn;
    cxGrid1DBTableView5motivo: TcxGridDBColumn;
    cxGrid1DBTableView6idEstado: TcxGridDBColumn;
    cxGrid1DBTableView6estado: TcxGridDBColumn;
    cxGrid1DBTableView7idResultado: TcxGridDBColumn;
    cxGrid1DBTableView7resultado: TcxGridDBColumn;
    cxGrid1DBTableView7activo: TcxGridDBColumn;
    cxGrid1DBTableView8idResultado: TcxGridDBColumn;
    cxGrid1DBTableView8resultado: TcxGridDBColumn;
    cxGrid1DBTableView8activo: TcxGridDBColumn;
    cxGrid1DBTableView9idSitio: TcxGridDBColumn;
    cxGrid1DBTableView9Sitio: TcxGridDBColumn;
    cxGrid1DBTableView10idTipodeTecnica: TcxGridDBColumn;
    cxGrid1DBTableView10Tipodetecnica: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fclaves: TFclaves;

implementation
{$R *.dfm}

procedure TFclaves.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFclaves.FormShow(Sender: TObject);
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
cxGrid1DBTableView10.DataController.DataSource.DataSet.Active:=True;
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
cxGrid1DBTableView10.DataController.Refresh;
end;

end.
