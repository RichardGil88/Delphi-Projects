unit UcontrolAntecedentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGraphics, Menus, StdCtrls, cxButtons, cxTextEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLabel, cxMaskEdit, cxCalendar, cxControls, cxContainer, cxEdit,
  cxGroupBox, cxLookAndFeels, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TFcontrolAntecedentes = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxDateEdit1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel6: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    cxDateEdit2: TcxDateEdit;
    cxGroupBox2: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1fecha_entrada: TcxGridDBColumn;
    cxGrid2DBTableView1fecha_salida: TcxGridDBColumn;
    cxGrid2DBTableView1organo_solicitante: TcxGridDBColumn;
    cxGrid2DBTableView1oficial: TcxGridDBColumn;
    cxGrid2DBTableView1nivel_aprobacion: TcxGridDBColumn;
    cxGrid2DBTableView1motivo: TcxGridDBColumn;
    cxGrid2DBTableView1negativos: TcxGridDBColumn;
    cxGrid2DBTableView1positivos: TcxGridDBColumn;
    cxGrid2DBTableView1ktejecutordelservicio: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FcontrolAntecedentes: TFcontrolAntecedentes;

implementation

uses Math, Umain, UDM;

{$R *.dfm}

procedure TFcontrolAntecedentes.cxButton2Click(Sender: TObject);
begin
Close;
end;

procedure TFcontrolAntecedentes.FormShow(Sender: TObject);
begin
   cxGrid2DBTableView1.DataController.DataSet.Active:=True;
   cxGrid2DBTableView1.DataController.DataSource.DataSet.Refresh;
   cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
   cxLookupComboBox2.Properties.ListSource.DataSet.Active:=True;
end;

procedure TFcontrolAntecedentes.cxButton1Click(Sender: TObject);
begin
 if (cxDateEdit1.Text='')or(cxDateEdit2.Text='')or(cxLookupComboBox1.Text='')or(cxLookupComboBox2.Text='')or(cxTextEdit1.Text='')or(cxTextEdit2.Text='')or(cxTextEdit3.Text='')or(cxTextEdit4.Text='') then
   begin
    ShowMessage('DEBE LLENAR TODOS LOS CAMPOS');
   end
 else
   begin
     with DM.Qagregarcontrol do
      begin
        ParamByName('fentrada').AsDateTime:=cxDateEdit1.Date;
        ParamByName('fsalida').AsDateTime:=cxDateEdit2.Date;
        ParamByName('organo').AsString:=cxLookupComboBox1.text;
        ParamByName('Naprobacion').AsString:=cxLookupComboBox2.text;
        ParamByName('oficial').AsString:=cxTextEdit1.text;
        ParamByName('motivo').AsString:=cxTextEdit2.text;
        ParamByName('negativos').AsString:=cxTextEdit3.text;
        ParamByName('positivos').AsString:=cxTextEdit4.text;
        ParamByName('ktejecutordelservicio').AsString:=Fmain.usuario;
        Execute;
        ShowMessage('Control Agregado con exito');
      end;
    cxDateEdit1.Clear;
    cxDateEdit2.Clear;
    cxLookupComboBox1.Clear;
    cxLookupComboBox2.Clear;
    cxTextEdit1.Clear;
    cxTextEdit2.Clear;
    cxTextEdit3.Clear;
    cxTextEdit4.Clear;
   end;
end;

end.
