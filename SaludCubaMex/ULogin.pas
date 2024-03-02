unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxButtons, dxSkinsForm, cxControls, cxContainer, cxEdit,
  cxLabel, cxTextEdit, cxMaskEdit, dxGDIPlusClasses, Vcl.ExtCtrls,
  dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, cxClasses, cxImage,
  dxSkinTheBezier;

type
  TFLogin = class(TForm)
    cxButton1: TcxButton;
    dxSkinCont: TdxSkinController;
    cxMaskEdit1: TcxMaskEdit;
    cxMaskEdit2: TcxMaskEdit;
    cxButton2: TcxButton;
    Image1: TImage;
    img1: TImage;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    procedure conectarme;
    procedure CrearFormas;
    procedure cxButton2Click(Sender: TObject);
    procedure cxMaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure cxButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    USUARIO, CARGO, NOMBRE_COMPLETO: string;
    LOGIN: Boolean;
  end;

var
  FLogin: TFLogin;

implementation

uses Umain, UDM1, UDMusuarios, System.IniFiles, Ucalculadora, UEstadisticas,
  UAlmacenAgregar, UFarmaciaBuscar, UUsuariosCrear, UUsuariosEliminar,
  UUsuariosModificar, UFarmaciaVender, UAlmacenMover, UDMCodificadores,
  UDMFarmacia, UDMAlmacen, UAlmacenBuscar, UagendarCita, UDMCitas,
  UModificarCita, Ucodificadores, UCod_Lab_Prov, UCod_Servicios,
  UCod_Medicamentos, UCod_Doctores, UEntradasSalidasFarmacia,
  UAlmacenHistoricos, UFarmaciaHistoricos, UCitasHistoricos, UNuevoPaciente,
  UDMPacientes, UBuscarPaciente, UCrearReceta, ULaboratorios, UConsultas,
  UHistoriaClinica, UConsultasVender, UMoverHist,
  UInsumosHistoricos, UEntradaSalidaInsumos, UEntradasSalidasAlmacen,
  UInsumosBuscar, UDMEstadisticas, UVentasHist, UBuscarCitas,
  UCobroServicios, ULabResult, UModificarPaciente, UMostrarUsuarios;
{$R *.dfm}

procedure TFLogin.conectarme;
var
  fichero: string;
  ini: TIniFile;
  varserver, vardatabase: string;
  varport: Integer;
begin
  try
    fichero := ExtractFilePath(Application.ExeName) + 'Configuracion.ini';
    if FileExists(fichero) then
    begin
      ini := TIniFile.Create(fichero);

      if ini.SectionExists('BD') then
      begin
        try
          varserver := ini.ReadString('BD', 'Server', '');
          vardatabase := ini.ReadString('BD', 'Database', '');
          varport := ini.ReadInteger('BD', 'Port', 3306);

          with FDM1.UniConnection1 do
          begin
            Username := 'mama';
            Password := 'mama';
            Server := varserver;
            Database := vardatabase;
            Port := varport;


            //ShowMessage(UserName +' '+password+' '+Server+' '+database+' '+inttostr(Port));
            Connect;

            LOGIN:=True;
          end;
        except
         ShowMessage('ERROR AL CONECTARSE A LA BASE DE DATOS');
         Application.Terminate;
        end;
      end;

      ini.Free;
    end
    else
    begin
      ShowMessage('NO EXISTE EL FICHERO CONFIGURACION.INI"');
      Application.Terminate;
    end;
  except
   // ShowMessage('ERROR AL CONECTARSE A LA BASE DE DATOS');
   // Application.Terminate;
  end;
end;

