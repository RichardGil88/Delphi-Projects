unit Unit38;

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
  dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons, cxLabel, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit,
  cxMemo, cxGroupBox;

type
  TFalertas = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxMemo1: TcxMemo;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    button1: TcxButton;
    button2: TcxButton;
    cxComboBox1: TcxComboBox;
    cxLabel3: TcxLabel;
    procedure button2Click(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Falertas: TFalertas;

implementation
  uses Unit2,Unit1;
{$R *.dfm}

procedure TFalertas.button1Click(Sender: TObject);
  begin
    if Fmain.unidad='12' then
      begin
        DM.UniSQL1.SQL.Clear;
        DM.UniSQL1.SQL.Add('insert into alertas (unidad,alerta,estado,usuario) values (:unidad,:alerta,:estado,:usuario);');
        DM.UniSQL1.ParamByName('unidad').AsString:=cxComboBox1.Text;
        DM.UniSQL1.ParamByName('alerta').AsString:=cxMemo1.Text;
        DM.UniSQL1.ParamByName('estado').AsString:='nuevo';
        DM.UniSQL1.ParamByName('usuario').AsString:=Fmain.usuario;
        DM.UniSQL1.Execute;
        ShowMessage('Alerta enviada correctamente');
        cxComboBox1.Clear;
        cxMemo1.Clear;
      end
    else
      begin
        DM.UniSQL1.SQL.Clear;
        DM.UniSQL1.SQL.Add('insert into alertas (unidad,alerta,estado,usuario) values (:unidad,:alerta,:estado,:usuario);');
        DM.UniSQL1.ParamByName('unidad').AsString:='12';
        DM.UniSQL1.ParamByName('alerta').AsString:=cxMemo1.Text;
        DM.UniSQL1.ParamByName('estado').AsString:='nuevo';
        DM.UniSQL1.ParamByName('usuario').AsString:=Fmain.usuario;
        DM.UniSQL1.Execute;
        ShowMessage('Alerta enviada correctamente');
        cxComboBox1.Clear;
        cxMemo1.Clear;
      end;
  end;
procedure TFalertas.button2Click(Sender: TObject);
  begin
    Close;
  end;
procedure TFalertas.FormShow(Sender: TObject);
begin
if (Fmain.unidad<>'12') then
begin
  cxLabel3.Visible:=True;
  cxLabel1.Visible:=False;
  cxComboBox1.Visible:=False;
end;

end;

end.
