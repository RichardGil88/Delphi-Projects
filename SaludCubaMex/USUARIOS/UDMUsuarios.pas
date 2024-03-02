unit UDMUsuarios;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni;

type
  TFDMUsuarios = class(TDataModule)
    DSuser: TUniDataSource;
    Quser: TUniQuery;
    DSuser2: TUniDataSource;
    DSinsertarusuario: TUniDataSource;
    Quser2: TUniQuery;
    DSmospass: TUniDataSource;
    Qmodpass: TUniQuery;
    Qinsertarusuario: TUniQuery;
    Qlistcargoadm: TUniQuery;
    DSlistcargoadm: TUniDataSource;
    Quser1: TUniQuery;
    DSuser1: TUniDataSource;
    DSeliminaruser: TUniDataSource;
    Qeliminaruser: TUniQuery;
    DSMostrarUsuarios: TUniDataSource;
    QMostrarUsuarios: TUniQuery;
    QMostrarUsuariosCODIGO: TIntegerField;
    QMostrarUsuariosNOMBRECOMPLETO: TStringField;
    QMostrarUsuariosUSUARIO: TStringField;
    QMostrarUsuariosCONTRASEÑA: TStringField;
    QMostrarUsuariosCARGO: TStringField;
    QMostrarUsuariosFECHA_CREADO: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDMUsuarios: TFDMUsuarios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
 uses UDM1;
end.
