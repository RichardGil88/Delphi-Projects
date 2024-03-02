unit UconfigurarPc;

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
  dxSkinXmas2008Blue, cxGroupBox, cxTextEdit, cxMaskEdit, cxButtonEdit,
  FolderDialog, StdCtrls, cxCheckBox, cxLabel,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, Buttons,
  Spin, ExtCtrls, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  Vcl.Menus, cxButtons, Vcl.Mask;

type
  TFconfigurarPc = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxButtonEdit1: TcxButtonEdit;
    FolderDialog1: TFolderDialog;
    cxLabel2: TcxLabel;
    sePantallas: TSpinEdit;
    seTeclados: TSpinEdit;
    cxCheckBox4: TcxCheckBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxButton1: TcxButton;
    MaskEdit1: TMaskEdit;
    procedure cxButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function IsValidIP(S: String): Boolean;
    var
    ftp,dirftp:string;
    pantallas,tecleado,activo,usb:Boolean;
    TiempoPantallas,TiempoTeclado:Integer;
  end;

var
  FconfigurarPc: TFconfigurarPc;

implementation
 uses UDM,UPrincipal,ULogin, RegExpr;
{$R *.dfm}

procedure TFconfigurarPc.cxButton1Click(Sender: TObject);
begin
//   if   (MaskEdit1.Text <> 'localhost')
//    and (MaskEdit1.Text <> '127.0.0.1')
//    and (MaskEdit1.Text <> '')
//    and (cxButtonEdit1.Text <> '')
//    and IsValidIP(MaskEdit1.Text)
//   then
//   begin
//     // PANTALLAS
//     if cxCheckBox1.Checked then
//     begin
//      if sePantallas.Text <> '0' then
//      begin
//        pantallas:=True;
//        TiempoPantallas:=StrToInt(sePantallas.Text);
//      end
//      else
//      begin
//       ShowMessage('El tiempo de las pantallas no puede estar en cero');
//       Exit;
//      end;
//     end
//     else
//     begin
//       pantallas:=False;
//       TiempoPantallas:=0;
//     end;
//
//     // TECLADO
//     if cxCheckBox2.Checked then
//     begin
//      if seTeclados.Text <> '0' then
//      begin
//        tecleado:=True;
//        TiempoTeclado:=StrToInt(seTeclados.Text);
//      end
//      else
//      begin
//       ShowMessage('El tiempo de las Tecleados no puede estar en cero');
//       Exit;
//      end;
//     end
//     else
//     begin
//       tecleado:=False;
//       TiempoTeclado:=0;
//     end;
//
//     // ACTIVAR
//     if cxCheckBox3.Checked then
//      activo:=True
//     else
//      activo:=False;
//
//     // USB
//     if cxCheckBox4.Checked then
//      usb:=True
//     else
//      usb:=False;
//
//     // FTP
//     ftp := StringReplace(MaskEdit1.Text, ' ', '', [rfReplaceAll]);
//     //ftp:=MaskEdit1.Text;
//
//
//     try
//        // actualizando la tabla
//        with dm.UniSQL1 do
//        begin
//          SQL.Clear;
//          SQL.Add('Update Maquinas set Maquinas.Activo=:PActivo, Maquinas.Pantallas=:Ppantallas, Maquinas.TiempoPantallas=:PTiempoPantallas, ');
//          SQL.Add('Maquinas.Teclado=:Pteclado, Maquinas.TiempoTeclado=:PTiempoTeclado, Maquinas.USB=:PUSB, Maquinas.Ftp=:Pftp, Maquinas.DirFTP=:Pdirftp  where Maquinas.Ip = :Pip;');
//          ParamByName('PActivo').AsBoolean:=FconfigurarPc.activo;
//          ParamByName('Ppantallas').AsBoolean:=FconfigurarPc.pantallas;
//          ParamByName('PTiempoPantallas').AsInteger:=FconfigurarPc.TiempoPantallas;
//          ParamByName('Pteclado').AsBoolean:=FconfigurarPc.tecleado;
//          ParamByName('PTiempoTeclado').AsInteger:=FconfigurarPc.TiempoTeclado;
//          ParamByName('PUSB').AsBoolean:=FconfigurarPc.usb;
//          ParamByName('Pftp').AsString:=FconfigurarPc.ftp;
//          ParamByName('Pip').AsString:=FPrincipal.RecMaq1.ip;
//          ParamByName('Pdirftp').AsString:=FconfigurarPc.dirftp;
//          Execute;
//          FPrincipal.cxGrid1DBTableView1.DataController.DataSet.Refresh;
//        end;
//     except
//        ShowMessage('No se pudo insertar en la BD a la PC: '+ FPrincipal.RecMaq1.ip);
//        Exit;
//     end;
//     Close;
//   end
//   else
//   begin
//     ShowMessage('la ip del ftp no se puede llamar "localhost" ni "127.0.0.1" ni "" o es incorrecta ');
//   end;
end;

procedure TFconfigurarPc.cxButtonEdit1PropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
    FolderDialog1.Execute;
    cxButtonEdit1.Text:=FolderDialog1.Directory;
    dirftp:= FolderDialog1.Directory;
end;

procedure TFconfigurarPc.FormShow(Sender: TObject);
begin
// cargando los datos del grid;
//  try
//    cxLabel3.Caption:=FPrincipal.RecMaq1.Pcname;
//    MaskEdit1.Text:= FPrincipal.RecMaq1.Ftp;
//    cxButtonEdit1.Text:=FPrincipal.RecMaq1.DirFTP;
//    sePantallas.Text:=IntToStr(FPrincipal.RecMaq1.TiempoPantallas);
//    seTeclados.Text:=IntToStr(FPrincipal.RecMaq1.TiempoTeclado);
//
//    if FPrincipal.RecMaq1.Pantallas = 1 then cxCheckBox1.Checked:=True else  cxCheckBox1.Checked:=false;
//    if FPrincipal.RecMaq1.Activo = 1 then cxCheckBox3.Checked:=True else  cxCheckBox3.Checked:=false;
//    if FPrincipal.RecMaq1.Teclado = 1 then cxCheckBox2.Checked:=True else  cxCheckBox2.Checked:=false;
//    if FPrincipal.RecMaq1.USB = 1 then cxCheckBox4.Checked:=True else  cxCheckBox4.Checked:=false;
//  except
//
//  end;

end;

function TFconfigurarPc.IsValidIP(S: String): Boolean;
var
  Strings: TStringList;
begin
  Result := false;

  Strings := TStringList.Create;
  Strings.Delimiter := '.';
  Strings.DelimitedText := S;

  if Strings.Count <> 4 then exit;

  repeat
    Result := (StrToIntDef(Strings[0], -1) in [0..255]);
    Strings.Delete(0);
  until (Strings.Count = 0) or not Result;

  Strings.Free;
end;

end.
