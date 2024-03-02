object DMTerInt: TDMTerInt
  OldCreateOrder = False
  Height = 471
  Width = 511
  object ConeccionTerInt: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 48
    Top = 16
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
  object QTruncateTerInt: TUniQuery
    Connection = ConeccionTerInt
    SQL.Strings = (
      'TRUNCATE catalogo_terapia_intensiva;')
    Left = 56
    Top = 88
  end
  object QInsertarTerInt: TUniQuery
    Connection = ConeccionTerInt
    SQL.Strings = (
      'INSERT INTO catalogo_terapia_intensiva'
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
  object QInsertarTerIntPesos: TUniQuery
    Connection = ConeccionTerInt
    SQL.Strings = (
      'INSERT INTO catalogo_terapia_intensiva_Pesos'
      
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
  object QTruncateTerIntPesos: TUniQuery
    Connection = ConeccionTerInt
    SQL.Strings = (
      'TRUNCATE catalogo_terapia_intensiva_pesos;')
    Left = 56
    Top = 208
  end
  object QTruncateTerIntDolares: TUniQuery
    Connection = ConeccionTerInt
    SQL.Strings = (
      'TRUNCATE catalogo_terapia_intensiva_dolares;')
    Left = 56
    Top = 328
  end
  object QInsertarTerIntDolares: TUniQuery
    Connection = ConeccionTerInt
    SQL.Strings = (
      'INSERT INTO catalogo_terapia_intensiva_dolares'
      
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
  object TablaTerInt: TUniTable
    TableName = 'catalogo_terapia_intensiva'
    Connection = ConeccionTerIntVer
    Left = 392
    Top = 80
    object TablaTerIntCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaTerIntDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaTerIntGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaTerIntIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaTerIntIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaTerIntTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSTerInt: TUniDataSource
    DataSet = TablaTerInt
    Left = 392
    Top = 136
  end
  object TablaTerIntPesos: TUniTable
    TableName = 'catalogo_terapia_intensiva_pesos'
    Connection = ConeccionTerIntVer
    Left = 392
    Top = 200
    object TablaTerIntPesosCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaTerIntPesosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaTerIntPesosGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaTerIntPesosIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaTerIntPesosIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaTerIntPesosTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSTerIntPesos: TUniDataSource
    DataSet = TablaTerIntPesos
    Left = 392
    Top = 256
  end
  object TablaTerIntDolares: TUniTable
    TableName = 'catalogo_terapia_intensiva_dolares'
    Connection = ConeccionTerIntVer
    Left = 392
    Top = 328
    object TablaTerIntDolaresCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaTerIntDolaresDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaTerIntDolaresGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaTerIntDolaresIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaTerIntDolaresIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaTerIntDolaresTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSTerIntDolares: TUniDataSource
    DataSet = TablaTerIntDolares
    Left = 392
    Top = 388
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 192
    Top = 16
  end
  object ConeccionTerIntVer: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 392
    Top = 24
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
end
