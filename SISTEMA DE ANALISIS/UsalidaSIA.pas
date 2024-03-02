unit UsalidaSIA;

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
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, StdCtrls, cxButtons, cxTextEdit, cxDropDownEdit, cxCalendar,
  cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel,
  cxGroupBox;

type
  TFsalidaSIA = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxDateEdit1: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLabel3: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLabel4: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1APROBADOPOR: TcxGridDBColumn;
    cxGrid1DBTableView1CANTLLAMADAS: TcxGridDBColumn;
    cxGrid1DBTableView1EXPTECASO: TcxGridDBColumn;
    cxGrid1DBTableView1ORGANO: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1ENTREGADOA: TcxGridDBColumn;
    cxGrid1DBTableView1REFERENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxMaskEdit1: TcxMaskEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FsalidaSIA: TFsalidaSIA;

implementation
  USES UDM,Umain;
{$R *.dfm}

procedure TFsalidaSIA.cxButton1Click(Sender: TObject);
begin
  try
   if cxTextEdit1.Text <> '' then
   begin
     with DM.UniSQL1 DO
     begin
       SQL.Clear;
       SQL.Add('INSERT into `control salida ficheros de llamadas por la sia` (FECHA,APROBADOPOR,CANTLLAMADAS,EXPTECASO,ORGANO,UNIDAD,ENTREGADOA,REFERENCIA,USUARIO)');
       SQL.Add('values (:PFECHA,:PAPROBADOPOR,:PCANTLLAMADAS,:PEXPTECASO,:PORGANO,:PUNIDAD,:PENTREGADOA,:PREFERENCIA,:PUSUARIO);');
       ParamByName('PFECHA')       .AsDateTime:=cxDateEdit1.Date;
       ParamByName('PORGANO')      .AsString:=cxLookupComboBox1.Text;;
       ParamByName('PAPROBADOPOR') .AsString:= cxTextEdit1.Text;
       ParamByName('PUSUARIO')     .AsString:=FMAIN.usuario;
       ParamByName('PCANTLLAMADAS').AsInteger:= StrToInt(cxMaskEdit1.Text);
       ParamByName('PUNIDAD')      .AsString:= cxTextEdit4.Text;
       ParamByName('PEXPTECASO')   .AsString:= cxTextEdit3.Text;
       ParamByName('PENTREGADOA')  .AsString:= cxTextEdit5.Text;
       ParamByName('PREFERENCIA')  .AsString:= cxTextEdit6.Text;
       Execute;
       ShowMessage('DATOS INTRODUCIDOS SATISFACTORIAMENTE');
       cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
       cxLookupComboBox1.Clear;
       cxDateEdit1.Clear;
       cxTextEdit3.Clear;
       cxTextEdit4.Clear;
       cxTextEdit5.Clear;
       cxMaskEdit1.Clear;
       cxTextEdit1.Clear;
       cxTextEdit6.Clear;
     end;
   end
   else ShowMessage('Debe llenar el campo "aprobado por"');

  except
        ShowMessage('NO SE PUDIERON INTRODUCIR LOS DATOS');
  end;
end;

procedure TFsalidaSIA.cxButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFsalidaSIA.FormShow(Sender: TObject);
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
