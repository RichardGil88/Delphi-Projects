unit UActualizarDatosAntecedentes;

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
  cxData, cxDataStorage, DB, cxDBData, cxMemo, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxNavigator, cxDBNavigator, StdCtrls, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Menus, DBAccess, Uni, ExtCtrls, DBCtrls,
  cxButtons, cxLabel;

type
  TFActualizarDatosAntecedentes = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1IdObjetivo: TcxGridDBColumn;
    cxGrid1DBTableView1fechaAlta: TcxGridDBColumn;
    cxGrid1DBTableView1fechaBaja: TcxGridDBColumn;
    cxGrid1DBTableView1chequeo: TcxGridDBColumn;
    cxGrid1DBTableView1caso: TcxGridDBColumn;
    cxGrid1DBTableView1dptoSeccion: TcxGridDBColumn;
    cxGrid1DBTableView1oficial: TcxGridDBColumn;
    cxGrid1DBTableView1fase: TcxGridDBColumn;
    cxGrid1DBTableView1niveldeAprobacion: TcxGridDBColumn;
    cxGrid1DBTableView1niveldeCompartimentacion: TcxGridDBColumn;
    cxGrid1DBTableView1categoriaOperativa: TcxGridDBColumn;
    cxGrid1DBTableView1ExpedienteOperativo: TcxGridDBColumn;
    cxGrid1DBTableView1sitio: TcxGridDBColumn;
    cxGrid1DBTableView1registro: TcxGridDBColumn;
    cxGrid1DBTableView1finalidadOperativa: TcxGridDBColumn;
    cxGrid1DBTableView1cumplimientoFinalidad: TcxGridDBColumn;
    cxGrid1DBTableView1motivoNoCumplimiento: TcxGridDBColumn;
    cxGrid1DBTableView1interes: TcxGridDBColumn;
    cxGrid1DBTableView1tipodeTecnica: TcxGridDBColumn;
    cxGrid1DBTableView1estado: TcxGridDBColumn;
    cxGrid1DBTableView1ktAlta: TcxGridDBColumn;
    cxGrid1DBTableView1ktBaja: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
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
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    lbl19: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    UniSQL1: TUniSQL;
    cxGrid1DBTableView1idSolicitud: TcxGridDBColumn;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxMemo1: TcxMemo;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit7: TcxTextEdit;
    cxTextEdit8: TcxTextEdit;
    cxTextEdit9: TcxTextEdit;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    UniSQL2: TUniSQL;
    UniSQL3: TUniSQL;
    cxButton3: TcxButton;
    cxLookupComboBox1: TcxLookupComboBox;
    cxLookupComboBox2: TcxLookupComboBox;
    cxLookupComboBox3: TcxLookupComboBox;
    cxLookupComboBox4: TcxLookupComboBox;
    cxLookupComboBox6: TcxLookupComboBox;
    cxLookupComboBox7: TcxLookupComboBox;
    cxLookupComboBox8: TcxLookupComboBox;
    cxLookupComboBox9: TcxLookupComboBox;
    cxLookupComboBox10: TcxLookupComboBox;
    cxTextEdit6: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLookupComboBox5: TcxLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
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
  FActualizarDatosAntecedentes: TFActualizarDatosAntecedentes;

  Fechaalta,Fechabaja:TDateTime;
  chequeo,caso,dpto,oficial,fase,niveldeaprobacion,niveldecompartimentacion,
  categoria,expediente,sitio,registro,finalidad,motivo,
  tipodetecnica,estado,ktalta,ktbaja,interes:string;
  cumplimiento:Integer;
  idobjetivo,idsolicitud:Integer;



implementation
 uses UDM, UActualizarDatosGenerales;
{$R *.dfm}

