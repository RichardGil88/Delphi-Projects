unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Unit2,Unit1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls, cxButtons,
  cxGroupBox, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxRadioGroup, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  AdvCircularProgress, ExtCtrls, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint;

type
  TFescrito = class(TForm)
    cxGroupBox1: TcxGroupBox;
    button1: TcxButton;
    button2: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLabel6: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    ORGANO: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxlavel9: TcxLabel;
    cxRadioGroup1: TcxRadioGroup;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1FECHAENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1EXPEDIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHASALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1IDIOMA: TcxGridDBColumn;
    cxGrid1DBTableView1TIPODEDOCUMENTO: TcxGridDBColumn;
    cxGrid1DBTableView1PAGINAS: TcxGridDBColumn;
    cxGrid1DBTableView1CUANTILLAS: TcxGridDBColumn;
    cxGrid1DBTableView1ORGANO: TcxGridDBColumn;
    cxGrid1DBTableView1URGENTENOURGENTE: TcxGridDBColumn;
    cxGrid1DBTableView1REFERENCIATEMATICA: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
    cxGrid1DBTableView1IDESCRITO: TcxGridDBColumn;
    AdvCircularProgress1: TAdvCircularProgress;
    procedure button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fescrito: TFescrito;

implementation

{$R *.dfm}

procedure TFescrito.button1Click(Sender: TObject);
begin
if (cxDateEdit1.Text='')or (cxTextEdit1.Text='')or
   (cxTextEdit2.Text='')or (cxTextEdit3.Text='')or
   (cxLookupComboBox2.Text='') or (cxLookupComboBox3.Text='')or
   (cxLookupComboBox4.Text='')or (cxDateEdit1.Text='')or (cxDateEdit2.Text='')then
   ShowMessage('DEBE LLENAR LOS DATOS')
else
 begin
    with DM.UniSQL1 do
  begin
   try
     begin
      SQL.Clear;
      SQL.Add('insert into `escrito`("FECHA ENTRADA",ESTADO,EXPEDIENTE,"FECHA SALIDA",IDIOMA,"TIPO DE DOCUMENTO",PAGINAS,CUANTILLAS,ORGANO,"URGENTE/NO URGENTE","REFERENCIA TEMATICA",USUARIO)');
      SQL.Add('values (:FECHAE,:ESTADO,:EXPEDIENTE,:FECHAS,:IDIOMA,:TIPODEDOCUMENTO,:PAGINAS,:CUANTILLAS,:ORGANO,:URGENTE,:REFERENCIATEMATICA,:USUARIO);');
      ParamByName('USUARIO').AsString:=Fmain.usuario;
      ParamByName('FECHAE').AsDateTime:=cxDateEdit1.DATE;
      ParamByName('FECHAS').AsDateTime:=cxDateEdit2.DATE;
      ParamByName('IDIOMA').AsString:=cxLookupComboBox2.Text;
      ParamByName('EXPEDIENTE').AsString:=cxTextEdit1.Text;
      ParamByName('TIPODEDOCUMENTO').AsString:=cxLookupComboBox3.Text;
      ParamByName('PAGINAS').AsString:=cxTextEdit2.Text;
      ParamByName('CUANTILLAS').AsString:=cxTextEdit3.Text;
      ParamByName('ORGANO').AsString:=cxLookupComboBox4.Text;
      ParamByName('REFERENCIATEMATICA').AsString:=cxTextEdit4.Text;
      ParamByName('ESTADO').AsString:=cxLookupComboBox1.Text;
      if cxRadioButton1.Checked then
       begin
        ParamByName('URGENTE').AsInteger:=1;
       end
      else if cxRadioButton2.Checked then
       begin
         ParamByName('URGENTE').AsInteger:=0;
       end;
      Execute;
      ShowMessage('DATOS AGREGADOS CON EXITO');

      cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
      cxDateEdit1.Clear;
      cxDateEdit2.Clear;
      cxTextEdit1.Clear;
      cxTextEdit2.Clear;
      cxTextEdit3.Clear;
      cxTextEdit4.Clear;
      cxLookupComboBox1.Clear;
      cxLookupComboBox2.Clear;
      cxLookupComboBox4.Clear;
      cxLookupComboBox3.Clear;
      cxRadioButton1.Checked:=FALSE;
      cxRadioButton2.Checked:=FALSE;
     end;
   except
        ShowMessage('NO SE PUDIERON AGREGAR LOS DATOS');
   end;
  end;
 end;
end;

procedure TFescrito.button2Click(Sender: TObject);
begin
Close;
end;

procedure TFescrito.FormShow(Sender: TObject);
begin
cxGrid1DBTableView1.NavigatorButtons.Append.Visible:=False;
cxGrid1DBTableView1.NavigatorButtons.Insert.Visible:=False;
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
    cxLookupComboBox3.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox4.Properties.ListSource.DataSet.Active:=True;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
    cxDateEdit1.Clear;
    cxDateEdit2.Clear;
    cxTextEdit1.Clear;
    cxTextEdit2.Clear;
    cxTextEdit3.Clear;
    cxTextEdit4.Clear;
    cxLookupComboBox1.Clear;
    cxLookupComboBox2.Clear;
    cxLookupComboBox4.Clear;
    cxLookupComboBox3.Clear;
    cxRadioButton1.Checked:=FALSE;
    cxRadioButton2.Checked:=FALSE;
end;

end.
