unit UFrontEnd;

interface
  uses
  EnImgScr,        { for TImageScrollBox }
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGroupBox, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, StdCtrls, ExtCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxSplitter, jpeg,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  Menus, ComCtrls, cxImage, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  JvExForms, JvCustomItemViewer, JvImagesViewer, JvExControls, JvgImage,
  cxNavigator, cxButtons;

type
  TFFrontEnd = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxSplitter1: TcxSplitter;
    PanelImagen: TPanel;
    PanelTexto: TPanel;
    MemoTexto: TMemo;
    pm1: TPopupMenu;
    Eliminar1: TMenuItem;
    Conservar1: TMenuItem;
    PanelUSB: TPanel;
    TreeView1: TTreeView;
    PanelUSBInfo: TPanel;
    MemoUSBInfo: TMemo;
    cxGroupBox3: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGrid1DBTableView1IdContenido: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre_PC: TcxGridDBColumn;
    cxGrid1DBTableView1Chequeo: TcxGridDBColumn;
    cxGrid1DBTableView1Carpeta: TcxGridDBColumn;
    cxGrid1DBTableView1Fichero: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Hora: TcxGridDBColumn;
    cxGrid1DBTableView1Tipo: TcxGridDBColumn;
    cxGrid1DBTableView1Procesado: TcxGridDBColumn;
    cxGrid1DBTableView1Conservar: TcxGridDBColumn;
    ImageScrollBox1: TImageScrollBox;
    cxGroupBox4: TcxGroupBox;
    ZoomLbl: TLabel;
    ZoomEdit: TEdit;
    ZoomUpDown: TUpDown;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure ZoomEditChange(Sender: TObject);
    procedure Conservar1Click(Sender: TObject);
    procedure Eliminar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadFile( const FileName : AnsiString );
  end;

var
  FFrontEnd: TFFrontEnd;
  idContenido:Integer;
  fichero,carpeta:string;
  Tipo:string;

implementation
 uses
    UDM, UPrincipal;
{$R *.dfm}


// Al iniciar la forma
procedure TFFrontEnd.FormShow(Sender: TObject);
begin
 try
    // ve todo     ok
   if FPrincipal.CARGO='Super Admin' then
   begin
     cxGrid1DBTableView1.DataController.DataSource:=DM.DSQcontenidoSuperAdmin;
     DM.QcontenidoSuperAdmin.ParamByName('Pdpto').AsString:=FPrincipal.DPTO;
     DM.QcontenidoSuperAdmin.Execute;
   end;

    // ve solo los de su unidad
   if FPrincipal.CARGO='Admin' then
   begin
    cxGrid1DBTableView1.DataController.DataSource:=DM.DSQcontenidoAdmin;
    DM.QcontenidoUsuario.ParamByName('PUnidad').AsString:=FPrincipal.UNIDAD;
    DM.QcontenidoUsuario.Execute;
   end;

   // ve solo los chequeos que tiene asignadas
   if FPrincipal.CARGO='Usuario' then
   begin
    cxGrid1DBTableView1.DataController.DataSource:=DM.DSQcontenidoUsuario;
    DM.QcontenidoUsuario.ParamByName('puser').AsString:=FPrincipal.USUARIO;
    DM.QcontenidoUsuario.Execute;

//  Eliminar1.Enabled:=False;
   end;

 except

 end;
end;

//conservar
procedure TFFrontEnd.cxButton1Click(Sender: TObject);
begin
   //poner en Conservar
   try
     DM.QConservar.ParamByName('pid').AsInteger:=idContenido;
     DM.QConservar.Execute;
     cxGrid1DBTableView1.DataController.DataSet.Refresh;
   except

   end;
end;

//conservar  popupmenu
procedure TFFrontEnd.Conservar1Click(Sender: TObject);
begin
cxButton1Click(self);
end;

//Sin Interes
procedure TFFrontEnd.cxButton2Click(Sender: TObject);
var
Eliminado:Boolean;
begin
   // Eliminar fichero
   try
     DeleteFile(fichero);
     Eliminado:=True;
   except
     Eliminado:=False;
   end;
   // Eliminar  Record
   if Eliminado then
   begin
     try
       DM.Qeliminar.ParamByName('pid').AsInteger:=idContenido;
       DM.Qeliminar.Execute;
       cxGrid1DBTableView1.DataController.DataSet.Refresh;
     except

     end;
   end
   else ShowMessage('No se pudo eliminar el fichero');
end;

//Sin Interes popupmenu
procedure TFFrontEnd.Eliminar1Click(Sender: TObject);
begin
  cxButton2Click(self);
end;

// OnClick
procedure TFFrontEnd.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   try
     IdContenido:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('IdContenido').AsInteger;
     fichero:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Fichero').AsString;
     carpeta:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Carpeta').AsString;
     Tipo:=cxGrid1DBTableView1.DataController.DataSet.FieldByName('Tipo').AsString;
   except
     fichero:='';
     Tipo:='';
     carpeta:='';
   end;

   if (fichero <> '') and (Tipo <> '') and (carpeta <> '') then
   begin
     if Tipo = 'Imagen' then
     begin
       try
        if FileExists(carpeta+fichero) then
        begin
          PanelImagen.BringToFront;
          LoadFile(carpeta+fichero);
        end;
       except

       end;
     end;

     if Tipo = 'Teclado' then
     begin
       try
        
        if FileExists(carpeta+fichero) then
        begin
         PanelTexto.BringToFront;
         MemoTexto.Lines.Clear;
         MemoTexto.Lines.LoadFromFile(carpeta+fichero);
        end;
       except

       end;
     end;
   end;

   //poner en procesado
   try
     DM.Qprocesado.ParamByName('pid').AsInteger:=idContenido;
     DM.Qprocesado.Execute;
     cxGrid1DBTableView1.DataController.DataSet.Refresh;
   except

   end;
end;

// cargar imagen
procedure TFFrontEnd.LoadFile( const FileName : AnsiString );
begin
  try
    ImageScrollBox1.LoadFromFile(FileName, 1);
    ZoomEditChange(Self);
  except

  end;
end;

 // zoom imagen
procedure TFFrontEnd.ZoomEditChange(Sender: TObject);
begin
     try
       if ZoomEdit.Text<>'' then
       ImageScrollBox1.ZoomPercent := StrToInt(ZoomEdit.Text);
    except
        { trap exception in StrToIn }
        ImageScrollBox1.ZoomPercent := 100;
    end;
end;

end.

