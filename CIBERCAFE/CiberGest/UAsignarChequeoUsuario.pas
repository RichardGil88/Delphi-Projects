unit UAsignarChequeoUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxGroupBox, Menus, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  cxNavigator;

type
  TFAsignarChequeoUsuario = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    AsignarMaquinaaUsuario1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Desasignar1: TMenuItem;
    cxGrid2DBTableView1usuario: TcxGridDBColumn;
    cxGrid1DBTableView1chequeo: TcxGridDBColumn;
    cxGrid3DBTableView1usuario: TcxGridDBColumn;
    cxGrid3DBTableView1Chequeo: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure AsignarMaquinaaUsuario1Click(Sender: TObject);
    procedure Desasignar1Click(Sender: TObject);
    procedure cxGrid3DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAsignarChequeoUsuario: TFAsignarChequeoUsuario;
  Usuario:string;
  Chequeo:string;
  id:Integer;


Implementation
uses UDM,UPrincipal;
{$R *.dfm}

procedure TFAsignarChequeoUsuario.AsignarMaquinaaUsuario1Click(Sender: TObject);
begin
 try
  if usuario <> '' then
  begin
    // preguntar si no esta asignado ya.
    with DM.QPreguntar do
    begin
      SQL.Clear;
      SQL.Add('select `AsociacionUsuarioChequeo`.usuario ,`AsociacionUsuarioChequeo`.chequeo From `AsociacionUsuarioChequeo` where `AsociacionUsuarioChequeo`.usuario = :Pusuario and `AsociacionUsuarioChequeo`.chequeo = :Pchequeo');
      ParamByName('Pusuario').AsString:=Usuario;
      ParamByName('Pchequeo').AsString:=Chequeo;
      Execute;
    end;

    if DM.QPreguntar.RecordCount = 0 then
    begin
      // asignarlo
      with DM.UniSQL1 do
      begin
        SQL.Clear;
        SQL.Add('insert into `AsociacionUsuarioChequeo` (usuario,chequeo) values (:Pusuario,:Pchequeo)');
        ParamByName('Pusuario').AsString:=Usuario;
        ParamByName('Pchequeo').AsString:=Chequeo;
        Execute;
      end;
      cxGrid3DBTableView1.DataController.DataSet.Refresh;
    end
    else
    begin
      ShowMessage('El Usuario ya tiene asignado ese Chequeo.');
    end;

    
  end
  else ShowMessage('Debe seleccionar un usuario!');
 except
    ShowMessage('Ocurrió un error asignándole la maquina al usuario!');
 end;
end;

procedure TFAsignarChequeoUsuario.Desasignar1Click(Sender: TObject);
begin
 try
   with DM.UniSQL1 do
   begin
    SQL.Clear;
    SQL.Add('delete from `AsociacionUsuarioChequeo` where `AsociacionUsuarioChequeo`.IdAsociacion = :Pid');
    ParamByName('Pid').AsInteger:=id;
    Execute;
   end;
   cxGrid3DBTableView1.DataController.DataSet.Refresh;
 except

 end;
end;

procedure TFAsignarChequeoUsuario.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  Chequeo:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('chequeo').AsString;
end;

procedure TFAsignarChequeoUsuario.cxGrid2DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   Usuario:=cxGrid2DBTableView1.DataController.DataSet.FieldByName('usuario').AsString;
end;

procedure TFAsignarChequeoUsuario.cxGrid3DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   id:=cxGrid3DBTableView1.DataController.DataSet.FieldByName('IdAsociacion').AsInteger;
end;

procedure TFAsignarChequeoUsuario.FormShow(Sender: TObject);
begin

  // usuarios
  if FPrincipal.CARGO = 'Super Admin' then
  begin
    with DM.Qusuarios do
    begin
       sql.clear;
       sql.add('select * from usuarios where usuarios.Dpto = :Pdpto');
       ParamByName('Pdpto').AsString:=FPrincipal.DPTO;
       execute;
    end;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=true;
  end;

  if FPrincipal.CARGO = 'Admin' then
  begin
    with DM.Qusuarios do
    begin
       sql.clear;
       sql.add('select * from usuarios where usuarios.Dpto = :Pdpto and usuarios.unidad = :Punidad');
       ParamByName('Pdpto').AsString:=FPrincipal.DPTO;
       ParamByName('Punidad').AsString:=FPrincipal.UNIDAD;
       execute;
    end;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=true;
  end;


  // chequeos
  if FPrincipal.CARGO = 'Super Admin' then
  begin
    with DM.QChequeos1 do
    begin
       sql.clear;
       sql.add('select * from chequeos where chequeos.Dpto = :Pdpto');
       ParamByName('Pdpto').AsString:=FPrincipal.DPTO;
       execute;
    end;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=true;
  end;

  if FPrincipal.CARGO = 'Admin' then
  begin
    with DM.QChequeos1 do
    begin
       sql.clear;
       sql.add('select * from chequeos where chequeos.Dpto = :Pdpto and chequeos.unidad = :Punidad');
       ParamByName('Pdpto').AsString:=FPrincipal.DPTO;
       ParamByName('Punidad').AsString:=FPrincipal.UNIDAD;
       execute;
    end;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=true;
  end;

   DM.QChequeoUsuario.Execute;
end;

end.