procedure TFActualizarDatosAntecedentes.cxButton1Click(Sender: TObject);
begin
  try
    //actualizar
    with UniSQL1 do
    begin
     ParamByName('Pfechaalta').AsDateTime:=cxDateEdit1.Date;
     ParamByName('Pfechabaja').AsDateTime:=cxDateEdit2.Date;
     ParamByName('Pchequeo').AsString:=cxTextEdit1.Text;
     ParamByName('Pcaso').AsString:=cxTextEdit2.Text;
     ParamByName('Pdpto').AsString:=cxLookupComboBox1.Text;
     ParamByName('Poficial').AsString:=cxTextEdit3.Text;
     ParamByName('Pfase').AsString:=cxLookupComboBox2.Text;
     ParamByName('Pniveldeaprobacion').AsString:=cxLookupComboBox5.Text;
     ParamByName('Pniveldecompartimentacion').AsString:=cxLookupComboBox4.Text;
     ParamByName('Pcategoria').AsString:=cxLookupComboBox8.Text;
     ParamByName('Pexpediente').AsString:=cxLookupComboBox6.Text;
     ParamByName('Psitio').AsString:=cxLookupComboBox9.Text;
     ParamByName('Pregistro').AsString:=cxTextEdit4.Text;
     ParamByName('Pfinalidad').AsString:=cxLookupComboBox3.Text;
     ParamByName('Pcumplimiento').AsInteger:=StrToInt(cxTextEdit8.Text);
     ParamByName('Pmotivo').AsString:=cxLookupComboBox10.Text;
     ParamByName('Ptipodetecnica').AsString:=cxLookupComboBox7.Text;
     ParamByName('Pestado').AsString:=cxTextEdit5.Text;
     ParamByName('Pktalta').AsString:=cxTextEdit7.Text;
     ParamByName('Pktbaja').AsString:=cxTextEdit9.Text;
     ParamByName('Pinteres').AsString:=cxMemo1.Text;
     ParamByName('Pid').AsInteger:=idsolicitud;
     ParamByName('Pidobjetivo').AsInteger:=StrToInt(cxTextEdit6.Text);
     Execute;
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
    end;
  except
     ShowMessage('No se pudo actualizar el registro');
  end;
end;

procedure TFActualizarDatosAntecedentes.cxButton2Click(Sender: TObject);
begin
 try
  //duplicar registro
  with UniSQL2 do
  begin
     ParamByName('Pfechaalta').AsDateTime:=cxDateEdit1.Date;
     ParamByName('Pfechabaja').AsDateTime:=cxDateEdit2.Date;
     ParamByName('Pchequeo').AsString:=cxTextEdit1.Text;
     ParamByName('Pcaso').AsString:=cxTextEdit2.Text;
     ParamByName('Pdpto').AsString:=cxLookupComboBox1.Text;
     ParamByName('Poficial').AsString:=cxTextEdit3.Text;
     ParamByName('Pfase').AsString:=cxLookupComboBox2.Text;
     ParamByName('Pniveldeaprobacion').AsString:=cxLookupComboBox5.Text;
     ParamByName('Pniveldecompartimentacion').AsString:=cxLookupComboBox4.Text;
     ParamByName('Pcategoria').AsString:=cxLookupComboBox8.Text;
     ParamByName('Pexpediente').AsString:=cxLookupComboBox6.Text;
     ParamByName('Psitio').AsString:=cxLookupComboBox9.Text;
     ParamByName('Pregistro').AsString:=cxTextEdit4.Text;
     ParamByName('Pfinalidad').AsString:=cxLookupComboBox3.Text;
     ParamByName('Pcumplimiento').AsInteger:=StrToInt(cxTextEdit8.Text);
     ParamByName('Pmotivo').AsString:=cxLookupComboBox10.Text;
     ParamByName('Ptipodetecnica').AsString:=cxLookupComboBox7.Text;
     ParamByName('Pestado').AsString:=cxTextEdit5.Text;
     ParamByName('Pktalta').AsString:=cxTextEdit7.Text;
     ParamByName('Pktbaja').AsString:=cxTextEdit9.Text;
     ParamByName('Pinteres').AsString:=cxMemo1.Text;
     ParamByName('Pidobjetivo').AsInteger:=idobjetivo;
     Execute;
     cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
  end;
 except
   ShowMessage('No se pudo duplicar el registro');
 end;
