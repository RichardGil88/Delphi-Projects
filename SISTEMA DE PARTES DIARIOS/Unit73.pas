unit Unit73;

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
  TFbajachequeoKD = class(TForm)
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
    procedure button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure cxRadioButton1Click(Sender: TObject);
    procedure cxRadioButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FbajachequeoKD: TFbajachequeoKD;

implementation
 uses Unit1,Unit2,Unit36;
{$R *.dfm}

procedure TFbajachequeoKD.button1Click(Sender: TObject);
begin
  if (cxDateEdit2.Text='') then
   ShowMessage('DEBE LLENAR LOS DATOS')
  else
   begin
     with DM.UniSQL1 do
      begin
        try
         SQL.Clear;
         SQL.Add('update `chequeos kd` set `chequeos kd`.`ESTADO`=:PBAJA,`chequeos kd`.`FECHA BAJA` =:Pfechabaja,`chequeos kd`.`CUMPLIMIENTO FINALIDAD`=:pcumplimiento,`chequeos kd`.`MOTIVOS NO CUMPLIMIENTO`=:Pmotivo');
         SQL.Add('where `chequeos kd`.`IDCHEQUEOSKD` =:Pid;');
         ParamByName('PBAJA').AsString:='BAJA';
         ParamByName('Pfechabaja').AsDateTime:=cxDateEdit2.Date;
         if cxRadioButton1.Checked then
           begin
            ParamByName('pcumplimiento').AsInteger:=1;
           end
         else if cxRadioButton2.Checked then
           begin
             ParamByName('pcumplimiento').AsInteger:=0;
           end;
         ParamByName('Pmotivo').AsString:=cxLookupComboBox5.Text;
         ParamByName('Pid').AsInteger:=FchequeosKD.idchequeokd;
         Execute;
         ShowMessage('LA CLAVE AHORA ESTA DE BAJA');
         Close;
        except
           ShowMessage('LA CLAVE NO SE PUDO PONER DE BAJA');
        end;
      end;
   end;
end;

procedure TFbajachequeoKD.button2Click(Sender: TObject);
begin
Close;
end;

procedure TFbajachequeoKD.cxRadioButton1Click(Sender: TObject);
begin
cxLookupComboBox5.Enabled:=False;
end;

procedure TFbajachequeoKD.cxRadioButton2Click(Sender: TObject);
begin
cxLookupComboBox5.Enabled:=True;
end;

procedure TFbajachequeoKD.FormShow(Sender: TObject);
begin
cxLookupComboBox5.Enabled:=True;
cxRadioButton1.Checked:=False;
cxRadioButton2.Checked:=False;
cxLookupComboBox5.Properties.DataController.DataSet.Active:=True;
end;

end.
