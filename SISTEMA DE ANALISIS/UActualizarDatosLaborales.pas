unit UActualizarDatosLaborales;

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
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox, cxNavigator, cxDBNavigator, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, StdCtrls, cxTextEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Menus, DBAccess, Uni, cxButtons, cxLabel;

type
  TFActualizarDatosLaborales = class(TForm)
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView3: TcxGridDBTableView;
    cxGrid3DBTableView3IdObjetivo: TcxGridDBColumn;
    cxGrid3DBTableView3CentroDeTrabajo: TcxGridDBColumn;
    cxGrid3DBTableView3Ocupacion: TcxGridDBColumn;
    cxGrid3DBTableView3Cargo: TcxGridDBColumn;
    cxGrid3DBTableView3Organismo: TcxGridDBColumn;
    cxGrid3DBTableView3Fecha: TcxGridDBColumn;
    cxGrid3DBTableView3ktfecha: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    UniSQL1: TUniSQL;
    cxGrid3DBTableView3IdLaborales: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxDateEdit1: TcxDateEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    UniSQL2: TUniSQL;
    cxButton3: TcxButton;
    UniSQL3: TUniSQL;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    procedure FormShow(Sender: TObject);
    procedure cxGrid3DBTableView3CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FActualizarDatosLaborales: TFActualizarDatosLaborales;
  centrodetrabajo,ocupacion,cargo,organismo,ktfecha:string;
  fecha:TDateTime;
  idlaborales,idobjetivo:integer;

implementation
 uses UDM, UActualizarDatosGenerales;
{$R *.dfm}

procedure TFActualizarDatosLaborales.cxButton1Click(Sender: TObject);
begin
  //Actualizar
  try
   with UniSQL1 do
   begin
     ParamByName('Pcentrodetrabajo').AsString:=cxTextEdit1.Text;
     ParamByName('Pocupacion').AsString:=cxTextEdit2.Text;
     ParamByName('Pcargo').AsString:=cxTextEdit3.Text;
     ParamByName('Porganismo').AsString:=cxLookupComboBox1.Text;
     ParamByName('Pfecha').AsDateTime:=cxDateEdit1.Date;
     ParamByName('Pktfecha').AsString:=cxTextEdit4.Text;
     ParamByName('Pid').asinteger:=idlaborales;
     ParamByName('Pidobjetivo').AsInteger:=StrToInt(cxTextEdit5.Text);
     Execute;
     cxGrid3DBTableView3.DataController.DataSource.DataSet.Refresh;
   end;
  except
    ShowMessage('No se pudo actualizar el registro');
  end;
end;

procedure TFActualizarDatosLaborales.cxButton2Click(Sender: TObject);
begin
  //Duplicar Registro
  try
   with UniSQL2 do
   begin
     ParamByName('Pcentrodetrabajo').AsString:=centrodetrabajo;
     ParamByName('Pocupacion').AsString:=ocupacion;
     ParamByName('Pcargo').AsString:=cargo;
     ParamByName('Porganismo').AsString:=organismo;
     ParamByName('Pfecha').AsDateTime:=fecha;
     ParamByName('Pktfecha').AsString:=ktfecha;
     ParamByName('Pidobjetivo').asinteger:=idobjetivo;
     Execute;
     cxGrid3DBTableView3.DataController.DataSource.DataSet.Refresh;
   end;
  except
     ShowMessage('No se pudo duplicar el registro');
  end;
end;

procedure TFActualizarDatosLaborales.cxButton3Click(Sender: TObject);
begin
 //nuevo registro
 try
  with UniSQL3 do
  begin
    ParamByName('Pidobjetivo').AsInteger:=vid.id;
    Execute;
    cxGrid3DBTableView3.DataController.DataSource.DataSet.Refresh;
  end;
 except
   ShowMessage('No se pudo agregar el nuevo registro');
 end;
end;

procedure TFActualizarDatosLaborales.cxGrid3DBTableView3CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  try
    centrodetrabajo:=  cxGrid3DBTableView3.DataController.DataSet.FieldByName('CentroDeTrabajo').AsString;
    ocupacion:=  cxGrid3DBTableView3.DataController.DataSet.FieldByName('Ocupacion').AsString;
    cargo:=  cxGrid3DBTableView3.DataController.DataSet.FieldByName('Cargo').AsString;
    organismo:= cxGrid3DBTableView3.DataController.DataSet.FieldByName('Organismo').AsString;
    ktfecha:=  cxGrid3DBTableView3.DataController.DataSet.FieldByName('ktfecha').AsString;
    fecha:=  cxGrid3DBTableView3.DataController.DataSet.FieldByName('Fecha').AsDateTime;
    idlaborales:=  cxGrid3DBTableView3.DataController.DataSet.FieldByName('IdLaborales').AsInteger;
    idobjetivo:=  cxGrid3DBTableView3.DataController.DataSet.FieldByName('IdObjetivo').AsInteger;
  except

  end;

  //llenando los edits
  try
    cxTextEdit1.Text:=centrodetrabajo;
    cxTextEdit2.Text:=ocupacion;
    cxTextEdit3.Text:=cargo;
    cxTextEdit4.Text:=ktfecha;
    cxTextEdit5.Text:=IntToStr(idobjetivo);
  except

  end;

  try
    cxLookupComboBox1.Text:=organismo;
  except

  end;

  try
     cxDateEdit1.Date:=fecha;
  except

  end;
end;

procedure TFActualizarDatosLaborales.FormShow(Sender: TObject);
begin
  try
   cxLookupComboBox1.Properties.ListSource:=DM.DSorganismos;
   cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
  except

  end;

  if cxGrid3DBTableView3.DataController.DataSet.RecordCount > 0 then
  begin
    cxGrid3DBTableView3.DataController.DataSet.First;
    centrodetrabajo:= cxGrid3DBTableView3.DataController.DataSet.FieldByName('CentroDeTrabajo').AsString;
    ocupacion:= cxGrid3DBTableView3.DataController.DataSet.FieldByName('Ocupacion').AsString;
    cargo:= cxGrid3DBTableView3.DataController.DataSet.FieldByName('Cargo').AsString;
    organismo:=cxGrid3DBTableView3.DataController.DataSet.FieldByName('Organismo').AsString;
    ktfecha:= cxGrid3DBTableView3.DataController.DataSet.FieldByName('ktfecha').AsString;
    fecha:= cxGrid3DBTableView3.DataController.DataSet.FieldByName('Fecha').AsDateTime;
    idlaborales:= cxGrid3DBTableView3.DataController.DataSet.FieldByName('IdLaborales').AsInteger;
    idobjetivo:= cxGrid3DBTableView3.DataController.DataSet.FieldByName('IdObjetivo').AsInteger;

    try
      cxTextEdit1.Text:=centrodetrabajo;
      cxTextEdit2.Text:=ocupacion;
      cxTextEdit3.Text:=cargo;
      cxTextEdit4.Text:=ktfecha;
      cxTextEdit5.Text:=IntToStr(idobjetivo);
    except

    end;

    try cxLookupComboBox1.Text:=organismo;
    except

    end;

    try cxDateEdit1.Date:=fecha;
    except

    end;
  end
  else
  begin
    cxTextEdit1.Clear;
    cxTextEdit2.Clear;
    cxTextEdit3.Clear;
    cxTextEdit4.Clear;
    cxTextEdit5.Clear;
    cxDateEdit1.Clear;
    cxLookupComboBox1.Clear;
  end;
end;

end.