end;

procedure TFActualizarDatosAntecedentes.cxButton3Click(Sender: TObject);
begin
 try
  //nuevo registro
  with UniSQL3 do
  begin
    ParamByName('Pidobjetivo').AsInteger:=vid.id;
    Execute;
    cxGrid1DBTableView1.DataController.DataSource.DataSet.Refresh;
  end;
 except
   ShowMessage('No se pudo agregar el nuevo registro');
 end;
end;

procedure TFActualizarDatosAntecedentes.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  try
    Fechaalta:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('fechaAlta').AsDateTime;
    fechaBaja:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('fechaBaja').AsDateTime;
    chequeo:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('chequeo').AsString;
    caso:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('caso').AsString;
    dpto:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('dptoSeccion').AsString;
    oficial:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('oficial').AsString;
    fase:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('fase').AsString;
    niveldeaprobacion:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('niveldeAprobacion').AsString;
    niveldecompartimentacion:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('niveldeCompartimentacion').AsString;
    categoria:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('categoriaOperativa').AsString;
    expediente:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('ExpedienteOperativo').AsString;
    sitio:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('sitio').AsString;
    registro:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('registro').AsString;
    finalidad:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('finalidadOperativa').AsString;
    cumplimiento:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('cumplimientoFinalidad').AsInteger;
    motivo:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('motivoNoCumplimiento').AsString;
    interes:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('interes').AsString;
    tipodetecnica:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('tipodeTecnica').AsString;
    estado:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('estado').AsString;
    ktAlta:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('ktAlta').AsString;
    ktBaja:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('ktBaja').AsString;
    idsolicitud:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('idSolicitud').AsInteger;
    idobjetivo:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('IdObjetivo').AsInteger;
  except

  end;

  //llenando los edits
  try
    cxTextEdit1.Text:=chequeo;
    cxTextEdit2.Text:=caso;
    cxTextEdit3.Text:=oficial;
    cxTextEdit4.Text:=registro;
    cxTextEdit5.Text:=estado;
    cxTextEdit6.Text:=IntToStr(idobjetivo);
    cxTextEdit7.Text:=ktalta;
    cxTextEdit8.Text:=IntToStr(cumplimiento);
    cxTextEdit9.Text:=ktbaja;
    cxMemo1.Text:=interes;
  except

  end;

  try
    cxDateEdit1.date:=fechaalta;
    cxDateEdit2.date:=fechabaja;
  except

  end;

  try  cxLookupComboBox1.Text:=dpto;
  except
  end;
  try  cxLookupComboBox2.Text:=fase;
  except
  end;
  try  cxLookupComboBox3.Text:=finalidad;
  except
  end;
  try  cxLookupComboBox4.Text:=niveldecompartimentacion;
  except
  end;
  try  cxLookupComboBox5.Text:=niveldeaprobacion;
  except
  end;
  try  cxLookupComboBox6.Text:=expediente;
  except
  end;
  try  cxLookupComboBox7.Text:=tipodetecnica;
  except
  end;
  try  cxLookupComboBox8.Text:=categoria;
  except
  end;
  try  cxLookupComboBox9.Text:= sitio;
  except
  end;
  try  cxLookupComboBox10.Text:=motivo;
  except
  end;
end;

