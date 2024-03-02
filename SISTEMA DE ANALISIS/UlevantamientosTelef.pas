unit UlevantamientosTelef;

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
  dxSkinXmas2008Blue, cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, Menus, StdCtrls, cxButtons,
  cxTextEdit, cxDropDownEdit, cxCalendar, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid;

type
  TFlevantamientosTelef = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxLabel1: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxDateEdit1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxDateEdit2: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxGrid1DBTableView1FECHASOLICITUD: TcxGridDBColumn;
    cxGrid1DBTableView1FECHASALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1LUGAR: TcxGridDBColumn;
    cxGrid1DBTableView1ORGANO: TcxGridDBColumn;
    cxGrid1DBTableView1REFERENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FlevantamientosTelef: TFlevantamientosTelef;

implementation
 USES UDM,Umain;
{$R *.dfm}

procedure TFlevantamientosTelef.cxButton1Click(Sender: TObject);
begin
  try
     with DM.UniSQL1 DO
     begin
       SQL.Clear;
       SQL.Add('INSERT into `control de levantamientos telefonicos` (FECHASOLICITUD,FECHASALIDA,LUGAR,ORGANO,REFERENCIA,USUARIO) values (:PFECHASOLICITUD,:PFECHASALIDA,:PLUGAR,:PORGANO,:PREFERENCIA,:PUSUARIO);');
       ParamByName('PFECHASOLICITUD').AsDateTime:=cxDateEdit1.Date;
       ParamByName('PFECHASALIDA').AsDateTime:=cxDateEdit2.Date;
       ParamByName('PORGANO').AsString:=cxLookupComboBox1.Text;
       ParamByName('PLUGAR').AsString:= cxTextEdit1.Text;
       ParamByName('PUSUARIO').AsString:=FMAIN.USUARIO;
       ParamByName('PREFERENCIA').AsString:= cxTextEdit2.Text;
       Execute;
       ShowMessage('DATOS INTRODUCIDOS SATISFACTORIAMENTE');
       cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
       cxLookupComboBox1.Clear;
       cxDateEdit1.Clear;
       cxDateEdit2.Clear;
       cxTextEdit2.Clear;
       cxTextEdit1.Clear;
     end;
  except
        ShowMessage('NO SE PUDIERON INTRODUCIR LOS DATOS');
  end;
end;

procedure TFlevantamientosTelef.cxButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFlevantamientosTelef.FormShow(Sender: TObject);
begin
  if Fmain.cargo='usuario' then
  begin
   cxGrid1DBTableView1.OptionsData.Editing:=False;
   cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;
   cxGrid1DBTableView1.NavigatorButtons.Post.Visible:=False;
   cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
   cxGrid1DBTableView1.NavigatorButtons.Delete.Visible:=False;
   cxGrid1DBTableView1.NavigatorButtons.Edit.Visible:=False;
   cxGrid1DBTableView1.OptionsSelection.CellSelect:=false;
  end;
  cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
end;

end.
