object FDMEstadisticas: TFDMEstadisticas
  OldCreateOrder = False
  Height = 587
  Width = 908
  object QEstadisticas: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM `venta_estadisticas` '
      'WHERE `venta_estadisticas`.`FECHA` >= :FECHADESDE AND'
      '      `venta_estadisticas`.`FECHA` <= :FECHAHASTA ;'
      '')
    Left = 104
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FECHADESDE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHAHASTA'
        Value = nil
      end>
    object QEstadisticasID: TIntegerField
      FieldName = 'ID'
    end
    object QEstadisticasNOMBRE: TStringField
      FieldName = 'NOMBRE'
    end
    object QEstadisticasPRIMER_APELLIDO: TStringField
      FieldName = 'PRIMER_APELLIDO'
    end
    object QEstadisticasSEGUNDO_APELLIDO: TStringField
      FieldName = 'SEGUNDO_APELLIDO'
    end
    object QEstadisticasPRECIO: TIntegerField
      FieldName = 'PRECIO'
    end
    object QEstadisticasIMPUESTO_CLINICA: TIntegerField
      FieldName = 'IMPUESTO_CLINICA'
    end
    object QEstadisticasFECHA: TDateField
      FieldName = 'FECHA'
    end
    object QEstadisticasMEDICO: TStringField
      FieldName = 'MEDICO'
      Size = 100
    end
  end
  object DSEstadisticas: TUniDataSource
    DataSet = QEstadisticas
    Left = 104
    Top = 104
  end
  object QVentas6Meses: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM `VENTA_DE_productos` '
      'WHERE `VENTA_DE_productos`.`FECHA_DE_VENTA` <= :FECHA ;')
    Left = 226
    Top = 45
    ParamData = <
      item
        DataType = ftDate
        Name = 'FECHA'
        Value = nil
      end>
    object QVentas6MesesCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QVentas6MesesCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QVentas6MesesNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QVentas6MesesTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QVentas6MesesPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QVentas6MesesPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QVentas6MesesLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QVentas6MesesLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QVentas6MesesFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QVentas6MesesPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
    object QVentas6MesesPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QVentas6MesesCANTIDAD_VENDIDO: TIntegerField
      FieldName = 'CANTIDAD_VENDIDO'
    end
    object QVentas6MesesPRECIO_TOTAL: TIntegerField
      FieldName = 'PRECIO_TOTAL'
    end
    object QVentas6MesesFECHA_DE_VENTA: TDateField
      FieldName = 'FECHA_DE_VENTA'
    end
    object QVentas6MesesHORA_DE_VENTA: TTimeField
      FieldName = 'HORA_DE_VENTA'
    end
    object QVentas6MesesVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 100
    end
  end
  object QEliminarRegistro: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'DELETE   '
      'FROM    `VENTA_DE_productos` '
      'WHERE   `VENTA_DE_productos`.`CODIGO` = :CODIGO ;'
      '')
    Left = 320
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end>
  end
  object QAgregarProdVentasHistorial: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'Insert Into `venta_de_productos_historial` '
      '('
      '`venta_de_productos_historial`.`CODIGO_PRODUCTO`,'
      '`venta_de_productos_historial`.`Nombre`,'
      '`venta_de_productos_historial`.`TIPO`,'
      '`venta_de_productos_historial`.`PROVEEDOR`,'
      '`venta_de_productos_historial`.`PRESENTACION`,'
      '`venta_de_productos_historial`.`LABORATORIO`,'
      '`venta_de_productos_historial`.`LOTE`,'
      '`venta_de_productos_historial`.`FECHA_DE_VENCIMIENTO`,'
      '`venta_de_productos_historial`.`PRECIO_COSTO_POR_UNIDAD`,'
      '`venta_de_productos_historial`.`PRECIO_VENTA_POR_UNIDAD`,'
      '`venta_de_productos_historial`.`CANTIDAD_VENDIDO`,'
      '`venta_de_productos_historial`.`PRECIO_TOTAL`,'
      '`venta_de_productos_historial`.`FECHA_DE_VENTA`,'
      '`venta_de_productos_historial`.`HORA_DE_VENTA`,'
      '`venta_de_productos_historial`.`VENDEDOR`'
      ') '
      'Values '
      '('
      ':CODIGO_PRODUCTO,'
      ':NOMBRE,'
      ':TIPO,'
      ':PROVEEDOR,'
      ':PRESENTACION,'
      ':LABORATORIO,'
      ':LOTE,'
      ':FECHA_DE_VENCIMIENTO,'
      ':PRECIO_COSTO_POR_UNIDAD,'
      ':PRECIO_VENTA_POR_UNIDAD,'
      ':CANTIDAD_VENDIDO,'
      ':PRECIO_TOTAL,'
      ':FECHA_DE_VENTA,'
      ':HORA_DE_VENTA,'
      ':VENDEDOR'
      ');'
      ''
      ''
      '')
    Left = 227
    Top = 103
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO_PRODUCTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NOMBRE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PROVEEDOR'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRESENTACION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LABORATORIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'LOTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_DE_VENCIMIENTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_COSTO_POR_UNIDAD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_VENTA_POR_UNIDAD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CANTIDAD_VENDIDO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_TOTAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA_DE_VENTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'HORA_DE_VENTA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'VENDEDOR'
        Value = nil
      end>
  end
  object QVentasHist: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT  *'
      ' FROM `VENTA_DE_PRODUCTOS_HISTORIAL` '
      
        'WHERE `VENTA_DE_PRODUCTOS_HISTORIAL`.`FECHA_DE_VENTA` >= :FECHAD' +
        'ESDE AND'
      
        '      `VENTA_DE_PRODUCTOS_HISTORIAL`.`FECHA_DE_VENTA` <= :FECHAH' +
        'ASTA ;'
      '')
    Left = 440
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FECHADESDE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHAHASTA'
        Value = nil
      end>
    object QVentasHistCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QVentasHistCODIGO_PRODUCTO: TIntegerField
      FieldName = 'CODIGO_PRODUCTO'
    end
    object QVentasHistNOMBRE: TStringField
      FieldName = 'NOMBRE'
      Size = 100
    end
    object QVentasHistTIPO: TStringField
      FieldName = 'TIPO'
      Size = 100
    end
    object QVentasHistPROVEEDOR: TStringField
      FieldName = 'PROVEEDOR'
      Size = 100
    end
    object QVentasHistPRESENTACION: TStringField
      FieldName = 'PRESENTACION'
      Size = 100
    end
    object QVentasHistLABORATORIO: TStringField
      FieldName = 'LABORATORIO'
      Size = 100
    end
    object QVentasHistLOTE: TStringField
      FieldName = 'LOTE'
      Size = 100
    end
    object QVentasHistFECHA_DE_VENCIMIENTO: TDateField
      FieldName = 'FECHA_DE_VENCIMIENTO'
    end
    object QVentasHistPRECIO_COSTO_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_COSTO_POR_UNIDAD'
    end
    object QVentasHistPRECIO_VENTA_POR_UNIDAD: TIntegerField
      FieldName = 'PRECIO_VENTA_POR_UNIDAD'
    end
    object QVentasHistCANTIDAD_VENDIDO: TIntegerField
      FieldName = 'CANTIDAD_VENDIDO'
    end
    object QVentasHistPRECIO_TOTAL: TIntegerField
      FieldName = 'PRECIO_TOTAL'
    end
    object QVentasHistFECHA_DE_VENTA: TDateField
      FieldName = 'FECHA_DE_VENTA'
    end
    object QVentasHistHORA_DE_VENTA: TTimeField
      FieldName = 'HORA_DE_VENTA'
    end
    object QVentasHistVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Size = 100
    end
  end
  object DSVentasHist: TUniDataSource
    DataSet = QVentasHist
    Left = 440
    Top = 104
  end
end
