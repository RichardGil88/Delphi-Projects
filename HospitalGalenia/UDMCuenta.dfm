object DMCuenta: TDMCuenta
  OldCreateOrder = False
  Height = 378
  Width = 457
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 48
    Top = 16
  end
  object ConeccionGeneral: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'root'
    Server = 'localhost'
    Left = 152
    Top = 16
    EncryptedPassword = 
      'BEFF9BFF92FF96FF91FF96FF8CFF8BFF8DFF9EFF9BFF90FF8DFFCEFFCDFFCCFF' +
      'D1FFD1FF'
  end
  object QInsertarCuentaOriginal: TUniQuery
    Connection = ConeccionGeneral
    SQL.Strings = (
      'INSERT INTO cuenta_original '
      '(CATALOGO,'
      'CODIGO,'
      'DESCRIPCION,'
      'CANTIDAD,'
      'PRECIO_UNITARIO,'
      'IMPORTE,'
      'DESCUENTO,'
      'SUBTOTAL,'
      'IMPUESTO,'
      'PRECIO_FINAL,'
      'FECHA)'
      ''
      'VALUES'
      '(:CATALOGO,'
      ':CODIGO,'
      ':DESCRIPCION,'
      ':CANTIDAD,'
      ':PRECIO_UNITARIO,'
      ':IMPORTE,'
      ':DESCUENTO,'
      ':SUBTOTAL,'
      ':IMPUESTO,'
      ':PRECIO_FINAL,'
      ':FECHA);')
    Left = 72
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CATALOGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCRIPCION'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CANTIDAD'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_UNITARIO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IMPORTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'DESCUENTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'SUBTOTAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IMPUESTO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PRECIO_FINAL'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'FECHA'
        Value = nil
      end>
  end
  object QTruncateCuentaOriginal: TUniQuery
    Connection = ConeccionGeneral
    SQL.Strings = (
      'TRUNCATE cuenta_original;')
    Left = 72
    Top = 88
  end
end
