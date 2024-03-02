unit UActualizarDatosGenerales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, cxGroupBox,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxLookAndFeels, cxBlobEdit, cxMemo, Menus,UActualizarDatosAntecedentes,
  UActualizarDatosLaborales, StdCtrls, cxMaskEdit,  cxDropDownEdit, cxCalendar,
  cxDBEdit, cxTextEdit, cxNavigator, cxDBNavigator,  cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, DBAccess, Uni, ExtCtrls,  DBCtrls, cxButtons, MemDS,
  ekbasereport, ekrtf, DBClient, cxLabel;

type
    TFActualizarDatosGenerales = class(TForm)
    cxGroupBox2: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid2DBTableView2idObjetivo: TcxGridDBColumn;
    cxGrid2DBTableView2Nombre: TcxGridDBColumn;
    cxGrid2DBTableView2Nombre1: TcxGridDBColumn;
    cxGrid2DBTableView2Apellido1: TcxGridDBColumn;
    cxGrid2DBTableView2Apellido2: TcxGridDBColumn;
    cxGrid2DBTableView2Alias: TcxGridDBColumn;
    cxGrid2DBTableView2NumeroDeIdentidad: TcxGridDBColumn;
    cxGrid2DBTableView2Pais: TcxGridDBColumn;
    cxGrid2DBTableView2fecha: TcxGridDBColumn;
    cxGrid2DBTableView2ktfecha: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    pm1: TPopupMenu;
    ACTUALIZAROBJETIVOSANTECEDENTES1: TMenuItem;
    ACTUALIZARDATOSLABORALES1: TMenuItem;
    ACTUALIZARDATOSRESIDENCIALES1: TMenuItem;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxTextEdit7: TcxTextEdit;
    cxButton1: TcxButton;
    cxDateEdit1: TcxDateEdit;
    QUpdate: TUniQuery;
    GENERARREPORTE1: TMenuItem;
    EkRTF1: TEkRTF;
    Tgenerales: TUniTable;
    TgeneralesidObjetivo: TLargeintField;
    TgeneralesNombre: TStringField;
    TgeneralesNombre1: TStringField;
    TgeneralesApellido1: TStringField;
    TgeneralesApellido2: TStringField;
    TgeneralesAlias: TStringField;
    TgeneralesNumeroDeIdentidad: TStringField;
    TgeneralesPais: TStringField;
    TgeneralesLugar: TStringField;
    Tgeneralesfecha: TDateField;
    Tgeneralesktfecha: TStringField;
    TgeneralesidUbicacion: TIntegerField;
    TgeneralesidLaborales: TIntegerField;
    DSgenerales: TUniDataSource;
    DSobjant: TUniDataSource;
    DSobjlab: TUniDataSource;
    DSobjres: TUniDataSource;
    Qobjlab: TUniQuery;
    QobjlabIdLaborales: TLargeintField;
    QobjlabIdObjetivo: TIntegerField;
    QobjlabCentroDeTrabajo: TStringField;
    QobjlabOcupacion: TStringField;
    QobjlabCargo: TStringField;
    QobjlabOrganismo: TStringField;
    QobjlabFecha: TDateField;
    Qobjlabktfecha: TStringField;
    Qobjant: TUniQuery;
    QobjantidSolicitud: TLargeintField;
    Qobjantestado: TStringField;
    QobjantfechaAlta: TDateField;
    QobjantktAlta: TStringField;
    QobjantfechaBaja: TDateField;
    QobjantktBaja: TStringField;
    Qobjantclave: TIntegerField;
    Qobjantchequeo: TStringField;
    Qobjantsitio: TStringField;
    QobjanttipodeTecnica: TStringField;
    Qobjantaplicadopor: TStringField;
    Qobjanttipotx: TStringField;
    QobjantfinalidadOperativa: TStringField;
    QobjantcumplimientoFinalidad: TSmallintField;
    QobjantmotivoNoCumplimiento: TStringField;
    Qobjantatencionespecial: TSmallintField;
    Qobjantcaso: TStringField;
    Qobjantinteres: TBlobField;
    QobjantdptoSeccion: TStringField;
    Qobjantseccion: TStringField;
    Qobjantoficial: TStringField;
    Qobjantfase: TStringField;
    QobjantniveldeAprobacion: TStringField;
    QobjantniveldeCompartimentacion: TStringField;
    QobjantIdObjetivo: TIntegerField;
    QobjantIdUbicacion: TIntegerField;
    QobjantIdLaborales: TIntegerField;
    QobjantcategoriaOperativa: TStringField;
    Qobjantregistro: TStringField;
    Qobjantnsiso: TIntegerField;
    QobjantExpedienteOperativo: TStringField;
    Qobjres: TUniQuery;
    QobjresIdUbicacion: TLargeintField;
    QobjresIdObjetivo: TIntegerField;
    QobjresCalle: TStringField;
    QobjresNumero: TStringField;
    QobjresEdificio: TStringField;
    QobjresPiso: TStringField;
    QobjresApartamento: TStringField;
    QobjresCalle1: TStringField;
    QobjresCalle2: TStringField;
    QobjresBarrio: TStringField;
    QobjresMunicipio: TStringField;
    QobjresProvincia: TStringField;
    QobjresFecha: TDateField;
    Qobjresktfecha: TStringField;
    ds1: TClientDataSet;
    ds1nombre: TStringField;
    ds1fecha: TDateTimeField;
    cxLookupComboBox1: TcxLookupComboBox;
    cxTextEdit8: TcxTextEdit;
    cxLabel1: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure cxGrid2DBTableView2CellClick(Sender: TcxCustomGridTableView;
    ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
    AShift: TShiftState; var AHandled: Boolean);
    procedure ACTUALIZAROBJETIVOSANTECEDENTES1Click(Sender: TObject);
    procedure ACTUALIZARDATOSLABORALES1Click(Sender: TObject);
    procedure ACTUALIZARDATOSRESIDENCIALES1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure GENERARREPORTE1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  varid = record
    id:Integer;
  end;

  var
  FActualizarDatosGenerales: TFActualizarDatosGenerales;
  nombre,nombre1,apellido1,apellido2,alias,carnet,pais,ktfecha,fecha:string;
  vid:varid;

