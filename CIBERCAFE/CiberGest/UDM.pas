unit UDM;

interface

uses
  SysUtils, Classes, UniProvider, MySQLUniProvider, DB, Uni, DBAccess, MemDS;

type
  TDM = class(TDataModule)
    Qinsertarusuario: TUniQuery;
    DSQmodcargo: TUniDataSource;
    DScargoyunidad: TUniDataSource;
    Qmodcargo: TUniQuery;
    UniSQL1: TUniSQL;
    DSuser: TUniDataSource;
    Qcargoyunidad: TUniQuery;
    Quser: TUniQuery;
    cibercafe: TUniConnection;
    DSmospass: TUniDataSource;
    Qmodpass: TUniQuery;
    DSusuarios: TUniDataSource;
    Tusuarios: TUniTable;
    Tusuariosusuario: TStringField;
    DSeliminaruser: TUniDataSource;
    Qeliminaruser: TUniQuery;
    DSQlistunidadadm: TUniDataSource;
    Qlistunidadadm: TUniQuery;
    DSlistcargoadm: TUniDataSource;
    Qlistcargoadm: TUniQuery;
    DSinsertarusuario: TUniDataSource;
    DSuser1: TUniDataSource;
    Quser1: TUniQuery;
    MySQLUniProvider1: TMySQLUniProvider;
    Quserusuario: TStringField;
    Qusercontraseña: TStringField;
    Qchequeos1: TUniQuery;
    DSQchequeos1: TUniDataSource;
    Qusuarios: TUniQuery;
    DSQusuarios: TUniDataSource;
    QChequeoUsuario: TUniQuery;
    DSQChequeoUsuario: TUniDataSource;
    QcontenidoUsuario: TUniQuery;
    DSQcontenidoUsuario: TUniDataSource;
    Qasignacion: TUniQuery;
    DSQasignacion: TUniDataSource;
    QChequeoUsuariousuario: TStringField;
    Qusuariosusuario: TStringField;
    Qasignacionpcname: TStringField;
    QinsertarMaquina: TUniQuery;
    Qmaquinas: TUniQuery;
    DSQmaquinas: TUniDataSource;
    Qprocesado: TUniQuery;
    StringField2: TStringField;
    QcontenidoSuperAdmin: TUniQuery;
    DSQcontenidoSuperAdmin: TUniDataSource;
    QcontenidoAdmin: TUniQuery;
    DSQcontenidoAdmin: TUniDataSource;
    QConservar: TUniQuery;
    StringField8: TStringField;
    Qeliminar: TUniQuery;
    QcontenidoAdminidtx: TLargeintField;
    QcontenidoAdminPcName: TStringField;
    QcontenidoAdminUserName: TStringField;
    QcontenidoAdminCarpeta: TStringField;
    QcontenidoAdminFichero: TStringField;
    QcontenidoAdminFecha: TDateField;
    QcontenidoAdminHora: TTimeField;
    QcontenidoAdminTipo: TStringField;
    QcontenidoAdminExtencion: TStringField;
    QcontenidoAdminProcesado: TSmallintField;
    QcontenidoAdminConservar: TSmallintField;
    QInsertarChequeo: TUniQuery;
    LargeintField1: TLargeintField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateTimeField1: TDateTimeField;
    SmallintField1: TSmallintField;
    StringField5: TStringField;
    StringField6: TStringField;
    SmallintField2: TSmallintField;
    Qdptos: TUniQuery;
    DSQdptos: TUniDataSource;
    QChequeos: TUniQuery;
    DSQChequeos: TUniDataSource;
    QChequeosIdChequeo: TLongWordField;
    QChequeosChequeo: TStringField;
    QChequeosFechaHora: TDateTimeField;
    QChequeosUsuario: TStringField;
    QChequeosDpto: TStringField;
    QChequeosActivo: TShortintField;
    Qcargoyunidadcargo: TStringField;
    Qcargoyunidadunidad: TStringField;
    Qcargoyunidaddpto: TStringField;
    QChequeosUnidad: TStringField;
    Qusuarioscontraseña: TStringField;
    Qusuarioscargo: TStringField;
    QusuariosDpto: TStringField;
    Qusuariosunidad: TStringField;
    Qchequeos1chequeo: TStringField;
    QChequeoUsuarioChequeo: TStringField;
    QChequeoUsuarioIdAsociacion: TLongWordField;
    QPreguntar: TUniQuery;
    QcontenidoUsuarioIdContenido: TLongWordField;
    QcontenidoUsuarioNombre_PC: TStringField;
    QcontenidoUsuarioChequeo: TStringField;
    QcontenidoUsuarioCarpeta: TStringField;
    QcontenidoUsuarioFichero: TStringField;
    QcontenidoUsuarioFecha: TDateField;
    QcontenidoUsuarioHora: TTimeField;
    QcontenidoUsuarioTipo: TStringField;
    QcontenidoUsuarioExtencion: TStringField;
    QcontenidoUsuarioProcesado: TShortintField;
    QcontenidoUsuarioConservar: TShortintField;
    QcontenidoSuperAdminIdContenido: TLongWordField;
    QcontenidoSuperAdminNombre_PC: TStringField;
    QcontenidoSuperAdminChequeo: TStringField;
    QcontenidoSuperAdminCarpeta: TStringField;
    QcontenidoSuperAdminFichero: TStringField;
    QcontenidoSuperAdminFecha: TDateField;
    QcontenidoSuperAdminHora: TTimeField;
    QcontenidoSuperAdminTipo: TStringField;
    QcontenidoSuperAdminExtencion: TStringField;
    QcontenidoSuperAdminProcesado: TShortintField;
    QcontenidoSuperAdminConservar: TShortintField;
    QmaquinasidMaquina: TLongWordField;
    QmaquinasNombre_PC: TStringField;
    QmaquinasProvincia: TStringField;
    QmaquinasMunicipio: TStringField;
    QmaquinasNombre_CiberCafe: TStringField;
    QmaquinasUbicacion: TStringField;
    QEliminarMaquina: TUniQuery;
    LongWordField1: TLongWordField;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    StringField7: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    Qmaquinascombo: TUniQuery;
    DSQmaquinascombo: TUniDataSource;
    QmaquinascomboNombre_PC: TStringField;
    QUpdateMaquinas: TUniQuery;
    QmaquinasIP: TStringField;
    Quser1usuario: TStringField;
    DSQcargos: TUniDataSource;
    Qcargos: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
