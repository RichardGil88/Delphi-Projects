unit Uhistoricos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxGroupBox,UDM, cxLookAndFeels, ExtCtrls, AdvCircularProgress;

type
  TFhistoricos = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1idSolicitud: TcxGridDBColumn;
    cxGrid1DBTableView1estado: TcxGridDBColumn;
    cxGrid1DBTableView1observacion: TcxGridDBColumn;
    cxGrid1DBTableView1ktSolicita: TcxGridDBColumn;
    cxGrid1DBTableView1fechaSolicitud: TcxGridDBColumn;
    cxGrid1DBTableView1clave: TcxGridDBColumn;
    cxGrid1DBTableView1chequeo: TcxGridDBColumn;
    cxGrid1DBTableView1fechaInicio: TcxGridDBColumn;
    cxGrid1DBTableView1fechafin: TcxGridDBColumn;
    cxGrid1DBTableView1faci: TcxGridDBColumn;
    cxGrid1DBTableView1tipotx: TcxGridDBColumn;
    cxGrid1DBTableView1canal: TcxGridDBColumn;
    cxGrid1DBTableView1multiplex: TcxGridDBColumn;
    cxGrid1DBTableView1aplicadopor: TcxGridDBColumn;
    cxGrid1DBTableView1porzona: TcxGridDBColumn;
    cxGrid1DBTableView1zona: TcxGridDBColumn;
    cxGrid1DBTableView1unidad: TcxGridDBColumn;
    cxGrid1DBTableView1grupo: TcxGridDBColumn;
    cxGrid1DBTableView1buzon: TcxGridDBColumn;
    cxGrid1DBTableView1inicioBuzon: TcxGridDBColumn;
    cxGrid1DBTableView1finBuzon: TcxGridDBColumn;
    cxGrid1DBTableView1interes: TcxGridDBColumn;
    cxGrid1DBTableView1finalidad: TcxGridDBColumn;
    cxGrid1DBTableView1cumplida: TcxGridDBColumn;
    cxGrid1DBTableView1motivo: TcxGridDBColumn;
    cxGrid1DBTableView1atencionespecial: TcxGridDBColumn;
    cxGrid1DBTableView1observaciones: TcxGridDBColumn;
    cxGrid1DBTableView1ktatiende: TcxGridDBColumn;
    cxGrid1DBTableView1fechaAtiende: TcxGridDBColumn;
    cxGrid1DBTableView1caso: TcxGridDBColumn;
    cxGrid1DBTableView1dptoSeccion: TcxGridDBColumn;
    cxGrid1DBTableView1oficial: TcxGridDBColumn;
    cxGrid1DBTableView1teloficial: TcxGridDBColumn;
    cxGrid1DBTableView1fase: TcxGridDBColumn;
    cxGrid1DBTableView1niveldeAprobacion: TcxGridDBColumn;
    cxGrid1DBTableView1niveldeCompartimentacion: TcxGridDBColumn;
    cxGrid1DBTableView1OperacionEspecial: TcxGridDBColumn;
    cxGrid1DBTableView1ktcaso: TcxGridDBColumn;
    cxGrid1DBTableView1fechaCaso: TcxGridDBColumn;
    cxGrid1DBTableView1objetivo: TcxGridDBColumn;
    cxGrid1DBTableView1ExpedienteOperativo: TcxGridDBColumn;
    cxGrid1DBTableView1Lugar: TcxGridDBColumn;
    cxGrid1DBTableView1Tipodetecnica: TcxGridDBColumn;
    cxGrid1DBTableView1oculto: TcxGridDBColumn;
    AdvCircularProgress1: TAdvCircularProgress;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fhistoricos: TFhistoricos;

implementation
 uses Umain;
{$R *.dfm}

procedure TFhistoricos.FormShow(Sender: TObject);
begin
cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
cxGrid1DBTableView1.DataController.Refresh;
end;

end.
