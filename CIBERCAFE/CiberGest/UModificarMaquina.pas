unit UModificarMaquina;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, cxGroupBox;

type

 RecMaq = record
    idMaquina:integer;
    NombrePc:string;
    Ip:string;
    Provincia:string;
    Municipio:string;
    NombreCiberCafe:string;
    Ubicacion:string;
  end;

  TFModificarMaquina = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Memo1: TMemo;
    cxButton1: TcxButton;
    Edit4: TEdit;
    Edit5: TEdit;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1idMaquina: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre_PC: TcxGridDBColumn;
    cxGrid1DBTableView1IP: TcxGridDBColumn;
    cxGrid1DBTableView1Provincia: TcxGridDBColumn;
    cxGrid1DBTableView1Municipio: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre_CiberCafe: TcxGridDBColumn;
    cxGrid1DBTableView1Ubicacion: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FModificarMaquina: TFModificarMaquina;
  RecMaq1:RecMaq;

implementation

{$R *.dfm}

uses UDM;

// Modificar la maquina.
procedure TFModificarMaquina.cxButton1Click(Sender: TObject);
begin
  try
    with DM.QUpdateMaquinas do
    begin
      ParamByName('pNombrePC').AsString:=Edit5.Text;
      ParamByName('pIP').AsString:= Edit4.Text;
      ParamByName('pProvincia').AsString:=Edit1.Text;
      ParamByName('pMunicipio').AsString:=Edit2.Text;
      ParamByName('pNombreCiberCafe').AsString:= Edit3.Text;
      ParamByName('pUbicacion').AsString:=Memo1.Text;
      ParamByName('pIdMaquina').AsInteger:= RecMaq1.idMaquina;
      Execute;
      cxGrid1DBTableView1.DataController.DataSet.Refresh;
      ShowMessage('Datos modificados con éxito');
    end;
  except

  end;
end;

procedure TFModificarMaquina.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

 //recogiendo los datos de la tabla
  try
    RecMaq1.idMaquina:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('IdMaquina').AsInteger;
    RecMaq1.NombrePc:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Nombre_PC').AsString;
    RecMaq1.Ip:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('IP').AsString;
    RecMaq1.Provincia:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Provincia').AsString;
    RecMaq1.Municipio:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Municipio').AsString;
    RecMaq1.NombreCiberCafe:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Nombre_CiberCafe').AsString;
    RecMaq1.Ubicacion:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Ubicacion').AsString;
  except

  end;

  // llenado los edits
  try
    Edit1.Text:=RecMaq1.Provincia;
    Edit2.Text:=RecMaq1.Municipio;
    Edit3.Text:=RecMaq1.NombreCiberCafe;
    Edit4.Text:=RecMaq1.Ip;
    Edit5.Text:=RecMaq1.NombrePc;
    Memo1.Text:=RecMaq1.Ubicacion;
  except

  end;
end;

procedure TFModificarMaquina.FormShow(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSet.active:=true;
end;

end.
