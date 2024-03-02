unit Uservicioagregado;

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
  dxSkinXmas2008Blue, Menus, StdCtrls, cxRadioGroup, cxGroupBox, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  cxTextEdit, cxLabel, cxButtons,UDM, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  TFservicioagregado = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGroupBox2: TcxGroupBox;
    cxLabel8: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxTextEdit6: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    cxLabel12: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxLabel4: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel6: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxRadioGroup1: TcxRadioGroup;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton1: TcxRadioButton;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLabel13: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxTextEdit10: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxTextEdit11: TcxTextEdit;
    cxLabel16: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid2DBTableView2Id: TcxGridDBColumn;
    cxGrid2DBTableView2REGISTRO: TcxGridDBColumn;
    cxGrid2DBTableView2Fecha: TcxGridDBColumn;
    cxGrid2DBTableView2chequeo: TcxGridDBColumn;
    cxGrid2DBTableView2Salida: TcxGridDBColumn;
    cxGrid2DBTableView2Tipodeservicio: TcxGridDBColumn;
    cxGrid2DBTableView2Req: TcxGridDBColumn;
    cxGrid2DBTableView2Des: TcxGridDBColumn;
    cxGrid2DBTableView2Expediente: TcxGridDBColumn;
    cxGrid2DBTableView2Organo: TcxGridDBColumn;
    cxGrid2DBTableView2Seccin: TcxGridDBColumn;
    cxGrid2DBTableView2OficialOperatvo: TcxGridDBColumn;
    cxGrid2DBTableView2NiveldeAprobacin: TcxGridDBColumn;
    cxGrid2DBTableView2PrimerNombre: TcxGridDBColumn;
    cxGrid2DBTableView2PrimerApellido: TcxGridDBColumn;
    cxGrid2DBTableView2SegundoApellido: TcxGridDBColumn;
    cxGrid2DBTableView2Direccin: TcxGridDBColumn;
    cxGrid2DBTableView2Referencia: TcxGridDBColumn;
    cxGrid2DBTableView2usuario: TcxGridDBColumn;
    cxGrid2DBTableView2SegundoNombre: TcxGridDBColumn;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fservicioagregado: TFservicioagregado;

implementation

uses Umain;

{$R *.dfm}

procedure TFservicioagregado.cxButton1Click(Sender: TObject);
begin
  with DM.UniSQL1 do
   begin
     SQL.Clear;
     SQL.Add('insert into `servicios agregados` (REGISTRO,Fecha,Salida,chequeo,TipodeServicio,Req,Des,Expediente,Organo,Sección,OficialOperatvo,NiveldeAproBación,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido,Dirección,Referencia,`Usuario`)');
     SQL.Add('values (:Pregistro,:Pfecha,:Psalida,:Pchequeo,:Ptiposervicio,:Preq,:Pdes,:Pexpediente,:Porgano,:Pseccion,:Poficial,:Pnivel,:Pnombre,:Pnombre2,:Papellido1,:Papellido2,:Pdireccion,:Preferencia,:Pusuario);');
     ParamByName('Pregistro').AsString:=cxTextEdit1.Text;
     ParamByName('Pfecha').AsDateTime:=cxDateEdit1.Date;
     ParamByName('Psalida').AsDateTime:=cxDateEdit2.Date;
     ParamByName('Pchequeo').AsString:=cxTextEdit2.Text;
     ParamByName('Ptiposervicio').AsString:=cxLookupComboBox1.Text;
     if cxRadioButton1.Checked then
       begin
         ParamByName('Preq').AsInteger:=StrToInt('1');
       end
     else
       begin
         ParamByName('Preq').AsInteger:=StrToInt('0');
       end;
     if cxRadioButton2.Checked then
       begin
         ParamByName('Pdes').AsInteger:=StrToInt('1');
       end
     else
       begin
         ParamByName('Pdes').AsInteger:=StrToInt('0');
       end;
     ParamByName('Pexpediente').AsString:=cxTextEdit3.Text;
     ParamByName('Porgano').AsString:=cxLookupComboBox3.Text;
     ParamByName('Pseccion').AsString:=cxTextEdit9.Text;
     ParamByName('Poficial').AsString:=cxTextEdit10.Text;
     ParamByName('Pusuario').AsString:=fmain.usuario;
     ParamByName('Pnivel').AsString:=cxLookupComboBox2.Text;
     ParamByName('Pnombre').AsString:=cxTextEdit4.Text;
     ParamByName('Papellido1').AsString:=cxTextEdit7.Text;
     ParamByName('Papellido2').AsString:=cxTextEdit5.Text;
     ParamByName('Pdireccion').AsString:=cxTextEdit8.Text;
     ParamByName('Preferencia').AsString:=cxTextEdit11.Text;
     ParamByName('Pnombre2').AsString:=cxTextEdit6.Text;
     Execute;

     ShowMessage('DATOS INTRODUCIDOS CON EXITO');
     if Dialogs.MessageDlg('DESEA INTRODUCIRLE MAS DATOS AL MISMO OBJETIVO'
         ,mtConfirmation,[mbYes, mbNo], 0, mbYes) = mrYes then
      begin
        cxTextEdit2.Clear;
        cxLookupComboBox1.Clear;
      end
     else
     begin
       cxTextEdit1.Clear;
       cxTextEdit2.Clear;
       cxTextEdit3.Clear;
       cxTextEdit4.Clear;
       cxTextEdit5.Clear;
       cxTextEdit6.Clear;
       cxTextEdit7.Clear;
       cxTextEdit8.Clear;
       cxTextEdit9.Clear;
       cxTextEdit10.Clear;
       cxTextEdit11.Clear;
       cxLookupComboBox1.Clear;
       cxLookupComboBox2.Clear;
       cxLookupComboBox3.Clear;
       cxDateEdit1.Clear;
       cxDateEdit2.Clear;
       cxRadioButton1.Checked:=False;
       cxRadioButton2.Checked:=False;
     end;
   end;
end;

procedure TFservicioagregado.cxButton2Click(Sender: TObject);
begin
with DM do
   begin
    UniSQL1.SQL.Clear;
   end;
Close;
end;

procedure TFservicioagregado.FormShow(Sender: TObject);
begin
  if Fmain.cargo='usuario' then
  begin
   cxGrid2DBTableView2.OptionsData.Editing:=False;
   cxGrid2DBTableView2.NavigatorButtons.Insert.Visible:=False;
   cxGrid2DBTableView2.NavigatorButtons.Post.Visible:=False;
   cxGrid2DBTableView2.NavigatorButtons.Append.Visible:=False;
   cxGrid2DBTableView2.NavigatorButtons.Delete.Visible:=False;
   cxGrid2DBTableView2.NavigatorButtons.Edit.Visible:=False;
   cxGrid2DBTableView2.OptionsSelection.CellSelect:=false;
  end;
  cxGrid2DBTableView2.DataController.DataSource.DataSet.Active:=True;
  cxGrid2DBTableView2.DataController.Refresh;

  cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
  cxLookupComboBox2.Properties.ListSource.DataSet.Active:=True;
  cxLookupComboBox3.Properties.ListSource.DataSet.Active:=True;
end;

end.
