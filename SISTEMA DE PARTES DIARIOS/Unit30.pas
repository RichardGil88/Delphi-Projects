unit Unit30;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox;

type
  TFKMPERM = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1unidad: TcxGridDBColumn;
    cxGrid1DBTableView1idkmperm: TcxGridDBColumn;
    cxGrid1DBTableView1expediente: TcxGridDBColumn;
    cxGrid1DBTableView1fechainicio: TcxGridDBColumn;
    cxGrid1DBTableView1fechafin: TcxGridDBColumn;
    cxGrid1DBTableView1nivelaprob: TcxGridDBColumn;
    cxGrid1DBTableView1estado: TcxGridDBColumn;
    cxGrid1DBTableView1lugaraplicado: TcxGridDBColumn;
    cxGrid1DBTableView1lugarmonitoreo: TcxGridDBColumn;
    cxGrid1DBTableView1monitoreadopor: TcxGridDBColumn;
    cxGrid1DBTableView1idioma: TcxGridDBColumn;
    cxGrid1DBTableView1fase: TcxGridDBColumn;
    cxGrid1DBTableView1dpto: TcxGridDBColumn;
    cxGrid1DBTableView1seccion: TcxGridDBColumn;
    cxGrid1DBTableView1cumpfinalidadop: TcxGridDBColumn;
    cxGrid1DBTableView1motivonocumplim: TcxGridDBColumn;
    cxGrid1DBTableView1referencia: TcxGridDBColumn;
    cxGrid1DBTableView1usuario: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKMPERM: TFKMPERM;

implementation
 USES Unit2;
{$R *.dfm}

procedure TFKMPERM.FormShow(Sender: TObject);
begin
cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
end;

end.
