unit UModificarPaciente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, cxButtons, cxCheckBox,
  dxToggleSwitch, cxMemo, cxTextEdit, cxLabel, cxGroupBox;

type
  TFModificarPaciente = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxLabel3: TcxLabel;
    cxMemo1: TcxMemo;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    SWSEXO: TdxToggleSwitch;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxTextEdit7: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel13: TcxLabel;
    cxMemo6: TcxMemo;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1PRIMER_APELLIDO: TcxGridDBColumn;
    cxGrid1DBTableView1SEGUNDO_APELLIDO: TcxGridDBColumn;
    cxGrid1DBTableView1CORREO: TcxGridDBColumn;
    cxGrid1DBTableView1SEXO: TcxGridDBColumn;
    cxGrid1DBTableView1ESCOLARIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO_CIVIL: TcxGridDBColumn;
    cxGrid1DBTableView1OCUPACION: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxLabel10: TcxLabel;
    cxMemo2: TcxMemo;
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FModificarPaciente: TFModificarPaciente;
  CODIGO:Integer;

implementation

{$R *.dfm}
USES UDMPacientes;

procedure TFModificarPaciente.cxButton1Click(Sender: TObject);
begin

   try
      if (cxLookupComboBox2.Text = '') OR
         (cxMemo1.Text = '') OR
         (cxMemo2.Text = '') OR
         (cxMemo6.Text = '') OR
         (cxTextEdit1.Text = '') OR
         (cxTextEdit2.Text = '') OR
         (cxTextEdit3.Text = '') OR
         (cxTextEdit4.Text = '') OR
         (cxTextEdit5.Text = '') OR
         (cxTextEdit7.Text = '')

      then
      begin
        ShowMessage('USTED DEBE LLENAR TODOS LOS CAMPOS.');
      end
      else
      begin
         with FDMPacientes.QModPaciente do
         begin
           ParamByName('CODIGO').AsInteger:=CODIGO;
           ParamByName('NOMBRE').AsString:=cxTextEdit1.Text;
           ParamByName('PRIMER_APELLIDO').AsString:=cxTextEdit2.Text;
           ParamByName('SEGUNDO_APELLIDO').AsString:=cxTextEdit3.Text;
           ParamByName('TELEFONOS').AsMemo:=cxMemo1.Text;
           ParamByName('CORREO').AsString:=cxTextEdit4.Text;
           ParamByName('DIRECCION').AsMemo:=cxMemo6.Text;

           if SWSEXO.Checked = False then
           begin
              ParamByName('SEXO').AsString:= 'M';
           end;

           if SWSEXO.Checked = True then
           begin
              ParamByName('SEXO').AsString:= 'F';
           end;

           ParamByName('ESCOLARIDAD').AsString:=cxTextEdit5.Text;
           ParamByName('ESTADO_CIVIL').AsString:=cxLookupComboBox2.Text;
           ParamByName('OCUPACION').AsString:=cxTextEdit7.Text;
           ParamByName('COMENTARIOS').AsMemo:=cxMemo2.Text;
           Execute;

            cxTextEdit1.Clear;
            cxTextEdit2.Clear;
            cxTextEdit3.Clear;
            cxMemo1.Clear;
            cxMemo6.Clear;
            cxMemo2.Clear;
            cxTextEdit4.Clear;
            cxTextEdit5.Clear;
            cxLookupComboBox2.Clear;
            cxTextEdit7.Clear;

           cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;

         end;


      end;
   except on E: Exception do
   end;


end;

procedure TFModificarPaciente.cxButton2Click(Sender: TObject);
begin
    try
      cxTextEdit1.Clear;
      cxTextEdit2.Clear;
      cxTextEdit3.Clear;
      cxMemo1.Clear;
      cxMemo6.Clear;
      cxMemo2.Clear;
      cxTextEdit4.Clear;
      cxTextEdit5.Clear;
      cxLookupComboBox2.Clear;
      cxTextEdit7.Clear;



    except on E: Exception do
    end;
end;

procedure TFModificarPaciente.cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   try
      CODIGO:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['CODIGO'];
      cxTextEdit1.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['NOMBRE'];
      cxTextEdit2.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['PRIMER_APELLIDO'];
      cxTextEdit3.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['SEGUNDO_APELLIDO'];
      cxMemo1.Lines.Text:=  cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['TELEFONOS'];
      cxMemo6.Lines.Text:=  cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['DIRECCION'];
      cxTextEdit4.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['CORREO'];
      cxTextEdit5.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['ESCOLARIDAD'];
      cxLookupComboBox2.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['ESTADO_CIVIL'];
      cxTextEdit7.Text:= cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['OCUPACION'];
      cxMemo2.Lines.Text:=  cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['COMENTARIOS'];

      if cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['SEXO'] = 'M' then
      begin
        SWSEXO.Checked := False ;
      end;
      if cxGrid1DBTableView1.DataController.DataSource.DataSet.FieldValues['SEXO'] = 'F' then
      begin
        SWSEXO.Checked := True ;
      end;

   except on E: Exception do
   end;
end;

procedure TFModificarPaciente.FormActivate(Sender: TObject);
begin
  try

    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=True;

    cxLookupComboBox2.Properties.DataController.DataSet.Active:=True;


  except on E: Exception do
  end;
end;

procedure TFModificarPaciente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try

    cxGrid1DBTableView1.DataController.DataSource.DataSet.Active:=False;
    cxTextEdit1.Clear;
    cxTextEdit2.Clear;
    cxTextEdit3.Clear;
    cxMemo1.Clear;
    cxMemo6.Clear;
    cxMemo2.Clear;
    cxTextEdit4.Clear;
    cxTextEdit5.Clear;
    cxLookupComboBox2.Clear;
    cxTextEdit7.Clear;


  except on E: Exception do
  end;
end;

end.
