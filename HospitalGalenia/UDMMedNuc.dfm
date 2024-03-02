object DMMedNuc: TDMMedNuc
  OldCreateOrder = False
  Height = 465
  Width = 541
  object ConeccionMedNuc: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 48
    Top = 16
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
  object QTruncateMedNuc: TUniQuery
    Connection = ConeccionMedNuc
    SQL.Strings = (
      'TRUNCATE catalogo_medicina_nuclear;')
    Left = 56
    Top = 88
  end
  object QInsertarMedNuc: TUniQuery
    Connection = ConeccionMedNuc
    SQL.Strings = (
      'INSERT INTO catalogo_medicina_nuclear'
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
  object QInsertarMedNucPesos: TUniQuery
    Connection = ConeccionMedNuc
    SQL.Strings = (
      'INSERT INTO catalogo_medicina_nuclear_Pesos'
      
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
  object QTruncateMedNucPesos: TUniQuery
    Connection = ConeccionMedNuc
    SQL.Strings = (
      'TRUNCATE catalogo_medicina_nuclear_pesos;')
    Left = 56
    Top = 208
  end
  object QTruncateMedNucDolares: TUniQuery
    Connection = ConeccionMedNuc
    SQL.Strings = (
      'TRUNCATE catalogo_medicina_nuclear_dolares;')
    Left = 56
    Top = 328
  end
  object QInsertarMedNucDolares: TUniQuery
    Connection = ConeccionMedNuc
    SQL.Strings = (
      'INSERT INTO catalogo_medicina_nuclear_dolares'
      
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
  object TablaMedNuc: TUniTable
    TableName = 'catalogo_medicina_nuclear'
    Connection = ConeccionMedNucVer
    Left = 392
    Top = 80
    object TablaMedNucCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaMedNucDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaMedNucGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaMedNucIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaMedNucIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaMedNucTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSMedNuc: TUniDataSource
    DataSet = TablaMedNuc
    Left = 392
    Top = 136
  end
  object TablaMedNucPesos: TUniTable
    TableName = 'catalogo_medicina_nuclear_pesos'
    Connection = ConeccionMedNucVer
    Left = 392
    Top = 200
    object TablaMedNucPesosCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaMedNucPesosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaMedNucPesosGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaMedNucPesosIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaMedNucPesosIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaMedNucPesosTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSMedNucPesos: TUniDataSource
    DataSet = TablaMedNucPesos
    Left = 392
    Top = 256
  end
  object TablaMedNucDolares: TUniTable
    TableName = 'catalogo_medicina_nuclear_dolares'
    Connection = ConeccionMedNucVer
    Left = 392
    Top = 328
    object TablaMedNucDolaresCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaMedNucDolaresDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaMedNucDolaresGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaMedNucDolaresIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaMedNucDolaresIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaMedNucDolaresTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSMedNucDolares: TUniDataSource
    DataSet = TablaMedNucDolares
    Left = 392
    Top = 388
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 192
    Top = 16
  end
  object ConeccionMedNucVer: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 392
    Top = 24
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
end