implementation

uses UActualizarDatosResidenciales, UDM;

{$R *.dfm}

procedure TFActualizarDatosGenerales.cxGrid2DBTableView2CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  //llenando las variables
  try
    vid.id:=0;
    vid.id:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('idObjetivo').AsInteger;
    nombre:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('Nombre').AsString;
    nombre1:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('Nombre1').AsString;
    apellido1:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('Apellido1').AsString;
    apellido2:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('Apellido2').AsString;
    alias:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('Alias').AsString;
    carnet:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('NumeroDeIdentidad').AsString;
    pais:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('Pais').AsString;
    ktfecha:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('ktfecha').AsString;
    fecha:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('fecha').AsString;
  except

  end;

  //llenando los edits
  try
    cxTextEdit1.Text:=nombre;
    cxTextEdit2.Text:=nombre1;
    cxTextEdit3.Text:=apellido1;
    cxTextEdit4.Text:=apellido2;
    cxTextEdit5.Text:=alias;
    cxTextEdit6.Text:=carnet;
    cxTextEdit7.Text:=ktfecha;
    cxTextEdit8.Text:=IntToStr(vid.id);
  except

  end;
  try
    if fecha = '' then
     cxDateEdit1.Text:=fecha
    else
    cxDateEdit1.Date:=StrToDate(fecha);
  except

  end;
  try
    cxLookupComboBox1.Text:=pais;
  except

  end;
end;

