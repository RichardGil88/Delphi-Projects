unit Unit35;

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
  cxFilter, cxData, cxDataStorage, DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, StdCtrls, cxButtons, cxGroupBox, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxRadioGroup, AdvCircularProgress,
  ExtCtrls;

type
  TFinterrupciones = class(TForm)
    GB_INTERRUPCIONES: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    button1: TcxButton;
    button2: TcxButton;
    cxGroupBox5: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel4: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel11: TcxLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel6: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxRadioGroup2: TcxRadioGroup;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    cxLabel10: TcxLabel;
    cxLookupComboBox3: TcxLookupComboBox;
    cxGrid1DBTableView1FECHAINICIO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAFIN: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOINTERRUPCION: TcxGridDBColumn;
    cxGrid1DBTableView1TELEFONO: TcxGridDBColumn;
    cxGrid1DBTableView1CASO: TcxGridDBColumn;
    cxGrid1DBTableView1ORGANO: TcxGridDBColumn;
    cxGrid1DBTableView1NIVELAPROBACION: TcxGridDBColumn;
    cxGrid1DBTableView1CUMPLIMIENTO: TcxGridDBColumn;
    cxGrid1DBTableView1MOTIVODELNO: TcxGridDBColumn;
    cxGrid1DBTableView1FASE: TcxGridDBColumn;
    cxGrid1DBTableView1OFICIALOPERATIVO: TcxGridDBColumn;
    cxGrid1DBTableView1OBSERVACION: TcxGridDBColumn;
    cxGrid1DBTableView1USUARIO: TcxGridDBColumn;
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
  Finterrupciones: TFinterrupciones;

implementation
 uses Unit2,Unit1;
{$R *.dfm}

procedure TFinterrupciones.button1Click(Sender: TObject);
begin
 if (cxDateEdit1.Text='')or (cxTextEdit1.Text='')or (cxMaskEdit1.Text='')or
    (cxTextEdit2.Text='')or (cxLookupComboBox4.Text='')or (cxLookupComboBox2.Text='')or
    (cxLookupComboBox1.Text='')or (cxTextEdit3.Text='')or (cxTextEdit4.Text='')
 then
    ShowMessage('Debe llenar los campos')
 else
   begin
     with DM.UniSQL1 do
       begin
        try
          SQL.Clear;
          SQL.Add('INSERT INTO `interupciones` (fechainicio,fechafin,"tipo interrupcion",caso,cumplimiento,fase,"motivo del no",nivelaprobacion,observacion,oficialoperativo,organo,telefono,usuario)');
          SQL.Add('VALUES(:fechainicio,:fechafin,:tipointerrupcion,:caso,:cumplimiento,:fase,:motivo,:nivelaprobacion,:observacion,:oficialoperativo,:organo,:telefono,:usuario);');
          ParamByName('fechainicio').AsDateTime:=cxDateEdit1.Date;
          ParamByName('fechafin').AsDateTime:=cxDateEdit2.Date;
          ParamByName('tipointerrupcion').AsString:=cxTextEdit1.Text;
          ParamByName('caso').AsString:=cxTextEdit2.Text;
          if cxRadioButton3.Checked = true then
          begin
           ParamByName('cumplimiento').AsInteger:=1;
          end
          else if cxRadioButton4.Checked = False then
          begin
            ParamByName('cumplimiento').AsInteger:=0;
          end;
          ParamByName('fase').AsString:=cxLookupComboBox2.Text;
          ParamByName('motivo').AsString:=cxLookupComboBox3.Text;
          ParamByName('nivelaprobacion').AsString:=cxLookupComboBox4.Text;
          ParamByName('observacion').AsString:=cxTextEdit4.Text;
          ParamByName('oficialoperativo').AsString:=cxTextEdit3.Text;
          ParamByName('organo').AsString:=cxLookupComboBox1.Text;
          ParamByName('telefono').AsString:=cxMaskEdit1.Text;
          ParamByName('usuario').AsString:=Fmain.usuario;
          Execute;
          ShowMessage('Datos agregados con éxito');
          cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
        except
          ShowMessage('No se pudieron agregar los datos');
        end;

       end;

   end;
end;

procedure TFinterrupciones.button2Click(Sender: TObject);
begin
close;
end;

procedure TFinterrupciones.FormShow(Sender: TObject);
begin
  cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;
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

end;

end.
