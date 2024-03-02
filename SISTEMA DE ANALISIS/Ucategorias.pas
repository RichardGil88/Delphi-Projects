unit Ucategorias;

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
  TFcategorias = class(TForm)
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxgrdbclmnGridDBTableView1Categoria: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1descripcion: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1activa: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1orden: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1tiempo: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1depurar: TcxGridDBColumn;
    cxgrdbclmnGridDBTableView1eliminar: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fcategorias: TFcategorias;

implementation
 uses UDM;
{$R *.dfm}

procedure TFcategorias.FormShow(Sender: TObject);
begin
cxGridDBTableView1.DataController.DataSource.DataSet.Active:=True;
cxGridDBTableView1.DataController.Refresh;
end;

end.
