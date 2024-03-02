unit Ulogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvCircularProgress, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, dxGDIPlusClasses, ExtCtrls,
  cxTextEdit, cxLabel, cxMaskEdit, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxGroupBox, DB, DBAccess, Uni, MemDS, UniProvider,
  MySQLUniProvider,Umain, cxGraphics, cxLookAndFeels, Grids, DBGrids,IniFiles,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinSevenClassic, dxSkinSharpPlus,
  dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint;

 type
  TFlogin = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    Image1: TImage;
    cxMaskEdit2: TcxMaskEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxMaskEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure Conectarme;
  public
    login : byte;
    USUARIO,CARGO,UNIDAD:string;
    { Public declarations }
  end;

var
  Flogin:TFlogin;
implementation
   uses
      UDM,Uobjanttodos;
{$R *.dfm}

procedure TFlogin.Conectarme;
 var
 fichero:string;
 ini:TIniFile;
 varserver,vardatabase:string;
 varport:Integer;
begin
  try
    fichero:=ExtractFilePath(Application.ExeName)+'Configuración.ini';
    if FileExists(fichero) then
    begin
      INI := TIniFile.Create(fichero);

      if ini.SectionExists('Chequeo') then
      begin
       try
        varserver := INI.ReadString('Chequeo','Server','') ;
        vardatabase := INI.ReadString('Chequeo','Database','');
        varport := INI.ReadInteger('Chequeo','Port',3306);

        with DM.concheq do
        begin
           Username:='root';
           Password:='windowsxp';
           Server:=varserver;
           Database:=vardatabase;
           Port:=varport;
           Connect;
        end;
       except
       ini.Free;
       end;
      end;

      if ini.SectionExists('Codificadores') then
      begin
       try
        varserver := INI.ReadString('Codificadores','Server','') ;
        vardatabase := INI.ReadString('Codificadores','Database','') ;
        varport := INI.ReadInteger('Codificadores','Port',3306);

        with DM.concod do
        begin
           Username:='root';
           Password:='windowsxp';
           Server:=varserver;
           Database:=vardatabase;
           Port:=varport;
           Connect;
        end;
       except
       ini.Free;
       end;
      end;

      if ini.SectionExists('Servicios') then
      begin
       try
        varserver := INI.ReadString('Servicios','Server','') ;
        vardatabase := INI.ReadString('Servicios','Database','') ;
        varport := INI.ReadInteger('Servicios','Port',3306);

        with DM.conserv do
        begin
           Username:='root';
           Password:='windowsxp';
           Server:=varserver;
           Database:=vardatabase;
           Port:=varport;
           Connect;
        end;
       except
       ini.Free;
       end;
      end;
      ini.Free;
    end
    else
    begin
      ShowMessage('No existe el fichero "Configuración.ini"');
      Application.Terminate;
    end;
  except
    ShowMessage('Error al conectarse a la BD');
    Application.Terminate;
  end;
end;

procedure TFlogin.cxButton1Click(Sender: TObject);
begin
  if (cxMaskEdit2.Text='') or (cxMaskEdit1.Text='') then
  begin
    ShowMessage('DEBE LLENAR TODOS LOS DATOS');
  end
  else
  begin
    Conectarme;
    with DM do
    begin
      Quser.ParamByName('Puser').AsString:=cxMaskEdit2.Text;
      Quser.ParamByName('Ppass').AsString:=('12345'+cxMaskEdit1.Text);
      Qcargoyunidad.ParamByName('Puser').AsString:=cxMaskEdit2.Text;
      Quser.Execute;
      if (Quser.RecordCount>0) then
        begin
          Qcargoyunidad.Execute;
          if (Qcargoyunidad.FieldValues['cargo']='usuario') then
            begin
              Fmain.dxBarSubItem1.Enabled:=False;
              Fmain.dxBarSubItem35.Enabled:=False;
              Fmain.dxBarButton81.Enabled:=False;
              Fmain.dxBarButton86.Enabled:=False;
            end;
          if (Qcargoyunidad.FieldValues['cargo']='admin') then
            begin
              Fmain.dxBarSubItem1.Enabled:=False;
              Fmain.dxBarButton80.Enabled:=False;
              Fmain.dxBarSubItem34.Enabled:=False;
              Fmain.dxBarSubItem35.Enabled:=False;
              Fmain.dxBarButton86.Enabled:=False;
            end;
            USUARIO:=cxMaskEdit2.Text;
            Fmain.usuario:=USUARIO;
            CARGO :=Qcargoyunidad.FieldValues['cargo'];
            UNIDAD:=Qcargoyunidad.FieldValues['unidad'];
            Fmain.unidad:=UNIDAD;
            Fmain.cargo:=CARGO;
            Fmain.ShowModal;
            FLOGIN.Hide;
        end
      else
      begin
        ShowMessage('USTED NO ESTA AUTORIZADO');
        cxMaskEdit1.Clear;
      end;
    end;
  end;
end;

procedure TFlogin.cxButton2Click(Sender: TObject);
begin
     Fmain.Hide;
     Application.Terminate;
end;

procedure TFlogin.cxMaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
  begin
    if (cxMaskEdit2.Text='') or (cxMaskEdit1.Text='') then
      begin
        ShowMessage('DEBE LLENAR TODOS LOS DATOS');
      end
    else
    begin
      Conectarme;
      with DM do
      begin
        Quser.ParamByName('Puser').AsString:=cxMaskEdit2.Text;
        Quser.ParamByName('Ppass').AsString:=('12345'+cxMaskEdit1.Text);
        Qcargoyunidad.ParamByName('Puser').AsString:=cxMaskEdit2.Text;
        Quser.Execute;
        if (Quser.RecordCount>0) then
          begin
            Qcargoyunidad.Execute;
            if (Qcargoyunidad.FieldValues['cargo']='usuario') then
              begin
                Fmain.dxBarSubItem1.Enabled:=False;
                Fmain.dxBarSubItem35.Enabled:=False;
                Fmain.dxBarButton81.Enabled:=False;
                Fmain.dxBarButton86.Enabled:=False;
              end;
            if (Qcargoyunidad.FieldValues['cargo']='admin') then
              begin
                Fmain.dxBarSubItem1.Enabled:=False;
                Fmain.dxBarButton80.Enabled:=False;
                Fmain.dxBarSubItem34.Enabled:=False;
                Fmain.dxBarSubItem35.Enabled:=False;
                Fmain.dxBarButton86.Enabled:=False;
              end;
              USUARIO:=cxMaskEdit2.Text;
              Fmain.usuario:=USUARIO;
              CARGO :=Qcargoyunidad.FieldValues['cargo'];
              UNIDAD:=Qcargoyunidad.FieldValues['unidad'];
              Fmain.unidad:=UNIDAD;
              Fmain.cargo:=CARGO;
              Fmain.ShowModal;
              FLOGIN.Hide;
          end
        else
        begin
          ShowMessage('USTED NO ESTA AUTORIZADO');
          cxMaskEdit1.Clear;
        end;
      end;
    end;
  end;
end;

procedure TFlogin.cxTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
   begin
     cxMaskEdit1.SetFocus;
   end;
end;

procedure TFlogin.FormShow(Sender: TObject);
begin
  cxMaskEdit2.SetFocus;
end;


end.
