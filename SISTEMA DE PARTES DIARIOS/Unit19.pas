unit Unit19;

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
  dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons, cxDropDownEdit, cxCalendar,
  cxTextEdit, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLabel, cxRadioGroup, cxGroupBox;

type
  TFbajaKM = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxRadioGroup1: TcxRadioGroup;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxLabel13: TcxLabel;
    cxLookupComboBox5: TcxLookupComboBox;
    cxLabel15: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    button1: TcxButton;
    button2: TcxButton;
    cxLabel17: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxDateEdit3: TcxDateEdit;
    cxDateEdit4: TcxDateEdit;
    cxLabel16: TcxLabel;
    cxLabel1: TcxLabel;
    cxMaskEdit1: TcxMaskEdit;
    procedure button1Click(Sender: TObject);
    procedure button2Click(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
    procedure cxRadioButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FbajaKM: TFbajaKM;

implementation
 USES Unit2, Unit7,Unit10;
{$R *.dfm}

procedure TFbajaKM.button1Click(Sender: TObject);
begin
 if (cxDateEdit2.Text='')or (cxTextEdit5.Text='')
 or (cxDateEdit4.Text='') or (cxDateEdit3.Text='')
 or (cxMaskEdit1.Text='')
 or ((cxRadioButton1.Checked=False)and(cxRadioButton2.Checked=false))
 then
  begin
    if (cxRadioButton2.Checked=True)and (cxLookupComboBox5.Text='') then
    begin
      ShowMessage('Debe llenar el motivo de no cumplimiento');
    end;
   ShowMessage('LE FALTAN DATOS POR LLENAR');
  end
 else
  begin
   with DM.UniSQL1 do
    begin
      try
       SQL.Clear;
       SQL.Add('update `km no permanentes 1` set `km no permanentes 1`.`ESTADO`=''Terminado'',`km no permanentes 1`.`SALIDA` =:PSALIDA,`km no permanentes 1`.`cumpfinalidadop`=:PCUMP,`km no permanentes 1`.`motivonocumplim`=:PMOTIVO');
       SQL.Add(',`km no permanentes 1`.`ppalestematicasreferencia`=:PTEMATICAS,`km no permanentes 1`.`infresultado`=:PRESULTADO,`km no permanentes 1`.`trancripsia`=:PSIA,`km no permanentes 1`.`cantidaddecuartillas`=:Pcant');
       SQL.Add(' where `km no permanentes 1`.idkmnoperm =:Pid;');
       if cxRadioButton1.Checked then
         begin
          ParamByName('PCUMP').AsInteger:=1;
         end
       else if cxRadioButton2.Checked then
         begin
           ParamByName('PCUMP').AsInteger:=0;
         end;
       ParamByName('PSALIDA').AsDateTime:=cxDateEdit2.Date;
       ParamByName('PRESULTADO').AsDateTime:=cxDateEdit3.Date;
       ParamByName('PSIA').AsDateTime:=cxDateEdit4.Date;
       ParamByName('PTEMATICAS').AsString:=cxTextEdit5.Text;
       ParamByName('PMOTIVO').AsString:=cxLookupComboBox5.Text;
       ParamByName('Pcant').AsInteger:=StrToInt(cxMaskEdit1.Text);
       ParamByName('Pid').AsInteger:=Fkmnopermanentes.idkm;
       Execute;
       ShowMessage('LA CLAVE ESTA AHORA DE BAJA');
       FKMNOPERMANENTES.cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
       Close;
      except
         ShowMessage('LA CLAVE NO SE PUDO PONER DE BAJA');
      end;
    end;
  end;

end;

procedure TFbajaKM.button2Click(Sender: TObject);
begin
Close;
end;

procedure TFbajaKM.cxRadioButton1Click(Sender: TObject);
begin
cxLookupComboBox5.Enabled:=False;
end;

procedure TFbajaKM.cxRadioButton2Click(Sender: TObject);
begin
 cxLookupComboBox5.Enabled:=true;
end;

procedure TFbajaKM.FormShow(Sender: TObject);
begin
cxLookupComboBox5.Properties.DataController.DataSet.Active:=True;
end;

end.