procedure TFActualizarDatosAntecedentes.FormShow(Sender: TObject);
begin
  try
    cxLookupComboBox1.Properties.ListSource:=DM.DSdptosysecc;
    cxLookupComboBox5.Properties.ListSource:=DM.DSnivelaprobacion;
    cxLookupComboBox4.Properties.ListSource:=DM.DSnivelcompartimentacion;
    cxLookupComboBox10.Properties.ListSource:=DM.DSmotcump;
    cxLookupComboBox6.Properties.ListSource:=DM.DSexpedientesoperativos;
    cxLookupComboBox7.Properties.ListSource:=DM.DStipotec;
    cxLookupComboBox9.Properties.ListSource:=DM.DSsitios;
    cxLookupComboBox2.Properties.ListSource:=DM.DSfase;
    cxLookupComboBox3.Properties.ListSource:=DM.DSfinalidad;
    cxLookupComboBox8.Properties.ListSource:=DM.DScatOp;


    cxLookupComboBox1.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox2.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox3.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox4.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox5.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox6.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox7.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox8.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox9.Properties.ListSource.DataSet.Active:=True;
    cxLookupComboBox10.Properties.ListSource.DataSet.Active:=True;
  except

  end;

  if cxGrid1DBTableView1.DataController.DataSet.RecordCount > 0 then
  begin
    cxGrid1DBTableView1.DataController.DataSource.DataSet.First;
    //llenando los edits
    Fechaalta:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('fechaAlta').AsDateTime;
    fechaBaja:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('fechaBaja').AsDateTime;
    chequeo:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('chequeo').AsString;
    caso:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('caso').AsString;
    dpto:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('dptoSeccion').AsString;
    oficial:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('oficial').AsString;
    fase:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('fase').AsString;
    niveldeaprobacion:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('niveldeAprobacion').AsString;
    niveldecompartimentacion:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('niveldeCompartimentacion').AsString;
    categoria:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('categoriaOperativa').AsString;
    expediente:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('ExpedienteOperativo').AsString;
    sitio:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('sitio').AsString;
    registro:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('registro').AsString;
    finalidad:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('finalidadOperativa').AsString;
    cumplimiento:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('cumplimientoFinalidad').AsInteger;
    motivo:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('motivoNoCumplimiento').AsString;
    interes:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('interes').AsString;
    tipodetecnica:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('tipodeTecnica').AsString;
    estado:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('estado').AsString;
    ktAlta:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('ktAlta').AsString;
    ktBaja:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('ktBaja').AsString;
    idsolicitud:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('idSolicitud').AsInteger;
    idobjetivo:=cxGrid1DBTableView1.DataController.DataSet.fieldbyname('IdObjetivo').AsInteger;

    cxTextEdit1.Text:=chequeo;
    cxTextEdit2.Text:=caso;
    cxTextEdit3.Text:=oficial;
    cxTextEdit4.Text:=registro;
    cxTextEdit8.Text:=IntToStr(cumplimiento);
    cxTextEdit5.Text:=estado;
    cxTextEdit7.Text:=ktalta;
    cxTextEdit9.Text:=ktbaja;
    cxMemo1.Text:=interes;
    cxTextEdit6.Text:=IntToStr(idobjetivo);

    try
      cxDateEdit1.date:=fechaalta;
      cxDateEdit2.date:=fechabaja;
    except

    end;

    try  cxLookupComboBox1.Text:=dpto;
    except
    end;
    try  cxLookupComboBox2.Text:=fase;
    except
    end;
    try  cxLookupComboBox3.Text:=finalidad;
    except
    end;
    try  cxLookupComboBox4.Text:=niveldecompartimentacion;
    except
    end;
    try  cxLookupComboBox5.Text:=niveldeaprobacion;
    except
    end;
    try  cxLookupComboBox6.Text:=expediente;
    except
    end;
    try  cxLookupComboBox7.Text:=tipodetecnica;
    except
    end;
    try  cxLookupComboBox8.Text:=categoria;
    except
    end;
    try  cxLookupComboBox9.Text:= sitio;
    except
    end;
    try  cxLookupComboBox10.Text:=motivo;
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
    cxDateEdit1.Clear;
    cxDateEdit2.Clear;
    cxLookupComboBox1.Clear;
    cxLookupComboBox2.Clear;
    cxLookupComboBox3.Clear;
    cxLookupComboBox4.Clear;
    cxLookupComboBox5.Clear;
    cxLookupComboBox6.Clear;
    cxLookupComboBox7.Clear;
    cxLookupComboBox8.Clear;
    cxLookupComboBox9.Clear;
    cxLookupComboBox10.Clear;
    cxMemo1.Clear;
  end;
end;

end.
