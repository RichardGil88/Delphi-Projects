unit Uopiniones;

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
  TFOpiniones = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView0: TcxGridDBTableView;
    cxGrid1Level0: TcxGridLevel;
    cxGrid1DBTableView0catpersona: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1Level3: TcxGridLevel;
    cxGrid1Level4: TcxGridLevel;
    cxGrid1Level5: TcxGridLevel;
    cxGrid1Level6: TcxGridLevel;
    cxGrid1Level7: TcxGridLevel;
    cxGrid1Level8: TcxGridLevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView4: TcxGridDBTableView;
    cxGrid1DBTableView5: TcxGridDBTableView;
    cxGrid1DBTableView6: TcxGridDBTableView;
    cxGrid1DBTableView7: TcxGridDBTableView;
    cxGrid1DBTableView8: TcxGridDBTableView;
    cxGrid1DBTableView1catpersona: TcxGridDBColumn;
    cxGrid1DBTableView2idestado: TcxGridDBColumn;
    cxGrid1DBTableView2estado: TcxGridDBColumn;
    cxGrid1DBTableView2descripcion: TcxGridDBColumn;
    cxGrid1DBTableView2activo: TcxGridDBColumn;
    cxGrid1DBTableView2orden: TcxGridDBColumn;
    cxGrid1DBTableView3estadoemocional: TcxGridDBColumn;
    cxGrid1DBTableView4fuente: TcxGridDBColumn;
    cxGrid1DBTableView5idopinion: TcxGridDBColumn;
    cxGrid1DBTableView5idtx: TcxGridDBColumn;
    cxGrid1DBTableView5fechatx: TcxGridDBColumn;
    cxGrid1DBTableView5clave: TcxGridDBColumn;
    cxGrid1DBTableView5grupo: TcxGridDBColumn;
    cxGrid1DBTableView5caso: TcxGridDBColumn;
    cxGrid1DBTableView5dptoseccion: TcxGridDBColumn;
    cxGrid1DBTableView5oficial: TcxGridDBColumn;
    cxGrid1DBTableView5documento: TcxGridDBColumn;
    cxGrid1DBTableView5text: TcxGridDBColumn;
    cxGrid1DBTableView5tipo: TcxGridDBColumn;
    cxGrid1DBTableView5estadoopinion: TcxGridDBColumn;
    cxGrid1DBTableView5fichero: TcxGridDBColumn;
    cxGrid1DBTableView5creadopor: TcxGridDBColumn;
    cxGrid1DBTableView5fecha: TcxGridDBColumn;
    cxGrid1DBTableView5user: TcxGridDBColumn;
    cxGrid1DBTableView5fechauser: TcxGridDBColumn;
    cxGrid1DBTableView5grupouser: TcxGridDBColumn;
    cxGrid1DBTableView5unidaduser: TcxGridDBColumn;
    cxGrid1DBTableView5comentario: TcxGridDBColumn;
    cxGrid1DBTableView5palabras: TcxGridDBColumn;
    cxGrid1DBTableView5tipoopinion: TcxGridDBColumn;
    cxGrid1DBTableView5tematica: TcxGridDBColumn;
    cxGrid1DBTableView5estadoemocional: TcxGridDBColumn;
    cxGrid1DBTableView5categoriapersona: TcxGridDBColumn;
    cxGrid1DBTableView5sexo: TcxGridDBColumn;
    cxGrid1DBTableView5entregado: TcxGridDBColumn;
    cxGrid1DBTableView5fechaentregado: TcxGridDBColumn;
    cxGrid1DBTableView5ktentregado: TcxGridDBColumn;
    cxGrid1DBTableView5procesado: TcxGridDBColumn;
    cxGrid1DBTableView5fechaprocesado: TcxGridDBColumn;
    cxGrid1DBTableView5ktprocesado: TcxGridDBColumn;
    cxGrid1DBTableView6sexo: TcxGridDBColumn;
    cxGrid1DBTableView7tematicas: TcxGridDBColumn;
    cxGrid1DBTableView8tipoopinion: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOpiniones: TFOpiniones;

implementation
 uses UDM;
{$R *.dfm}

procedure TFOpiniones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TFOpiniones.FormShow(Sender: TObject);
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

cxGrid1DBTableView0.DataController.Refresh;
cxGrid1DBTableView1.DataController.Refresh;
cxGrid1DBTableView2.DataController.Refresh;
cxGrid1DBTableView3.DataController.Refresh;
cxGrid1DBTableView4.DataController.Refresh;
cxGrid1DBTableView5.DataController.Refresh;
cxGrid1DBTableView6.DataController.Refresh;
cxGrid1DBTableView7.DataController.Refresh;
cxGrid1DBTableView8.DataController.Refresh;
end;

end.