procedure TFLogin.CrearFormas;
begin
  Application.CreateForm(TFDMUsuarios, FDMUsuarios);
  Application.CreateForm(TFDMCodificadores, FDMCodificadores);
  Application.CreateForm(TFDMFarmacia, FDMFarmacia);
  Application.CreateForm(TFDMAlmacen, FDMAlmacen);
  Application.CreateForm(TFDMPacientes, FDMPacientes);
  Application.CreateForm(TFDMEstadisticas, FDMEstadisticas);
  Application.CreateForm(TFDMCitas, FDMCitas);

  Application.CreateForm(TFcalculadora, Fcalculadora);
  Application.CreateForm(TFEstadisticas, FEstadisticas);
  Application.CreateForm(TFAlmacenAgregar, FAlmacenAgregar);
  Application.CreateForm(TFFarmaciaBuscar, FFarmaciaBuscar);
  Application.CreateForm(TFUsuariosCrear, FUsuariosCrear);
  Application.CreateForm(TFUsuariosEliminar, FUsuariosEliminar);
  Application.CreateForm(TFUsuariosModificar, FUsuariosModificar);
  Application.CreateForm(TFFarmaciaVender, FFarmaciaVender);
  Application.CreateForm(TFAlmacenMover, FAlmacenMover);
  Application.CreateForm(TFAlmacenBuscar, FAlmacenBuscar);
  Application.CreateForm(TFAgendarCita, FAgendarCita);

  Application.CreateForm(TFModificarCita, FModificarCita);
  Application.CreateForm(TFCodificadores, FCodificadores);
  Application.CreateForm(TFCOD_LAB_PROV, FCOD_LAB_PROV);
  Application.CreateForm(TFCod_Servicios, FCod_Servicios);
  Application.CreateForm(TFCod_Medicamentos, FCod_Medicamentos);
  Application.CreateForm(TFCod_Doctores, FCod_Doctores);
  Application.CreateForm(TFEntradasSalidasFarmacia, FEntradasSalidasFarmacia);
  Application.CreateForm(TFAlmacenHistoricos, FAlmacenHistoricos);
  Application.CreateForm(TFFarmaciaHistoricos, FFarmaciaHistoricos);
  Application.CreateForm(TFCitasHistoricos, FCitasHistoricos);
  Application.CreateForm(TFNuevoPaciente, FNuevoPaciente);
  Application.CreateForm(TFBuscarPaciente, FBuscarPaciente);
  Application.CreateForm(TFCrearReceta, FCrearReceta);
  Application.CreateForm(TFLaboratorios, FLaboratorios);
  Application.CreateForm(TFConsultas, FConsultas);
  Application.CreateForm(TFHistoriaClinica, FHistoriaClinica);
  Application.CreateForm(TFConsultasVender, FConsultasVender);
  Application.CreateForm(TFMoverHist, FMoverHist);
  Application.CreateForm(TFInsumosHistoricos, FInsumosHistoricos);
  Application.CreateForm(TFEntradaSalidaInsumos, FEntradaSalidaInsumos);
  Application.CreateForm(TFEntradasSalidasAlmacen, FEntradasSalidasAlmacen);
  Application.CreateForm(TFInsumosBuscar, FInsumosBuscar);
  Application.CreateForm(TFVentasHist, FVentasHist);
  Application.CreateForm(TFBuscarCita, FBuscarCita);
  Application.CreateForm(TFCobroServicios, FCobroServicios);
  Application.CreateForm(TFLabResult, FLabResult);
  Application.CreateForm(TFModificarPaciente, FModificarPaciente);
  Application.CreateForm(TFMostrarUsuarios, FMostrarUsuarios);
end;

procedure TFLogin.cxButton1Click(Sender: TObject);
begin
  if (cxMaskEdit1.Text = '') or (cxMaskEdit2.Text = '') then
  begin
    ShowMessage('DEBE LLENAR TODOS LOS CAMPOS');
  end
  else
  begin
    CrearFormas;

    try
      Conectarme;
    except
        ShowMessage('No se pudo conectar a la BD');
    end;


    with FDMusuarios do
    begin
      Quser.ParamByName('Puser').AsString := cxMaskEdit1.Text;
      Quser.ParamByName('Ppass').AsString := cxMaskEdit2.Text;
      // Qcargo.ParamByName('Puser').AsString:=cxMaskEdit2.Text;
      Quser.Execute;
      if (Quser.RecordCount > 0) then
      begin
        LOGIN := True;

        USUARIO := Quser.FieldValues['Usuario'];
        CARGO := Quser.FieldValues['Cargo'];
        NOMBRE_COMPLETO := Quser.FieldValues['NOMBRECOMPLETO'];

        FLogin.Hide;
        FMain.ShowModal;
      end
      else
      begin
        ShowMessage('USTED NO ESTA AUTORIZADO');
        cxMaskEdit1.Clear;
        cxMaskEdit2.Clear;
        cxMaskEdit1.SetFocus;
        LOGIN := False;
      end;
    end;
  end;
end;

procedure TFLogin.cxButton2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFLogin.cxMaskEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if (cxMaskEdit1.Text = '') or (cxMaskEdit2.Text = '') then
    begin
      ShowMessage('DEBE LLENAR TODOS LOS CAMPOS');
    end
    else
    begin

      CrearFormas;

      try
        Conectarme;
      except
          ShowMessage('No se pudo conectar a la BD');
      end;

      with FDMusuarios do
      begin
        Quser.ParamByName('Puser').AsString := cxMaskEdit1.Text;
        Quser.ParamByName('Ppass').AsString := cxMaskEdit2.Text;
        // Qcargo.ParamByName('Puser').AsString:=cxMaskEdit2.Text;
        Quser.Execute;
        if (Quser.RecordCount > 0) then
        begin
          LOGIN := True;

          USUARIO := cxMaskEdit1.Text;
          NOMBRE_COMPLETO := Quser.FieldValues['NOMBRECOMPLETO'];
          CARGO := Quser.FieldValues['cargo'];


          FLogin.Hide;
          FMain.ShowModal;
        end
        else
        begin
          ShowMessage('USTED NO ESTA AUTORIZADO');
          cxMaskEdit1.Clear;
          cxMaskEdit2.Clear;
          cxMaskEdit1.SetFocus;
          LOGIN := False;
        end;
      end;
    end;
  end;

end;

procedure TFLogin.FormActivate(Sender: TObject);
begin
  cxMaskEdit1.SetFocus;
end;

end.



