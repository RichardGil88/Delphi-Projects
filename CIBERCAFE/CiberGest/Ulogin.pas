unit Ulogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLookAndFeels, dxSkinsForm, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, cxGraphics, cxLookAndFeelPainters, Vcl.Menus, cxButtons;

type
  TFlogin = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    dxSkinController1: TdxSkinController;
    cxButton1: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton1Click(Sender: TObject);

  private
    { Private declarations }
  public

  var
    usuario,cargo,unidad,dpto:string;
    varserver,vardatabase:string;
    varport:Integer;
    { Public declarations }
  end;

var
  Flogin: TFlogin;

implementation
 uses
 UDM,UPrincipal,IniFiles;
{$R *.dfm}

procedure TFlogin.cxButton1Click(Sender: TObject);
begin
  // conectandome a la bd
  try
    with DM.cibercafe do
    begin
     Username:='root';
     Password:='windowsxp';
     Server:=varserver;
     Database:=vardatabase;
     Port:=varport;
     Connect;
    end;
  except

  end;

  if DM.cibercafe.Connected = true then
  begin
    if (Edit2.Text='') or (Edit1.Text='') then
    begin
      ShowMessage('DEBE LLENAR TODOS LOS DATOS');
    end
    else
     begin
       with dm do
        begin
          Quser.ParamByName('Puser').AsString:=Edit1.Text;
          Quser.ParamByName('Ppass').AsString:=(Edit2.Text);
          Qcargoyunidad.ParamByName('Puser').AsString:=Edit1.Text;
          Quser.Execute;
          if (Quser.RecordCount>0) then
            begin
              Qcargoyunidad.Execute;
              USUARIO:=Edit1.Text;
              FPrincipal.usuario:=USUARIO;
              CARGO :=Qcargoyunidad.FieldValues['cargo'];
              UNIDAD:=Qcargoyunidad.FieldValues['unidad'];
              dpto:=Qcargoyunidad.FieldValues['dpto'];
              FPrincipal.DPTO:=dpto;
              FPrincipal.unidad:=UNIDAD;
              FPrincipal.cargo:=CARGO;

              if (Qcargoyunidad.FieldValues['cargo']='Usuario') then
              begin
                 FPrincipal.dxBarLargeButton1.Enabled:=False;
                 FPrincipal.dxBarLargeButton2.Enabled:=False;
                 FPrincipal.dxBarLargeButton6.Enabled:=False;
                 FPrincipal.dxBarLargeButton7.Enabled:=False;
                 FPrincipal.dxBarLargeButton8.Enabled:=False;
                 FPrincipal.dxBarLargeButton9.Enabled:=False;
                 FPrincipal.dxBarLargeButton10.Enabled:=False;
                 FPrincipal.dxBarLargeButton11.Enabled:=False;
              end;
              if (Qcargoyunidad.FieldValues['cargo']='Admin') then
              begin
                 FPrincipal.dxBarLargeButton7.Enabled:=False;
                 FPrincipal.dxBarLargeButton8.Enabled:=False;
                 FPrincipal.dxBarLargeButton9.Enabled:=False;
                 FPrincipal.dxBarLargeButton10.Enabled:=False;
                 FPrincipal.dxBarLargeButton11.Enabled:=False;
              end;
              if (Qcargoyunidad.FieldValues['cargo']='Super Admin')
              then
              begin
                // lo ve todo
              end;
              FPrincipal.Show;
              Flogin.Hide;

            end
          else
          begin
            ShowMessage('USTED NO ESTA AUTORIZADO');
            Edit2.Clear;
          end;
        end;
     end;
  end
  else
  begin
    ShowMessage('No se pudo conectar a la BD que esta en: '+varserver);
  end;
end;

procedure TFlogin.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    // conectandome a la bd
    try
      with DM.cibercafe do
      begin
       Username:='root';
       Password:='windowsxp';
       Server:=varserver;
       Database:=vardatabase;
       Port:=varport;
       Connect;

      end;
    except

    end;

    if DM.cibercafe.Connected = true then
    begin
      if (Edit2.Text='') or (Edit1.Text='') then
      begin
        ShowMessage('DEBE LLENAR TODOS LOS DATOS');
      end
      else
       begin
         with dm do
          begin
            Quser.ParamByName('Puser').AsString:=Edit1.Text;
            Quser.ParamByName('Ppass').AsString:=(Edit2.Text);
            Qcargoyunidad.ParamByName('Puser').AsString:=Edit1.Text;
            Quser.Execute;
            if (Quser.RecordCount>0) then
              begin
                Qcargoyunidad.Execute;
                USUARIO:=Edit1.Text;
                FPrincipal.usuario:=USUARIO;
                CARGO :=Qcargoyunidad.FieldValues['cargo'];
                UNIDAD:=Qcargoyunidad.FieldValues['unidad'];
                FPrincipal.unidad:=UNIDAD;
                FPrincipal.cargo:=CARGO;

                if (Qcargoyunidad.FieldValues['cargo']='Usuario') then
                begin
                   FPrincipal.dxBarLargeButton1.Enabled:=False;
                   FPrincipal.dxBarLargeButton2.Enabled:=False;
                   FPrincipal.dxBarLargeButton6.Enabled:=False;
                   FPrincipal.dxBarLargeButton7.Enabled:=False;
                   FPrincipal.dxBarLargeButton8.Enabled:=False;
                   FPrincipal.dxBarLargeButton9.Enabled:=False;
                   FPrincipal.dxBarLargeButton10.Enabled:=False;
                   FPrincipal.dxBarLargeButton11.Enabled:=False;
                end;
                if (Qcargoyunidad.FieldValues['cargo']='Admin') then
                begin
                   FPrincipal.dxBarLargeButton7.Enabled:=False;
                   FPrincipal.dxBarLargeButton8.Enabled:=False;
                   FPrincipal.dxBarLargeButton9.Enabled:=False;
                   FPrincipal.dxBarLargeButton10.Enabled:=False;
                   FPrincipal.dxBarLargeButton11.Enabled:=False;
                end;
                if (Qcargoyunidad.FieldValues['cargo']='Super Admin')
                then
                begin
                  // lo ve todo
                end;
                FPrincipal.Show;
                Flogin.Hide;

              end
            else
            begin
              ShowMessage('USTED NO ESTA AUTORIZADO');
              Edit2.Clear;
            end;
          end;
       end;
    end
    else
    begin
      ShowMessage('No se pudo conectar a la BD que esta en: '+varserver);
    end;
  end;
end;

procedure TFlogin.FormShow(Sender: TObject);
var
 name:string;
 ini:TIniFile;

begin
  dxSkinController1.SkinName:='Coffee';
  //login:=False;
  Edit2.SetFocus;
  try
    name:=Copy(Application.ExeName,0,Length(Application.ExeName)-3)+'ini';
    INI := TIniFile.Create(name);
    if ini.SectionExists('cibercafe') then
    begin
      try
        varserver := INI.ReadString('cibercafe','Server','') ;
        vardatabase := INI.ReadString('cibercafe','Database','') ;
        varport := INI.ReadInteger('cibercafe','Port',3306);
      except
       ini.Free;
      end;
    end;
    ini.Free;
  except
    ShowMessage('Error al conectarse a la BD');
    Application.Terminate;
  end;
end;

end.