procedure TFActualizarDatosGenerales.FormShow(Sender: TObject);
begin
  try
    cxGrid2DBTableView2.DataController.DataSource:=DSgenerales;
    cxGrid2DBTableView2.DataController.DataSource.DataSet.Active:=True;

    cxLookupComboBox1.Properties.ListSource:=DM.DSobjetivospaises;
    cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
  except

  end;

  try
    cxGrid2DBTableView2.DataController.DataSource.DataSet.First;
    //llenando los edits
    vid.id:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('idObjetivo').AsInteger;
    nombre:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('Nombre').AsString;
    nombre1:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('Nombre1').AsString;
    apellido1:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('Apellido1').AsString;
    apellido2:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('Apellido2').AsString;
    alias:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('Alias').AsString;
    carnet:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('NumeroDeIdentidad').AsString;
    pais:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('Pais').AsString;
    ktfecha:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('ktfecha').AsString;
    fecha:=cxGrid2DBTableView2.DataController.DataSet.fieldbyname('fecha').AsString;
  except

  end;

  try
    cxTextEdit1.Text:=nombre;
    cxTextEdit2.Text:=nombre1;
    cxTextEdit3.Text:=apellido1;
    cxTextEdit4.Text:=apellido2;
    cxTextEdit5.Text:=alias;
    cxTextEdit6.Text:=carnet;
    cxTextEdit7.Text:=ktfecha;
    cxTextEdit8.Text:=IntToStr(vid.id);
  except

  end;

  try
    if fecha = '' then  cxDateEdit1.Text:=fecha
    else cxDateEdit1.Date:=StrToDate(fecha);
  except

  end;

  try
    cxLookupComboBox1.Text:=pais;
  except

  end;
end;

procedure TFActualizarDatosGenerales.GENERARREPORTE1Click(Sender: TObject);
begin
  Qobjant.ParamByName('Pid').AsInteger:=vid.id;
  Qobjant.Execute;
  Qobjres.ParamByName('Pid').AsInteger:=vid.id;
  Qobjres.Execute;
  Qobjlab.ParamByName('Pid').AsInteger:=vid.id;
  Qobjlab.Execute;


  ds1.EmptyDataSet;
  ds1.Append;
  ds1['nombre'] := nombre+' '+nombre1+' '+apellido1+' '+apellido2;
  ds1['fecha']:=now;
  ds1.Post;


  EKRTF1.InFile:=ExtractFilePath(Application.ExeName)+'Plantilla.rtf';
  EKRTF1.ClearVars;
  EKRTF1.ExecuteOpen([ds1,Qobjant,Qobjres,Qobjlab],SW_SHOW);
end;

procedure TFActualizarDatosGenerales.ACTUALIZARDATOSLABORALES1Click(Sender: TObject);
begin
  Qobjlab.ParamByName('Pid').AsInteger:=vid.id;
  Qobjlab.Execute;
  FActualizarDatosLaborales.Showmodal;
end;

procedure TFActualizarDatosGenerales.ACTUALIZARDATOSRESIDENCIALES1Click(Sender: TObject);
begin
  Qobjres.ParamByName('Pid').AsInteger:=vid.id;
  Qobjres.Execute;
  FActualizarDatosResidenciales.Showmodal;
end;

procedure TFActualizarDatosGenerales.ACTUALIZAROBJETIVOSANTECEDENTES1Click(Sender: TObject);
begin
  Qobjant.ParamByName('Pid').AsInteger:=vid.id;
  Qobjant.Execute;
  FActualizarDatosAntecedentes.Showmodal;
end;

procedure TFActualizarDatosGenerales.cxButton1Click(Sender: TObject);
begin
 try
  with QUpdate do
  begin
   ParamByName('Pnombre').AsString:=cxTextEdit1.Text;
   ParamByName('Pnombre1').AsString:=cxTextEdit2.Text;
   ParamByName('Papellido1').AsString:=cxTextEdit3.Text;
   ParamByName('Papellido2').AsString:=cxTextEdit4.Text;
   ParamByName('Palias').AsString:=cxTextEdit5.Text;
   ParamByName('Pcarnet').AsString:=cxTextEdit6.Text;
   ParamByName('Ppais').AsString:=cxLookupComboBox1.Text;
   ParamByName('Pfecha').AsDateTime:=cxDateEdit1.Date;
   ParamByName('Pktfecha').AsString:=cxTextEdit7.Text;
   ParamByName('Pid').AsInteger:=StrToInt(cxTextEdit8.Text);
   Execute;
   cxGrid2DBTableView2.DataController.DataSet.Refresh;
  end;
 except
   ShowMessage('No se pudo actualizar el registro');
 end;
end;

end.
