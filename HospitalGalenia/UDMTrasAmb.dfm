object DMTrasAmb: TDMTrasAmb
  OldCreateOrder = False
  Height = 464
  Width = 569
  object ConeccionTrasAmb: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 48
    Top = 16
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
  object QTruncateTrasAmb: TUniQuery
    Connection = ConeccionTrasAmb
    SQL.Strings = (
      'TRUNCATE catalogo_traslado_en_ambulancia;')
    Left = 56
    Top = 88
  end
  object QInsertarTrasAmb: TUniQuery
    Connection = ConeccionTrasAmb
    SQL.Strings = (
      'INSERT INTO catalogo_traslado_en_ambulancia'
      '(CODIGO, DESCRIPCION, GRUPO, IMPORTE, IVA, TOTAL_CON_IVA) '
      'VALUES'
      '(:CODIGO, :DESCRIPCION, :GRUPO, :IMPORTE, :IVA, :TOTAL_CON_IVA);')
    Left = 56
    Top = 144
    ParamData = <
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
        Name = 'GRUPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IMPORTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IVA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TOTAL_CON_IVA'
        Value = nil
      end>
  end
  object QInsertarTrasAmbPesos: TUniQuery
    Connection = ConeccionTrasAmb
    SQL.Strings = (
      'INSERT INTO catalogo_traslado_en_ambulancia_Pesos'
      
        '(CODIGO, DESCRIPCION, GRUPO, IMPORTE, IVA, TOTAL_CON_IVA, NUMERO' +
        ') '
      'VALUES'
      
        '(:CODIGO, :DESCRIPCION, :GRUPO, :IMPORTE, :IVA, :TOTAL_CON_IVA, ' +
        ':NUMERO);')
    Left = 56
    Top = 264
    ParamData = <
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
        Name = 'GRUPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IMPORTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IVA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TOTAL_CON_IVA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'NUMERO'
        Value = nil
      end>
  end
  object QTruncateTrasAmbPesos: TUniQuery
    Connection = ConeccionTrasAmb
    SQL.Strings = (
      'TRUNCATE catalogo_traslado_en_ambulancia_pesos;')
    Left = 56
    Top = 208
  end
  object QTruncateTrasAmbDolares: TUniQuery
    Connection = ConeccionTrasAmb
    SQL.Strings = (
      'TRUNCATE catalogo_traslado_en_ambulancia_dolares;')
    Left = 56
    Top = 328
  end
  object QInsertarTrasAmbDolares: TUniQuery
    Connection = ConeccionTrasAmb
    SQL.Strings = (
      'INSERT INTO catalogo_traslado_en_ambulancia_dolares'
      
        '(CODIGO, DESCRIPCION, GRUPO, IMPORTE, IVA, TOTAL_CON_IVA, CAMBIO' +
        ') '
      'VALUES'
      
        '(:CODIGO, :DESCRIPCION, :GRUPO, :IMPORTE, :IVA, :TOTAL_CON_IVA, ' +
        ':CAMBIO);')
    Left = 56
    Top = 388
    ParamData = <
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
        Name = 'GRUPO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IMPORTE'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'IVA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'TOTAL_CON_IVA'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CAMBIO'
        Value = nil
      end>
  end
  object TablaTrasAmb: TUniTable
    TableName = 'catalogo_traslado_en_ambulancia'
    Connection = ConeccionTrasAmbVer
    Left = 392
    Top = 80
    object TablaTrasAmbCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaTrasAmbDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaTrasAmbGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaTrasAmbIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaTrasAmbIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaTrasAmbTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSTrasAmb: TUniDataSource
    DataSet = TablaTrasAmb
    Left = 392
    Top = 136
  end
  object TablaTrasAmbPesos: TUniTable
    TableName = 'catalogo_traslado_en_ambulancia_pesos'
    Connection = ConeccionTrasAmbVer
    Left = 392
    Top = 200
    object TablaTrasAmbPesosCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaTrasAmbPesosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaTrasAmbPesosGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaTrasAmbPesosIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaTrasAmbPesosIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaTrasAmbPesosTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSTrasAmbPesos: TUniDataSource
    DataSet = TablaTrasAmbPesos
    Left = 392
    Top = 256
  end
  object TablaTrasAmbDolares: TUniTable
    TableName = 'catalogo_traslado_en_ambulancia_dolares'
    Connection = ConeccionTrasAmbVer
    Left = 392
    Top = 328
    object TablaTrasAmbDolaresCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaTrasAmbDolaresDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaTrasAmbDolaresGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaTrasAmbDolaresIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaTrasAmbDolaresIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaTrasAmbDolaresTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSTrasAmbDolares: TUniDataSource
    DataSet = TablaTrasAmbDolares
    Left = 392
    Top = 388
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 192
    Top = 16
  end
  object ConeccionTrasAmbVer: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 392
    Top = 24
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
end
