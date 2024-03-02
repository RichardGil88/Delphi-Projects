unit UnitPrincipal;

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
  dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxBarBuiltInMenu, cxPC, cxImage, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxGroupBox, dxGDIPlusClasses,
  cxTextEdit, cxMemo, dxSkinsForm, cxCalendar, Vcl.ExtCtrls, cxLabel, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit,
  cxDropDownEdit,  cxGridExportLink;

type
  TFormPrincipal = class(TForm)
    cxImage1: TcxImage;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGroupBox2: TcxGroupBox;
    cxMemo1: TcxMemo;
    cxGroupBox3: TcxGroupBox;
    dxSkinController1: TdxSkinController;
    Timerreloj: TTimer;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxGrid1DBTableView1Id: TcxGridDBColumn;
    cxGrid1DBTableView1Nombre: TcxGridDBColumn;
    cxGrid1DBTableView1Credencial: TcxGridDBColumn;
    cxGrid1DBTableView1Departamento: TcxGridDBColumn;
    cxGrid1DBTableView1Fecha: TcxGridDBColumn;
    cxGrid1DBTableView1Hora: TcxGridDBColumn;
    TimerCredencial: TTimer;
    cxGroupBox4: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxTextEdit6: TcxTextEdit;
    cxTextEdit7: TcxTextEdit;
    cxClock1: TcxClock;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxTextEdit8: TcxTextEdit;
    cxTextEdit10: TcxTextEdit;
    cxLabel8: TcxLabel;
    cxTextEdit11: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxTextEdit9: TcxTextEdit;
    SaveDialog1: TSaveDialog;
    cxGroupBox5: TcxGroupBox;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxButton4: TcxButton;
    cxGroupBox6: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Id: TcxGridDBColumn;
    cxGridDBTableView1Nombre: TcxGridDBColumn;
    cxGridDBTableView1Credencial: TcxGridDBColumn;
    cxGridDBTableView1Fecha: TcxGridDBColumn;
    cxGridDBTableView1Hora: TcxGridDBColumn;
    cxGridDBTableView1Departamento: TcxGridDBColumn;
    cxGridDBTableView1Tipo: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxGroupBox7: TcxGroupBox;
    cxButton3: TcxButton;
    cxLabel15: TcxLabel;
    cxGroupBox8: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton7: TcxButton;
    cxButton2: TcxButton;
    cxGroupBox9: TcxGroupBox;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    TimerVencimiento: TTimer;
    procedure TimerrelojTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TimerCredencialTimer(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure TimerVencimientoTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DesayunoI,DesayunoF,ComidaI,ComidaF,CenaI,CenaF:TTime;
    procedure CantidadesPorTipo;
    function QuitarCaracteres(const s: string): string;

  end;
  var
  FormPrincipal:TFormPrincipal;



implementation

{$R *.dfm}
uses UnitDataModule1,UnitInsertarUsuario,UnitInsertarRegistro,
     UnitUsuarios,UnitRegistrarse, UnitEditarUsuario,
     UnitEliminarUsuarioSistema, UnitInsertarUsuarioSistema;


function TFormPrincipal.QuitarCaracteres(const s: string): string;
var
    i, Count: Integer;
begin
    SetLength(Result, Length(s));
    Count := 0;
    for i := 1 to Length(s) do begin
    if ((s[i] >= #32) and (s[i] <= #127)) then //or (s[i] in [#10, #13])
    begin
     inc(Count);
     Result[Count] := s[i];
    end;
    end;
    SetLength(Result, Count);
end;

procedure TFormPrincipal.CantidadesPorTipo;
var Desayunos,Comidas,Cenas,FueradeHora:Integer;
I:Integer;
begin
  try
     Desayunos:=0;
     Comidas:=0;
     Cenas:=0;
     FueradeHora:=0;

     DataModule1.QComidasHoy.ParamByName('Pfecha').AsDate:=Date;
     DataModule1.QComidasHoy.Execute;

     for I := 0 to DataModule1.QComidasHoy.RecordCount -1 do
     begin
       if DataModule1.QComidasHoy.FieldValues['Tipo'] = 'Desayuno' then
       begin
         Desayunos:=Desayunos+1;
       end;
       if DataModule1.QComidasHoy.FieldValues['Tipo'] = 'Comida' then
       begin
         Comidas:=Comidas+1;
       end;
       if DataModule1.QComidasHoy.FieldValues['Tipo'] = 'Cena' then
       begin
         Cenas:=Cenas+1;
       end;
       if DataModule1.QComidasHoy.FieldValues['Tipo'] = 'Fuera de Hora' then
       begin
         FueradeHora:=FueradeHora+1;
       end;

       cxTextEdit1.Text:=IntToStr(Desayunos);
       cxTextEdit2.Text:=IntToStr(Comidas);
       cxTextEdit3.Text:=IntToStr(Cenas);
       cxTextEdit9.Text:=IntToStr(FueradeHora);

       cxTextEdit11.Text:=IntToStr(DataModule1.QComidasHoy.RecordCount);

       DataModule1.QComidasHoy.Next;
     end;
  except

  end;

end;

procedure TFormPrincipal.cxButton1Click(Sender: TObject);
begin
  FormInsertarUsuario.ShowModal;
end;

procedure TFormPrincipal.cxButton2Click(Sender: TObject);
begin
  FormUsuarios.ShowModal;
end;

procedure TFormPrincipal.cxButton3Click(Sender: TObject);
begin
  FormInsertarRegistro.ShowModal;
end;

procedure TFormPrincipal.cxButton4Click(Sender: TObject);
var
  s : string;
begin
  try
    if SaveDialog1.Execute then
    begin
      s := SaveDialog1.FileName;
      ExportGridToXLSX(s, cxGrid2, False, True, True, 'xlsx');
    end;

  except

  end;
end;

procedure TFormPrincipal.cxButton5Click(Sender: TObject);
begin
    if (cxDateEdit1.Text <> '') and (cxDateEdit2.Text <> '') then
    begin
      DataModule1.QReporte.ParamByName('PFechaInicio').AsDate:= cxDateEdit1.Date;
      DataModule1.QReporte.ParamByName('PFechaFin').AsDate:= cxDateEdit2.Date;
      DataModule1.QReporte.Execute;
    end
    else
    ShowMessage('Debe llenar los datos de las Fechas.');
end;

procedure TFormPrincipal.cxButton6Click(Sender: TObject);
begin
 cxGridDBTableView1.ViewData.Expand(True);
end;

procedure TFormPrincipal.cxButton7Click(Sender: TObject);
begin
   FormEditarUsuario.ShowModal;
end;

procedure TFormPrincipal.cxButton8Click(Sender: TObject);
begin
  FormInsertarUsuarioSistema.ShowModal;
end;

procedure TFormPrincipal.cxButton9Click(Sender: TObject);
begin
 FormEliminarUsuarioSistema.ShowModal;
end;

procedure TFormPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Application.Terminate;
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
var I:Integer;
begin
   try
     cxMemo1.SetFocus;
     CantidadesPorTipo;
     DataModule1.QUltimos5.Execute;

     //cxLabel15.Caption:=FormRegistrarse.DiasRestantes
   //  cxLabel15.Caption:='Le quedan '+IntToStr(FormRegistrarse.DiasRestantes)+ ' días de prueba.';


     // buscando los horarios
     DataModule1.Qhorarios.Execute;
     for I := 0 to DataModule1.Qhorarios.RecordCount -1 do
     begin
       if DataModule1.Qhorarios.FieldValues['Tipo']= 'Desayuno' then
       begin
         DesayunoI:= DataModule1.Qhorarios.FieldValues['HoraInicio'];
         cxTextEdit4.Text:=TimeToStr(DesayunoI);

         DesayunoF:= DataModule1.Qhorarios.FieldValues['HoraFin'];
         cxTextEdit5.Text:=TimeToStr(DesayunoF);
       end;

       if DataModule1.Qhorarios.FieldValues['Tipo']= 'Comida' then
       begin
         ComidaI:= DataModule1.Qhorarios.FieldValues['HoraInicio'];
         cxTextEdit6.Text:=TimeToStr(ComidaI);

         ComidaF:= DataModule1.Qhorarios.FieldValues['HoraFin'];
         cxTextEdit7.Text:=TimeToStr(ComidaF);
       end;

       if DataModule1.Qhorarios.FieldValues['Tipo']= 'Cena' then
       begin
         CenaI:= DataModule1.Qhorarios.FieldValues['HoraInicio'];
         cxTextEdit8.Text:=TimeToStr(DesayunoI);

         CenaF:= DataModule1.Qhorarios.FieldValues['HoraFin'];
         cxTextEdit10.Text:=TimeToStr(DesayunoF);
       end;
       DataModule1.Qhorarios.Next;
     end;
   except

   end;
end;

procedure TFormPrincipal.TimerCredencialTimer(Sender: TObject);
var Credencial:string;
begin
  try
    if cxMemo1.Lines.Count>0 then
    begin

       Credencial:=QuitarCaracteres(cxMemo1.Text);
       cxMemo1.Clear;
       // primero preguntar si existe ese usuario en la bd
       DataModule1.QUsuariosPorCredencial.ParamByName('Credencial').AsString:=Credencial;
       DataModule1.QUsuariosPorCredencial.Execute;

       if DataModule1.QUsuariosPorCredencial.RecordCount = 0 then
       begin
         cxMemo1.Clear;
         ShowMessage('La credencial no está registrada en el sistema');
         Exit
       end
       else
       begin
          // si esta activo y si tiene permiso de comer
         if DataModule1.QUsuariosPorCredencial.FieldValues['status'] = 0 then
         begin
           cxMemo1.Clear;
           ShowMessage('La credencial no está activa en el sistema');
           Exit
         end;
         if DataModule1.QUsuariosPorCredencial.FieldValues['AccesoComedor'] = 'False' then
         begin
           cxMemo1.Clear;
           ShowMessage('La credencial no tiene acceso al comedor');
           Exit
         end;

         // preguntar si tiene comidas disponibles para el dia.
         DataModule1.QCantidadComidasHoy.ParamByName('PFecha').AsDate:=Date;
         DataModule1.QCantidadComidasHoy.ParamByName('PCredencial').AsString:=Credencial;
         DataModule1.QCantidadComidasHoy.Execute;

         if DataModule1.QUsuariosPorCredencial.FieldValues['CantidadComidas'] >
            DataModule1.QCantidadComidasHoy.RecordCount then
         begin
           with DataModule1.QInsertarRegistro do
           begin
             ParamByName('Nombres').AsString:= DataModule1.QUsuariosPorCredencial.FieldValues['Nombres'];
             ParamByName('Credencial').AsString:= DataModule1.QUsuariosPorCredencial.FieldValues['Credencial'];
             ParamByName('Fecha').AsDate:= Date;
             ParamByName('Hora').AsTime:= Time;
             ParamByName('Departamento').AsString:= DataModule1.QUsuariosPorCredencial.FieldValues['Departamento'];

            //  ver que tipo de comida es

             if (time >=DesayunoI) and (time <=DesayunoF) then
             begin
                ParamByName('Tipo').AsString:='Desayuno';
             end
             else
             if (time >=ComidaI) and (time <=ComidaF) then
             begin
                ParamByName('Tipo').AsString:='Comida';
             end
             else
             if (time >=CenaI) and (time <=CenaF) then
             begin
                ParamByName('Tipo').AsString:='Cena';
             end
             else
             begin
               ParamByName('Tipo').AsString:='Fuera de Hora';
             end;

             Execute;
             DataModule1.QUltimos5.Execute;
             DataModule1.QUltimos5.Refresh;

             CantidadesPorTipo;
           end;
         end
         else
         ShowMessage('Su credencial no cuenta con más comidas hoy');


         
       end;



    end;
  except
    ShowMessage('No se pudo insertar el registro');
  end;
end;

procedure TFormPrincipal.TimerrelojTimer(Sender: TObject);
begin
    try
      cxClock1.Time:=time;
      cxLabel4.Caption:=TimeToStr(time);
    except

    end;
end;

procedure TFormPrincipal.TimerVencimientoTimer(Sender: TObject);
begin
//FormRegistrarse.Demo;
end;

end.
