unit Uobjanttodos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkSide, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Menus, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxButtons, cxContainer, cxTextEdit, cxPC,UDM,
  cxGroupBox, MemDS, DBAccess, Uni, AdvCircularProgress,Ulogin,
  dxSkinDarkRoom, dxSkinFoggy, dxSkinSeven, dxSkinSharp, cxLookAndFeels,
  AdvMenus, Grids, DBGrids, ExtCtrls, cxMemo;

type
  TFobjanttodos = class(TForm)
    GP1: TcxGroupBox;
    cxPageControl1: TcxPageControl;
    tabnombre: TcxTabSheet;
    edt1: TcxTextEdit;
    btn1: TcxButton;
    tabchtelefono: TcxTabSheet;
    btn2: TcxButton;
    edt2: TcxTextEdit;
    tabchcorreo: TcxTabSheet;
    btn3: TcxButton;
    edt3: TcxTextEdit;
    tabchdir: TcxTabSheet;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    btn4: TcxButton;
    edt4: TcxTextEdit;
    edt5: TcxTextEdit;
    edt6: TcxTextEdit;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    DS1: TUniDataSource;
    cmdq1: TUniQuery;
    cmdq2: TUniQuery;
    DS2: TUniDataSource;
    cmdq3: TUniQuery;
    DS3: TUniDataSource;
    cmdq4: TUniQuery;
    DS4: TUniDataSource;
    cmdq5: TUniQuery;
    DS5: TUniDataSource;
    cmdq6: TUniQuery;
    DS6: TUniDataSource;
    cmdq7: TUniQuery;
    DS7: TUniDataSource;
    cxGrid1DBTableView1idObjetivo: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre1: TcxGridDBColumn;
    cxGrid1DBTableView1Apellido1: TcxGridDBColumn;
    cxGrid1DBTableView1Apellido2: TcxGridDBColumn;
    cxGrid1DBTableView1Alias: TcxGridDBColumn;
    cxGrid1DBTableView1NumeroDeIdentidad: TcxGridDBColumn;
    cxGrid1DBTableView1Pais: TcxGridDBColumn;
    cxGrid1DBTableView1Lugar: TcxGridDBColumn;
    cxGrid1DBTableView1idUbicacion: TcxGridDBColumn;
    cxGrid1DBTableView1idLaborales: TcxGridDBColumn;
    cxGrid1DBTableView1Calle: TcxGridDBColumn;
    cxGrid1DBTableView1Numero: TcxGridDBColumn;
    cxGrid1DBTableView1Edificio: TcxGridDBColumn;
    cxGrid1DBTableView1Piso: TcxGridDBColumn;
    cxGrid1DBTableView1Apartamento: TcxGridDBColumn;
    cxGrid1DBTableView1Calle1: TcxGridDBColumn;
    cxGrid1DBTableView1Calle2: TcxGridDBColumn;
    cxGrid1DBTableView1Barrio: TcxGridDBColumn;
    cxGrid1DBTableView1Municipio: TcxGridDBColumn;
    cxGrid1DBTableView1Provincia: TcxGridDBColumn;
    cxGrid1DBTableView1CentroDeTrabajo: TcxGridDBColumn;
    cxGrid1DBTableView1Ocupacion: TcxGridDBColumn;
    cxGrid1DBTableView1Cargo: TcxGridDBColumn;
    cxGrid1DBTableView1Organismo: TcxGridDBColumn;
    cxGrid1DBTableView1estado: TcxGridDBColumn;
    cxGrid1DBTableView1fechaBaja: TcxGridDBColumn;
    cxGrid1DBTableView1ktBaja: TcxGridDBColumn;
    cxGrid1DBTableView1clave: TcxGridDBColumn;
    cxGrid1DBTableView1chequeo: TcxGridDBColumn;
    cxGrid1DBTableView1sitio: TcxGridDBColumn;
    cxGrid1DBTableView1tipodeTecnica: TcxGridDBColumn;
    cxGrid1DBTableView1aplicadopor: TcxGridDBColumn;
    cxGrid1DBTableView1tipotx: TcxGridDBColumn;
    cxGrid1DBTableView1finalidadOperativa: TcxGridDBColumn;
    cxGrid1DBTableView1cumplimientoFinalidad: TcxGridDBColumn;
    cxGrid1DBTableView1motivoNoCumplimiento: TcxGridDBColumn;
    cxGrid1DBTableView1atencionespecial: TcxGridDBColumn;
    cxGrid1DBTableView1caso: TcxGridDBColumn;
    cxGrid1DBTableView1interes: TcxGridDBColumn;
    cxGrid1DBTableView1dptoSeccion: TcxGridDBColumn;
    cxGrid1DBTableView1seccion: TcxGridDBColumn;
    cxGrid1DBTableView1oficial: TcxGridDBColumn;
    cxGrid1DBTableView1fase: TcxGridDBColumn;
    cxGrid1DBTableView1niveldeAprobacion: TcxGridDBColumn;
    cxGrid1DBTableView1niveldeCompartimentacion: TcxGridDBColumn;
    cxGrid1DBTableView1categoriaOperativa: TcxGridDBColumn;
    cxGrid1DBTableView1registro: TcxGridDBColumn;
    cxGrid1DBTableView1nsiso: TcxGridDBColumn;
    cxGrid1DBTableView1ExpedienteOperativo: TcxGridDBColumn;
    cxGrid1DBTableView1fechaAlta: TcxGridDBColumn;
    AdvPopupMenu1: TAdvPopupMenu;
    GenerarReporte1: TMenuItem;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure edt2KeyPress(Sender: TObject; var Key: Char);
    procedure edt3KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure GenerarReporte1Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
 Fobjanttodos: TFobjanttodos;

 fecha:TDateTime;
 objetivo,chequeo,caso,oficial,organo,fase,interes,finalidad,baja,alta,ubicativos,laborales:string;
 trabajo,ocupacion,cargo,organismo:string;
 calle,calle1,calle2,numero,edificio,piso,apartamento,barrio,municipio,provincia:string;


