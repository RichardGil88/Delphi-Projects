unit UactualizarDatosResidenciales;

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
  cxGroupBox, StdCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxTextEdit, cxNavigator, cxDBNavigator, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Menus, DBAccess, Uni, cxButtons, cxLabel;

type
  TFActualizarDatosResidenciales = class(TForm)
    cxGroupBox4: TcxGroupBox;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView4: TcxGridDBTableView;
    cxGrid4DBTableView4IdObjetivo: TcxGridDBColumn;
    cxGrid4DBTableView4Calle: TcxGridDBColumn;
    cxGrid4DBTableView4Numero: TcxGridDBColumn;
    cxGrid4DBTableView4Edificio: TcxGridDBColumn;
    cxGrid4DBTableView4Piso: TcxGridDBColumn;
    cxGrid4DBTableView4Apartamento: TcxGridDBColumn;
    cxGrid4DBTableView4Calle1: TcxGridDBColumn;
    cxGrid4DBTableView4Calle2: TcxGridDBColumn;
    cxGrid4DBTableView4Barrio: TcxGridDBColumn;
    cxGrid4DBTableView4Municipio: TcxGridDBColumn;
    cxGrid4DBTableView4Provincia: TcxGridDBColumn;
    cxGrid4DBTableView4Fecha: TcxGridDBColumn;
    cxGrid4DBTableView4ktfecha: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    UniSQL1: TUniSQL;
    cxGrid4DBTableView4IdUbicacion: TcxGridDBColumn;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    cxTextEdit9: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    UniSQL2: TUniSQL;
    cxDateEdit1: TcxDateEdit;
    cxButton3: TcxButton;
    UniSQL3: TUniSQL;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    cxTextEdit5: TcxTextEdit;
    procedure FormShow(Sender: TObject);
    procedure cxGrid4DBTableView4CellClick(Sender: TcxCustomGridTableView;
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
  FActualizarDatosResidenciales: TFActualizarDatosResidenciales;
  calle,calle1,calle2,numero,ktfecha,edificio,barrio,piso,municipio,apartamento,provincia:string;
  fecha:TDateTime;
  idobjetivo,idubicacion:Integer;

implementation
 uses UActualizarDatosGenerales,UDM;
{$R *.dfm}

procedure TFActualizarDatosResidenciales.cxButton1Click(Sender: TObject);
begin
 //Actualizar
 try
  with UniSQL1 do
  begin
    ParamByName('Pcalle').AsString:=cxTextEdit1.Text;
    ParamByName('PcalleA').AsString:=cxTextEdit2.Text;
    ParamByName('PcalleB').AsString:=cxTextEdit3.Text;
    ParamByName('Pnumero').AsString:=cxTextEdit4.Text;
    ParamByName('Pktfecha').AsString:=cxTextEdit6.Text;
    ParamByName('Pedificio').AsString:=cxTextEdit7.Text;
    ParamByName('Pbarrio').AsString:=cxTextEdit8.Text;
    ParamByName('Ppiso').AsString:=cxTextEdit9.Text;
    ParamByName('Pmunicipio').AsString:=cxLookupComboBox1.Text;
    ParamByName('Papartamento').AsString:=cxTextEdit10.Text;
    ParamByName('Pprovincia').AsString:=cxLookupComboBox2.Text;
    ParamByName('Pfecha').AsDateTime:=cxDateEdit1.Date;
    ParamByName('Pid').AsInteger:=idubicacion;
    ParamByName('Pidobjetivo').AsInteger:=StrToInt(cxTextEdit5.Text);
    Execute;
    cxGrid4DBTableView4.DataController.DataSet.Refresh;
  end;
 except
    ShowMessage('No se pudo actualizar el registro');
 end;
end;

procedure TFActualizarDatosResidenciales.cxButton2Click(Sender: TObject);
begin
 //Duplicar Registro
 try
  with UniSQL2 do
  begin
    ParamByName('Pcalle').AsString:=calle;
    ParamByName('PcalleA').AsString:=calle1;
    ParamByName('PcalleB').AsString:=calle2;
    ParamByName('Pnumero').AsString:=numero;
    ParamByName('Pktfecha').AsString:=ktfecha ;
    ParamByName('Pedificio').AsString:=edificio;
    ParamByName('Pbarrio').AsString:=barrio;
    ParamByName('Ppiso').AsString:=piso;
    ParamByName('Pmunicipio').AsString:=municipio;
    ParamByName('Papartamento').AsString:=apartamento;
    ParamByName('Pprovincia').AsString:=provincia;
    ParamByName('Pfecha').AsDateTime:=fecha;
    ParamByName('Pidobjetivo').AsInteger:=idobjetivo;
    Execute;
    cxGrid4DBTableView4.DataController.DataSet.Refresh;
  end;
 except
     ShowMessage('No se pudo duplicar el registro');
 end;
end;

procedure TFActualizarDatosResidenciales.cxButton3Click(Sender: TObject);
begin
 try
  //nuevo registro
  with UniSQL3 do
  begin
    ParamByName('Pidobjetivo').AsInteger:=vid.id;
    Execute;
    cxGrid4DBTableView4.DataController.DataSource.DataSet.Refresh;
  end;
 except
    ShowMessage('No se pudo agregar el nuevo registro');
 end;
end;

procedure TFActualizarDatosResidenciales.cxGrid4DBTableView4CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   try
     calle:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Calle').AsString;
     calle1:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Calle1').AsString;
     calle2:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Calle2').AsString;
     numero:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Numero').AsString;
     ktfecha:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('ktfecha').AsString;
     edificio:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Edificio').AsString;
     barrio:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Barrio').AsString;
     piso:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Piso').AsString;
     municipio:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Municipio').AsString;
     apartamento:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Apartamento').AsString;
     provincia:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Provincia').AsString;
     fecha:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Fecha').AsDateTime;
     idobjetivo:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('IdObjetivo').AsInteger;
     idubicacion:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('IdUbicacion').AsInteger;
   except

   end;

   //llenando los edits
   try
     cxTextEdit1.Text:=calle;
     cxTextEdit2.Text:=calle1;
     cxTextEdit3.Text:=calle2;
     cxTextEdit4.Text:=numero;
     cxDateEdit1.Date:=fecha;
     cxTextEdit6.Text:=ktfecha;
     cxTextEdit7.Text:=edificio;
     cxTextEdit8.Text:=barrio;
     cxTextEdit9.Text:=piso;
     cxTextEdit10.Text:=apartamento;
     cxTextEdit5.Text:=IntToStr(idobjetivo);
   except

   end;

   try
    cxLookupComboBox1.Text:=municipio;
   except

   end;

   try
    cxLookupComboBox2.Text:=provincia;
   except

   end;
end;

procedure TFActualizarDatosResidenciales.FormShow(Sender: TObject);
begin
  try
   cxLookupComboBox1.Properties.ListSource:=DM.DSmunicipios;
   cxLookupComboBox2.Properties.ListSource:=DM.DSprovincias;
   cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
   cxLookupComboBox2.Properties.ListSource.DataSet.Active:=True;
  except

  end;

  if cxGrid4DBTableView4.DataController.DataSet.RecordCount > 0 then
  begin
   cxGrid4DBTableView4.DataController.DataSet.First;
   calle:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Calle').AsString;
   calle1:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Calle1').AsString;
   calle2:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Calle2').AsString;
   numero:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Numero').AsString;
   ktfecha:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('ktfecha').AsString;
   edificio:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Edificio').AsString;
   barrio:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Barrio').AsString;
   piso:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Piso').AsString;
   municipio:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Municipio').AsString;
   apartamento:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Apartamento').AsString;
   provincia:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Provincia').AsString;
   fecha:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('Fecha').AsDateTime;
   idobjetivo:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('IdObjetivo').AsInteger;
   idubicacion:=cxGrid4DBTableView4.DataController.DataSet.FieldByName('IdUbicacion').AsInteger;

   //llenando los edits
   cxTextEdit1.Text:=calle;
   cxTextEdit2.Text:=calle1;
   cxTextEdit3.Text:=calle2;
   cxTextEdit4.Text:=numero;
   cxDateEdit1.Date:=fecha;
   cxTextEdit6.Text:=ktfecha;
   cxTextEdit7.Text:=edificio;
   cxTextEdit8.Text:=barrio;
   cxTextEdit9.Text:=piso;
   cxTextEdit10.Text:=apartamento;
   cxTextEdit5.Text:=IntToStr(idobjetivo);

   try cxLookupComboBox1.Text:=municipio;

   except

   end;

   try cxLookupComboBox2.Text:=provincia;

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
    cxTextEdit6.Clear;
    cxTextEdit7.Clear;
    cxTextEdit8.Clear;
    cxTextEdit9.Clear;
    cxTextEdit10.Clear;
    cxDateEdit1.Clear;
    cxLookupComboBox1.Clear;
    cxLookupComboBox2.Clear;
  end;
end;

end.
