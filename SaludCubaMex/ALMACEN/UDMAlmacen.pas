unit UDMAlmacen;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni;

type
  TFDMAlmacen = class(TDataModule)
    QAgregarProdAlmacen: TUniQuery;
    QProduct_venc_Almac: TUniQuery;
    QProduct_venc_AlmacCODIGO: TIntegerField;
    QProduct_venc_AlmacCODIGO_PRODUCTO: TIntegerField;
    QProduct_venc_AlmacNOMBRE: TStringField;
    QProduct_venc_AlmacLOTE: TStringField;
    QProduct_venc_AlmacEXISTENCIA: TIntegerField;
    QProduct_venc_AlmacFECHA_DE_VENCIMIENTO: TDateField;
    QInsertarProducVencAlmac: TUniQuery;
    QUpdateProducVencAlmac: TUniQuery;
    QProducFecha: TUniQuery;
    QProducFechaCODIGO: TIntegerField;
    QProducFechaCODIGO_PRODUCTO: TIntegerField;
    QProducFechaNOMBRE: TStringField;
    QProducFechaLOTE: TStringField;
    QProducFechaPRESENTACION: TStringField;
    QProducFechaLABORATORIO: TStringField;
    QProducFechaPROVEEDOR: TStringField;
    QProducFechaEXISTENCIA: TIntegerField;
    QProducFechaFECHA_DE_VENCIMIENTO: TDateField;
    DSQProducFecha: TUniDataSource;
    QBuscarProd: TUniQuery;
    QBuscarProdCODIGO: TIntegerField;
    QBuscarProdCODIGO_PRODUCTO: TIntegerField;
    QBuscarProdNOMBRE: TStringField;
    QBuscarProdLOTE: TStringField;
    QBuscarProdPRESENTACION: TStringField;
    QBuscarProdLABORATORIO: TStringField;
    QBuscarProdPROVEEDOR: TStringField;
    QBuscarProdEXISTENCIA: TIntegerField;
    QBuscarProdFECHA_DE_VENCIMIENTO: TDateField;
    QBuscarProdPRECIO_VENTA_POR_UNIDAD: TIntegerField;
    QBuscarProdPRECIO_COSTO_POR_UNIDAD: TIntegerField;
    DSBuscarProd: TUniDataSource;
    DS1: TUniDataSource;
    Q1: TUniQuery;
    Q1NOMBRE: TStringField;
    DS2: TUniDataSource;
    Q2: TUniQuery;
    StringField15: TStringField;
    DS3: TUniDataSource;
    Q3: TUniQuery;
    Q3proveedor: TStringField;
    DS4: TUniDataSource;
    Q4: TUniQuery;
    Q4lote: TStringField;
    DSProd_Venc_Todos: TUniDataSource;
    QProd_Venc_Todos: TUniQuery;
    QProd_Venc_TodosCODIGO: TIntegerField;
    QProd_Venc_TodosCODIGO_PRODUCTO: TIntegerField;
    StringField3: TStringField;
    QProd_Venc_TodosLOTE: TStringField;
    QProd_Venc_TodosPRESENTACION: TStringField;
    QProd_Venc_TodosLABORATORIO: TStringField;
    QProd_Venc_TodosPROVEEDOR: TStringField;
    QProd_Venc_TodosEXISTENCIA: TIntegerField;
    QProd_Venc_TodosFECHA_DE_VENCIMIENTO: TDateField;
    QProd_Venc_TodosPRECIO_VENTA_POR_UNIDAD: TIntegerField;
    QProd_Venc_TodosPRECIO_COSTO_POR_UNIDAD: TIntegerField;
    DSUltimoA: TUniDataSource;
    QUltimoA: TUniQuery;
    QUltimoACODIGO: TIntegerField;
    QUltimoACODIGO_PRODUCTO: TIntegerField;
    QUltimoANOMBRE: TStringField;
    QUltimoATIPO: TStringField;
    QUltimoAENTRADA: TIntegerField;
    QUltimoAFECHA_DE_ENTRADA: TDateField;
    QUltimoASALIDA: TIntegerField;
    QUltimoAFECHA_DE_SALIDA: TDateField;
    QUltimoAEXISTENCIA: TIntegerField;
    QUltimoAPRECIO_COSTO_POR_UNIDAD: TIntegerField;
    QUltimoAPRECIO_VENTA_POR_UNIDAD: TIntegerField;
    QUltimoAULTIMO_REG: TIntegerField;
    QUpdateAlmacen: TUniQuery;
    QCODIGO_MED: TUniQuery;
    QCODIGO_INSU: TUniQuery;
    QTIPO: TUniQuery;
    DSUltimoF: TUniDataSource;
    QUltimoF: TUniQuery;
    QUpdateAlmacenF: TUniQuery;
    QAgregarProdFarmacia: TUniQuery;
    QProd_Venc_TodosTIPO: TStringField;
    QProduc_Venc_Farm: TUniQuery;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField11: TIntegerField;
    DateField3: TDateField;
    QUpdateProducVencFarm: TUniQuery;
    QInsertarProducVencFarm: TUniQuery;
    QUltimoFCODIGO: TIntegerField;
    QUltimoFCODIGO_MEDICAMENTO: TIntegerField;
    QUltimoFNOMBRE: TStringField;
    QUltimoFLOTE: TStringField;
    QUltimoFPRESENTACION: TStringField;
    QUltimoFLABORATORIO: TStringField;
    QUltimoFPROVEEDOR: TStringField;
    QUltimoFENTRADA: TIntegerField;
    QUltimoFFECHA_DE_ENTRADA: TDateField;
    QUltimoFSALIDA: TIntegerField;
    QUltimoFFECHA_DE_SALIDA: TDateField;
    QUltimoFEXISTENCIA: TIntegerField;
    QUltimoFPRECIO_VENTA_POR_UNIDAD: TIntegerField;
    QUltimoFFECHA_DE_VENCIMIENTO: TDateField;
    QUltimoFULTIMO_REG: TIntegerField;
    DSQAlmacenTodosUltimo: TUniDataSource;
    QAlmacenTodosUltimo: TUniQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField3: TIntegerField;
    DateField1: TDateField;
    IntegerField4: TIntegerField;
    DateField2: TDateField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    QAlmacenTodosUltimoPROVEEDOR: TStringField;
    QAlmacenTodosUltimoPRESENTACION: TStringField;
    QAlmacenTodosUltimoLABORATORIO: TStringField;
    QAlmacenTodosUltimoLOTE: TStringField;
    QAlmacenTodosUltimoFECHA_DE_VENCIMIENTO: TDateField;
    QUpdateProducVencAlmacResta: TUniQuery;
    QUpdateAlmacenResta: TUniQuery;
    QAlmacen6Meses: TUniQuery;
    QAlmacen6MesesCODIGO: TIntegerField;
    QAlmacen6MesesCODIGO_PRODUCTO: TIntegerField;
    QAlmacen6MesesNOMBRE: TStringField;
    QAlmacen6MesesTIPO: TStringField;
    QAlmacen6MesesPROVEEDOR: TStringField;
    QAlmacen6MesesPRESENTACION: TStringField;
    QAlmacen6MesesLABORATORIO: TStringField;
    QAlmacen6MesesLOTE: TStringField;
    QAlmacen6MesesENTRADA: TIntegerField;
    QAlmacen6MesesFECHA_DE_ENTRADA: TDateField;
    QAlmacen6MesesSALIDA: TIntegerField;
    QAlmacen6MesesFECHA_DE_SALIDA: TDateField;
    QAlmacen6MesesPRECIO_COSTO_POR_UNIDAD: TIntegerField;
    QAlmacen6MesesPRECIO_VENTA_POR_UNIDAD: TIntegerField;
    QAlmacen6MesesFECHA_DE_VENCIMIENTO: TDateField;
    QAlmacen6MesesFECHA_DE_LA_OPERACION: TDateField;
    QAgregarProdAlmacenHistorial: TUniQuery;
    QAlmacen6MesesOPERACION: TStringField;
    QEliminarRegistro: TUniQuery;
    QAlmacenTodosUltimoOPERACION: TStringField;
    QAlmacenTodosUltimoFECHA_DE_LA_OPERACION: TDateField;
    QEliminarRegistroF: TUniQuery;
    QBuscarExistencia: TUniQuery;
    QBuscarExistenciaENTRADA: TIntegerField;
    QBuscarExistenciaSALIDA: TIntegerField;
    QProduct_venc_AlmacCODIGO_ALMACEN: TIntegerField;
    QProduct_venc_AlmacTIPO: TStringField;
    QProduct_venc_AlmacPROVEEDOR: TStringField;
    QProduct_venc_AlmacPRESENTACION: TStringField;
    QProduct_venc_AlmacLABORATORIO: TStringField;
    QProduct_venc_AlmacPRECIO_VENTA_POR_UNIDAD: TIntegerField;
    QProduct_venc_AlmacPRECIO_COSTO_POR_UNIDAD: TIntegerField;
    QBuscarProdTIPO: TStringField;
    DSAlmacenHistoricos: TUniDataSource;
    QAlmacenHistoricos: TUniQuery;
    QAlmacenHistoricosCODIGO: TIntegerField;
    QAlmacenHistoricosCODIGO_PRODUCTO: TIntegerField;
    QAlmacenHistoricosNOMBRE: TStringField;
    QAlmacenHistoricosTIPO: TStringField;
    QAlmacenHistoricosPROVEEDOR: TStringField;
    QAlmacenHistoricosPRESENTACION: TStringField;
    QAlmacenHistoricosLABORATORIO: TStringField;
    QAlmacenHistoricosLOTE: TStringField;
    QAlmacenHistoricosENTRADA: TIntegerField;
    QAlmacenHistoricosFECHA_DE_ENTRADA: TDateField;
    QAlmacenHistoricosSALIDA: TIntegerField;
    QAlmacenHistoricosFECHA_DE_SALIDA: TDateField;
    QAlmacenHistoricosPRECIO_COSTO_POR_UNIDAD: TIntegerField;
    QAlmacenHistoricosPRECIO_VENTA_POR_UNIDAD: TIntegerField;
    QAlmacenHistoricosFECHA_DE_VENCIMIENTO: TDateField;
    QAlmacenHistoricosOPERACION: TStringField;
    QAlmacenHistoricosFECHA_DE_LA_OPERACION: TDateField;
    QAgregarProdConsulta: TUniQuery;
    QProduc_Venc_Cons: TUniQuery;
    QInsertarProducVencCons: TUniQuery;
    QProduc_Venc_ConsCODIGO: TIntegerField;
    QProduc_Venc_ConsCODIGO_PRODUCTO: TIntegerField;
    QProduc_Venc_ConsNOMBRE: TStringField;
    QProduc_Venc_ConsTIPO: TStringField;
    QProduc_Venc_ConsPROVEEDOR: TStringField;
    QProduc_Venc_ConsPRECIO_VENTA_POR_UNIDAD: TIntegerField;
    QProduc_Venc_ConsPRECIO_COSTO_POR_UNIDAD: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDMAlmacen: TFDMAlmacen;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
 USES UDM1;
end.

