unit UDepurar;

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
  dxSkinXmas2008Blue, Menus, StdCtrls, cxButtons, cxRadioGroup, cxGroupBox,
  cxLabel, CheckLst;

type
  TFdepurar = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    chklst1: TCheckListBox;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fdepurar: TFdepurar;

implementation
 uses udm;
{$R *.dfm}

procedure TFdepurar.cxButton1Click(Sender: TObject);
var
  I,N: Integer;
  valor,cadena:string;
begin
 // depurar los seleccionados
  try
    for I := 0 to chklst1.Count - 1 do
    begin
      if chklst1.Checked[i] then
      begin
       try
        DM.Qdepurar.SQL.Clear;
        valor:=chklst1.Items.Strings[i];
        cadena:='drop table `'+valor+'`';
        DM.Qdepurar.SQL.Add(cadena);
        DM.Qdepurar.Execute;
       except
         ShowMessage('no se pudo eliminar la tabla '+valor);
       end;
      end;
    end;
    ShowMessage('Dase de Datos depurada con exito');
  except

  end;


  //mostrando las tablas en la lista
  chklst1.Clear;
  dm.Qlistartablas.Execute;
  chklst1.Clear;
  dm.Qlistartablas.First;
  for I := 0 to dm.Qlistartablas.RecordCount - 1 do
  begin
   //comprobar si es un numero
    N := StrToIntDef(dm.Qlistartablas.FieldByName('Tables_in_aaa').AsString, -1);
    if N = -1 then
     // es una letra
    else
    begin
     // es un numero
     chklst1.Items.Insert(i,dm.Qlistartablas.FieldByName('Tables_in_aaa').AsString);
     dm.Qlistartablas.Next;
    end;
  end;

end;

procedure TFdepurar.FormShow(Sender: TObject);
var
i,N:Integer;
begin
  //mostrando las tablas en la lista
  chklst1.Clear;
  dm.Qlistartablas.Execute;
  chklst1.Clear;
  dm.Qlistartablas.First;
  for I := 0 to dm.Qlistartablas.RecordCount - 1 do
  begin
   //comprobar si es un numero
    N := StrToIntDef(dm.Qlistartablas.FieldByName('Tables_in_aaa').AsString, -1);
    if N = -1 then
     // es una letra
    else
    begin
     // es un numero
     chklst1.Items.Insert(i,dm.Qlistartablas.FieldByName('Tables_in_aaa').AsString);
     dm.Qlistartablas.Next;
    end;
  end;
end;

end.
