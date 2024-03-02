unit UChequeos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  cxGroupBox, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  TFChequeos = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Label1: TLabel;
    Edit1: TEdit;
    cxButton1: TcxButton;
    Label2: TLabel;
    Edit2: TEdit;
    cxButton3: TcxButton;
    cxGrid1DBTableView1IdChequeo: TcxGridDBColumn;
    cxGrid1DBTableView1Chequeo: TcxGridDBColumn;
    cxGrid1DBTableView1FechaHora: TcxGridDBColumn;
    cxGrid1DBTableView1Usuario: TcxGridDBColumn;
    cxGrid1DBTableView1Dpto: TcxGridDBColumn;
    cxGrid1DBTableView1Activo: TcxGridDBColumn;
    cxGrid1DBTableView1Unidad: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FChequeos: TFChequeos;
  idchequeo:integer;
  chequeo:string;

implementation
   uses UDM,UPrincipal;

{$R *.dfm}

procedure TFChequeos.cxButton1Click(Sender: TObject);
var
i:integer;
Esta:boolean;
chequeo1,chequeo2:string;
begin
  

  try
    if Edit1.Text <> '' then
    begin
      // preguntar si existe el chequeo.
      cxGrid1DBTableView1.DataController.DataSource.DataSet.First;
      for i :=0  to cxGrid1DBTableView1.DataController.DataSource.DataSet.RecordCount -1  do
      begin
        chequeo1:=cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['Chequeo'];
        chequeo2:=Edit1.Text;
        if chequeo1 = chequeo2 then
        begin
          Esta:=true;
          ShowMessage('El chequeo ya esta en la base de datos!!!');
          Break;
        end
        else
        begin
          Esta:=False;
        end;
        cxGrid1DBTableView1.DataController.DataSource.DataSet.Next;
      end;

      if not Esta then
      begin
        DM.QInsertarChequeo.ParamByName('Pchequeo').AsString:=Edit1.Text;
        DM.QInsertarChequeo.ParamByName('Pfechahora').AsDateTime:=Now;
        DM.QInsertarChequeo.ParamByName('Pusuario').AsString:=FPrincipal.USUARIO;
        DM.QInsertarChequeo.ParamByName('Pdpto').AsString:=FPrincipal.DPTO;
        DM.QInsertarChequeo.ParamByName('Punidad').AsString:=FPrincipal.UNIDAD;
        DM.QInsertarChequeo.ParamByName('Pactivo').AsBoolean:=true;
        DM.QInsertarChequeo.Execute;
        cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
        Edit1.Clear;
        ShowMessage('Chequeo Insertado con éxito.');
      end;

    end
    else
    begin
      ShowMessage('Debe llenar el campo "Adicionar Chequeo"');
    end;
  except

  end;
end;

procedure TFChequeos.cxButton3Click(Sender: TObject);
begin
 try
   //  preguntar si esta seguro
   case MessageBox(Handle,
                   PChar('Esta seguro que decea eliminar ese chequeo?'),
                   PChar('Atención'),
                   MB_OKCANCEL + MB_ICONQUESTION + MB_DEFBUTTON1 + MB_APPLMODAL  ) of
     IDOK:
     begin
       with DM.UniSQL1 do
       begin
         SQL.Clear;
         SQL.Add('DELETE FROM `chequeos` WHERE `chequeos`.`IdChequeo` = :pid;');
         ParamByName('pid').asinteger:=idchequeo;
         Execute;
       end;
       cxGrid1DBTableView1.DataController.DataSet.Refresh;
       Edit2.Clear;
       ShowMessage('Chequeo Eliminado con éxito.');
     end;
     IDCANCEL:
     begin
       Exit;
     end;
   end;
 except
   ShowMessage('Ocurrió un error elimiando la maquina !');
 end;
end;

procedure TFChequeos.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  idchequeo:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['IdChequeo'];
  chequeo:=cxGrid1DBTableView1.DataController.DataSet.FieldValues['Chequeo'];
  Edit2.Text:=chequeo;
end;

procedure TFChequeos.FormShow(Sender: TObject);
begin
  if FPrincipal.CARGO = 'Super Admin' then
  begin
    with DM.QChequeos do
    begin
       sql.clear;
       sql.add('select * from chequeos where chequeos.Dpto = :Pdpto');
       ParamByName('Pdpto').AsString:=FPrincipal.DPTO;
       execute;
    end;
    cxGrid1DBTableView1.DataController.DataSource:=DM.DSQChequeos;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=true;
  end;

  if FPrincipal.CARGO = 'Admin' then
  begin
    with DM.QChequeos do
    begin
       sql.clear;
       sql.add('select * from chequeos where chequeos.Dpto = :Pdpto and chequeos.unidad = :Punidad');
       ParamByName('Pdpto').AsString:=FPrincipal.DPTO;
       ParamByName('Punidad').AsString:=FPrincipal.UNIDAD;
       execute;
    end;
    cxGrid1DBTableView1.DataController.DataSource:=DM.DSQChequeos;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=true;
  end;
end;

end.
