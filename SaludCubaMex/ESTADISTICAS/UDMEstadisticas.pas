unit UDMEstadisticas;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS;

type
  TFDMEstadisticas = class(TDataModule)
    QEstadisticas: TUniQuery;
    DSEstadisticas: TUniDataSource;
    QVentas6Meses: TUniQuery;
    QEliminarRegistro: TUniQuery;
    QAgregarProdVentasHistorial: TUniQuery;
    QVentas6MesesCODIGO: TIntegerField;
    QVentas6MesesCODIGO_PRODUCTO: TIntegerField;
    QVentas6MesesNOMBRE: TStringField;
    QVentas6MesesTIPO: TStringField;
    QVentas6MesesPROVEEDOR: TStringField;
    QVentas6MesesPRESENTACION: TStringField;
    QVentas6MesesLABORATORIO: TStringField;
    QVentas6MesesLOTE: TStringField;
    QVentas6MesesFECHA_DE_VENCIMIENTO: TDateField;
    QVentas6MesesPRECIO_COSTO_POR_UNIDAD: TIntegerField;
    QVentas6MesesPRECIO_VENTA_POR_UNIDAD: TIntegerField;
    QVentas6MesesCANTIDAD_VENDIDO: TIntegerField;
    QVentas6MesesPRECIO_TOTAL: TIntegerField;
    QVentas6MesesFECHA_DE_VENTA: TDateField;
    QVentas6MesesHORA_DE_VENTA: TTimeField;
    QVentas6MesesVENDEDOR: TStringField;
    QVentasHist: TUniQuery;
    DSVentasHist: TUniDataSource;
    QVentasHistCODIGO: TIntegerField;
    QVentasHistCODIGO_PRODUCTO: TIntegerField;
    QVentasHistNOMBRE: TStringField;
    QVentasHistTIPO: TStringField;
    QVentasHistPROVEEDOR: TStringField;
    QVentasHistPRESENTACION: TStringField;
    QVentasHistLABORATORIO: TStringField;
    QVentasHistLOTE: TStringField;
    QVentasHistFECHA_DE_VENCIMIENTO: TDateField;
    QVentasHistPRECIO_COSTO_POR_UNIDAD: TIntegerField;
    QVentasHistPRECIO_VENTA_POR_UNIDAD: TIntegerField;
    QVentasHistCANTIDAD_VENDIDO: TIntegerField;
    QVentasHistPRECIO_TOTAL: TIntegerField;
    QVentasHistFECHA_DE_VENTA: TDateField;
    QVentasHistHORA_DE_VENTA: TTimeField;
    QVentasHistVENDEDOR: TStringField;
    QEstadisticasID: TIntegerField;
    QEstadisticasNOMBRE: TStringField;
    QEstadisticasPRIMER_APELLIDO: TStringField;
    QEstadisticasSEGUNDO_APELLIDO: TStringField;
    QEstadisticasPRECIO: TIntegerField;
    QEstadisticasIMPUESTO_CLINICA: TIntegerField;
    QEstadisticasFECHA: TDateField;
    QEstadisticasMEDICO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDMEstadisticas: TFDMEstadisticas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
 USES UDM1;

end.
