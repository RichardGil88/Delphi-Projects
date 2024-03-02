unit Uactreuorganos;

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
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox,
  Menus, StdCtrls, cxButtons, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxMaskEdit, cxCalendar, cxLabel, cxTextEdit,UDM;

type
  TFactreuorganos = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxTextEdit2: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel6: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLookupComboBox2: TcxLookupComboBox;
    cxGrid1DBTableView1ORGANO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAACTUALIZACION: TcxGridDBColumn;
    cxGrid1DBTableView1OFICIAL: TcxGridDBColumn;
    cxGrid1DBTableView1REU: TcxGridDBColumn;
    cxGrid1DBTableView1TABLASAISLADAS: TcxGridDBColumn;
    cxGrid1DBTableView1SALIDAEN: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxMaskEdit1: TcxMaskEdit;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Factreuorganos: TFactreuorganos;

implementation

uses Umain;

{$R *.dfm}

procedure TFactreuorganos.cxButton1Click(Sender: TObject);
begin
  if (cxLookupComboBox1.Text='')OR (cxLookupComboBox2.Text='') OR (cxDateEdit1.Text='') then
     ShowMessage('LLENE LOS CAMPOS CON *')
  ELSE
   begin
      try
        with DM.UniSQL1 DO
         begin
           SQL.Clear;
           SQL.Add('INSERT into `actualización bd reu en los organos 2009` (ORGANO,FECHAACTUALIZACION,OFICIAL,REU,TABLASAISLADAS,SALIDAEN,USUARIO)values (:PORGANO,:PFECHA,:POFICIAL,:PREU,:PAISLADAS,:PSALIDA,:PUSUARIO);');
           ParamByName('PORGANO').AsString:=cxLookupComboBox2.Text;
           ParamByName('PSALIDA').AsString:=cxLookupComboBox1.Text;
           ParamByName('PFECHA').AsDateTime:=cxDateEdit1.Date;
           ParamByName('PREU').AsInteger:= StrToInt(cxMaskEdit1.Text);
           ParamByName('PAISLADAS').AsString:= cxTextEdit4.Text;
           ParamByName('PUSUARIO').AsString:=FMAIN.USUARIO;
           ParamByName('POFICIAL').AsString:= cxTextEdit2.Text;
           Execute;
           ShowMessage('DATOS INTRODUCIDOS SATISFACTORIAMENTE');
           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

           cxLookupComboBox1.Clear;
           cxLookupComboBox2.Clear;
           cxDateEdit1.Clear;
           cxTextEdit2.Clear;
           cxMaskEdit1.Clear;
           cxTextEdit4.Clear;
         end;
      except
         ShowMessage('NO SE PUDIERON INTRODUCIR LOS DATOS');
      end;
   end;
end;

procedure TFactreuorganos.cxButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFactreuorganos.FormShow(Sender: TObject);
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
  cxLookupComboBox2.Properties.ListSource.DataSet.Active:=True;
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
end;

end.
 