implementation
 uses ComObj,Umain;
{$R *.dfm}

procedure TFobjanttodos.GenerarReporte1Click(Sender: TObject);
var
 Word: Variant;
 Documento: Variant;
  begin
   try
    (* Creas un objeto Word *)
    Word := CreateOleObject('Word.Application');

    (* Añades un documento basado en la plantilla *)
    Word.Documents.Add(ExtractFilePath(Application.ExeName)+'RESPUESTA A SOLICITUD DE INFORMACIÓN BIOGRÁFICA.dot');
    Documento := Word.Documents.Item(1);

    (* Asignas valores a los campos *)
    Documento.Variables.Add('fecha',fecha);
    Documento.Variables.Add('objetivo', objetivo);
    Documento.Variables.Add('caso', caso);
    Documento.Variables.Add('oficial', oficial);
    Documento.Variables.Add('organo', organo);
    Documento.Variables.Add('fase', fase);
    Documento.Variables.Add('interes', interes);
    Documento.Variables.Add('chequeo', chequeo);
    Documento.Variables.Add('alta',alta);
    Documento.Variables.Add('baja',baja);
    Documento.Variables.Add('finalidad',finalidad);
    Documento.Variables.Add('laborales',laborales);
    Documento.Variables.Add('ubicativos',ubicativos);
    Documento.Fields.Update;
    Documento.Fields.ToggleShowCodes;
    Word.Visible := true;
   except
     Documento.Free;
     ShowMessage('No se pudo generar el reporte');
   end;

  end;

