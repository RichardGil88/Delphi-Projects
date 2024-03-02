unit UnitDataModule1;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS, UniProvider,
  MySQLUniProvider;

type
  TDataModule1 = class(TDataModule)
    ConeccionMySql: TUniConnection;
    Qlogin: TUniQuery;
    MySQLUniProvider1: TMySQLUniProvider;
    QloginUsuario: TStringField;
    QloginContraseña: TStringField;
    QDepartamentos: TUniQuery;
    QDepartamentosDepartamentos: TStringField;
    DSDepartamentos: TUniDataSource;
    QInsertarUsuario: TUniQuery;
    QUsuarios: TUniQuery;
    DSUsuarios: TUniDataSource;
    QPreguntarPorCredencial: TUniQuery;
    QInsertarRegistro: TUniQuery;
    QUltimos5: TUniQuery;
    QUltimos5Id: TIntegerField;
    QUltimos5Nombre: TStringField;
    QUltimos5Credencial: TStringField;
    QUltimos5Fecha: TDateField;
    QUltimos5Hora: TTimeField;
    QUltimos5Departamento: TStringField;
    DSUltimos5: TUniDataSource;
    QCantidadComidasHoy: TUniQuery;
    Qhorarios: TUniQuery;
    QhorariosId: TIntegerField;
    QhorariosTipo: TStringField;
    QhorariosHoraInicio: TTimeField;
    QhorariosHoraFin: TTimeField;
    QComidasHoy: TUniQuery;
    QCantidadClientes: TUniQuery;
    QUsuariosPorNombre: TUniQuery;
    QUsuariosPorCredencial: TUniQuery;
    QReporte: TUniQuery;
    DSReporte: TUniDataSource;
    QReporteId: TIntegerField;
    QReporteNombre: TStringField;
    QReporteCredencial: TStringField;
    QReporteFecha: TDateField;
    QReporteHora: TTimeField;
    QReporteDepartamento: TStringField;
    QReporteTipo: TStringField;
    QUsuariosId: TIntegerField;
    QUsuariosNombres: TStringField;
    QUsuariosCredencial: TStringField;
    QUsuariosDepartamento: TStringField;
    QUsuariosTelefono1: TStringField;
    QUsuariosExtension: TStringField;
    QUsuariosAccesoComedor: TStringField;
    QUsuariosStatus: TIntegerField;
    QUsuariosCantidadComidas: TIntegerField;
    QUsuariosPorCredencialId: TIntegerField;
    QUsuariosPorCredencialNombres: TStringField;
    QUsuariosPorCredencialCredencial: TStringField;
    QUsuariosPorCredencialDepartamento: TStringField;
    QUsuariosPorCredencialTelefono1: TStringField;
    QUsuariosPorCredencialExtension: TStringField;
    QUsuariosPorCredencialAccesoComedor: TStringField;
    QUsuariosPorCredencialStatus: TIntegerField;
    QUsuariosPorCredencialCantidadComidas: TIntegerField;
    QUsuariosPorNombreId: TIntegerField;
    QUsuariosPorNombreNombres: TStringField;
    QUsuariosPorNombreCredencial: TStringField;
    QUsuariosPorNombreDepartamento: TStringField;
    QUsuariosPorNombreTelefono1: TStringField;
    QUsuariosPorNombreExtension: TStringField;
    QUsuariosPorNombreAccesoComedor: TStringField;
    QUsuariosPorNombreStatus: TIntegerField;
    QUsuariosPorNombreCantidadComidas: TIntegerField;
    QloginId: TIntegerField;
    QloginPerfil: TStringField;
    QUsuariosSistema: TUniQuery;
    QFechaDemo: TUniQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    QEditarUsuario: TUniQuery;
    QBuscarUsuario: TUniQuery;
    DSBuscarUsuario: TUniDataSource;
    DSUsuariosSistema: TUniDataSource;
    QUsuariosSistemaId: TIntegerField;
    QUsuariosSistemaUsuario: TStringField;
    QUsuariosSistemaContraseña: TStringField;
    QUsuariosSistemaPerfil: TStringField;
    QEliminarUsuarioSistema: TUniQuery;
    QPerfiles: TUniQuery;
    DSPerfiles: TUniDataSource;
    QInsertarUsuarioSistema: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
