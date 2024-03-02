unit Unit34;

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
  dxSkinXmas2008Blue, Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, StdCtrls, cxButtons, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxLabel, cxGroupBox;

type
  TFefect6 = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1FECHA: TcxGridDBColumn;
    cxGrid2DBTableView1CANTTRAZAS: TcxGridDBColumn;
    cxGrid2DBTableView1CANTMCC: TcxGridDBColumn;
    cxGrid2DBTableView1CANTSOPORTESDESC: TcxGridDBColumn;
    cxGrid2DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1CANTTRAZAS: TcxGridDBColumn;
    cxGrid1DBTableView1CANTMCC: TcxGridDBColumn;
    cxGrid1DBTableView1CANTSOPORTESDESC: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fefect6: TFefect6;

implementation
 uses Unit2;
{$R *.dfm}

procedure TFefect6.cxButton1Click(Sender: TObject);
begin
  cxGrid1.Show;
  cxGrid2.Hide;
  with DM.Qefect6 do
          begin
           ParamByName('PFECHA1').AsDate:=cxDateEdit1.Date;
           ParamByName('PFECHA2').AsDate:=cxDateEdit2.Date;
           Execute;
          end;
end;

procedure TFefect6.cxButton2Click(Sender: TObject);
begin
 cxGrid2.Show;
 cxGrid1.Hide;
  with DM.Qefect6 do
          begin
           ParamByName('PFECHA1').AsDate:=cxDateEdit1.Date;
           ParamByName('PFECHA2').AsDate:=cxDateEdit2.Date;
           Execute;
          end;

end;

end.