procedure TFobjanttodos.cxGrid1DBTableView1CellClick
(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
 AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
 begin
   fecha:=Date;
   objetivo:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Nombre').AsString
        +' '+cxGrid1DBTableView1.DataController.DataSet.FieldByName('Nombre1').AsString
        +' '+cxGrid1DBTableView1.DataController.DataSet.FieldByName('Apellido1').AsString
        +' '+cxGrid1DBTableView1.DataController.DataSet.FieldByName('Apellido2').AsString;
   if objetivo='' then
      objetivo:=' ';
   caso:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('caso').AsString;
   if caso='' then
      caso:=' ';
   oficial:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('oficial').AsString;
   if oficial='' then
      oficial:=' ';
   organo:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('dptoSeccion').AsString;
   if organo='' then
      organo:=' ';
   fase:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('fase').AsString;
   if fase='' then
      fase:=' ';
   interes:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('interes').AsString;
   if interes='' then
      interes:=' ';
   chequeo:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('chequeo').AsString;
   if chequeo='' then
      chequeo:=' ';
   finalidad:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('finalidadOperativa').AsString;
   if finalidad='' then
      finalidad:=' ';
   baja:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('fechaBaja').AsString;
   if baja='' then
      baja:=' ';
   alta:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('fechaAlta').AsString;
   if alta='' then
      alta:=' ';
   //datos  laborales
    trabajo:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('CentroDeTrabajo').AsString;
   if trabajo='' then
      trabajo:=' ';
   ocupacion:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Ocupacion').AsString;
   if ocupacion='' then
     ocupacion:=' ';
   cargo:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Cargo').AsString;
   if cargo='' then
     cargo:=' ';
    organismo:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Organismo').AsString;
   if organismo='' then
     organismo:=' ';
   if (trabajo=' ')and (ocupacion=' ')and (cargo=' ')and (organismo=' ') then
     laborales:=' '
   else
   begin
     laborales:='Centro de Trabajo:'+ trabajo +','+'Ocupacion:'+ocupacion + ','+'Cargo:'+cargo + ','+'Organismo:'+organismo;
   end;
   //datos ubicativos
   calle:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Calle').AsString;
   if calle='' then
     calle:=' ';
   calle1:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Calle1').AsString;
   if calle1='' then
     calle1:=' ';
   calle2:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Calle2').AsString;
   if calle2='' then
     calle2:=' ';
   numero:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Numero').AsString;
   if numero='' then
     numero:=' ';
   edificio:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Edificio').AsString;
   if edificio='' then
     edificio:=' ';
   piso:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Piso').AsString;
   if piso='' then
     piso:=' ';
   apartamento:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Apartamento').AsString;
   if apartamento='' then
     apartamento:=' ';
   barrio:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Barrio').AsString;
   if barrio='' then
     barrio:=' ';
   municipio:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Municipio').AsString;
   if municipio='' then
     municipio:=' ';
   provincia:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Provincia').AsString;
   if provincia='' then
     provincia:=' ';
   if (calle=' ') and (calle1=' ') and (calle2=' ') and (numero=' ') and(edificio=' ') and(piso=' ') and(apartamento=' ') and(barrio=' ') and(municipio=' ') and(provincia=' ') then
   begin
     ubicativos:=' ';
   end
   else
   begin
     ubicativos:='Calles:'+calle+'/'+calle1+'/'+calle2+' '+'Edificio:'+edificio+' '+'Apartamento:'+apartamento+' '+'Barrio:'+barrio+' '+'Municipio:'+municipio+' '+'Provincia:'+provincia;
   end;
 end;

procedure TFobjanttodos.btn1Click(Sender: TObject);
begin
    cxGrid1.Visible:=True;
    DM.ProcOAbynombre.ParamByName('nombre').AsString:='%'+edt1.Text+'%';
    DM.ProcOAbynombre.ExecProc;
    edt1.Clear;
end;

procedure TFobjanttodos.btn2Click(Sender: TObject);
begin
    cxGrid1.Visible:=True;
    DM.ProcOAbytel.ParamByName('telefono').AsString:='%'+edt2.Text+'%';
    DM.ProcOAbytel.ExecProc;
    edt2.Clear;
end;

procedure TFobjanttodos.btn3Click(Sender: TObject);
begin
    cxGrid1.Visible:=True;
    DM.ProcOAbycorreo.ParamByName('correo').AsString:='%'+edt3.Text+'%';
    DM.ProcOAbycorreo.ExecProc;
    edt3.Clear;
end;

procedure TFobjanttodos.btn4Click(Sender: TObject);
begin
   if (edt5.Text='') and (edt6.Text='') and (edt4.Text='') then
      begin
        ShowMessage('Debe introducir un criterio de busqueda');
      end
   else
   if (edt4.Text<>'') and (edt5.Text='') and (edt6.Text='') then
      begin
       cxGrid1.Visible:=True;
       cxGrid1DBTableView1.DataController.DataSource:=DS1;
       cxGrid1DBTableView1.DataController.DataSource.DataSet:=cmdq1;
       cmdq1.ParamByName('Pcalle').AsString:='%'+edt4.Text+'%';
       cmdq1.Active:=True;
       cmdq1.Execute;
       edt4.Clear;
       edt5.Clear;
       edt6.Clear;

      end
   else
   if (edt4.Text='') and (edt5.Text<>'') and (edt6.Text='') then
      begin
        cxGrid1.Visible:=True;
        cxGrid1DBTableView1.DataController.DataSource:=DS2;
        cxGrid1DBTableView1.DataController.DataSource.DataSet:=cmdq2;
        cmdq2.ParamByName('Pcalle1').AsString:='%'+edt5.Text+'%';
        cmdq2.Active:=True;
        cmdq2.Execute;
        edt4.Clear;
        edt5.Clear;
        edt6.Clear;
      end
   else
   if (edt4.Text='') and (edt5.Text='') and (edt6.Text<>'') then
      begin
        cxGrid1.Visible:=True;
        cxGrid1DBTableView1.DataController.DataSource:=DS3;
        cxGrid1DBTableView1.DataController.DataSource.DataSet:=cmdq3;
        cmdq3.ParamByName('Pnumero').AsString:='%'+edt6.Text+'%';
        cmdq3.Active:=True;
        cmdq3.Execute;
        edt4.Clear;
        edt5.Clear;
        edt6.Clear;
      end
    {hasta aqui los de un edit lleno y los demas vacios}
   else
   if (edt4.Text<>'') and (edt5.Text<>'') and (edt6.Text='') then
      begin
        cxGrid1.Visible:=True;
        cxGrid1DBTableView1.DataController.DataSource:=DS4;
        cxGrid1DBTableView1.DataController.DataSource.DataSet:=cmdq4;
        cmdq4.ParamByName('Pcalle').AsString:='%'+edt4.Text+'%';
        cmdq4.ParamByName('Pcalle1').AsString:='%'+edt5.Text+'%';
        cmdq4.Active:=True;
        cmdq4.Execute;
        edt4.Clear;
        edt5.Clear;
        edt6.Clear;
      end
   else
   if (edt4.Text='') and (edt5.Text<>'') and (edt6.Text<>'') then
      begin
        cxGrid1.Visible:=True;
        cxGrid1DBTableView1.DataController.DataSource:=DS5;
        cxGrid1DBTableView1.DataController.DataSource.DataSet:=cmdq5;
        cmdq5.ParamByName('Pcalle1').AsString:='%'+edt5.Text+'%';
        cmdq5.ParamByName('Pnumero').AsString:='%'+edt6.Text+'%';
        cmdq5.Active:=True;
        cmdq5.Execute;
        edt4.Clear;
        edt5.Clear;
        edt6.Clear;
      end
   else
   if (edt4.Text<>'') and (edt5.Text='') and (edt6.Text<>'') then
      begin
        cxGrid1.Visible:=True;
        cxGrid1DBTableView1.DataController.DataSource:=DS6;
        cxGrid1DBTableView1.DataController.DataSource.DataSet:=cmdq6;
        cmdq6.ParamByName('Pcalle').AsString:='%'+edt4.Text+'%';
        cmdq6.ParamByName('Pnumero').AsString:='%'+edt6.Text+'%';
        cmdq6.Active:=True;
        cmdq6.Execute;
        edt4.Clear;
        edt5.Clear;
        edt6.Clear;
      end
    {hasta aqui los de dos edit lleno y uno vacio}
   else
   if (edt4.Text<>'') and (edt5.Text<>'') and (edt6.Text<>'') then
      begin
        cxGrid1.Visible:=True;
        cxGrid1DBTableView1.DataController.DataSource:=DS7;
        cxGrid1DBTableView1.DataController.DataSource.DataSet:=cmdq7;
        cmdq7.ParamByName('Pcalle').AsString:='%'+edt4.Text+'%';
        cmdq7.ParamByName('Pcalle1').AsString:='%'+edt5.Text+'%';
        cmdq7.ParamByName('Pnumero').AsString:='%'+edt6.Text+'%';
        cmdq7.Active:=True;
        cmdq7.Execute;
        edt4.Clear;
        edt5.Clear;
        edt6.Clear;
      end;
end;

procedure TFobjanttodos.edt1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
 begin
    cxGrid1.Visible:=True;
    DM.ProcOAbynombre.ParamByName('nombre').AsString:='%'+edt1.Text+'%';
    DM.ProcOAbynombre.ExecProc;
    edt1.Clear;
 end;
end;

procedure TFobjanttodos.edt2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    cxGrid1.Visible:=True;
    DM.ProcOAbytel.ParamByName('telefono').AsString:='%'+edt2.Text+'%';
    DM.ProcOAbytel.ExecProc;
    edt2.Clear;
  end;

end;

procedure TFobjanttodos.edt3KeyPress(Sender: TObject; var Key: Char);
begin
    if Key=#13 then
  begin
    cxGrid1.Visible:=True;
    DM.ProcOAbycorreo.ParamByName('correo').AsString:='%'+edt3.Text+'%';
    DM.ProcOAbycorreo.ExecProc;
    edt3.Clear;
  end;
end;

end.


