object DMCamHiper: TDMCamHiper
  OldCreateOrder = False
  Height = 466
  Width = 546
  object ConeccionCamHiper: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Left = 48
    Top = 16
  end
  object QTruncateCamHiper: TUniQuery
    Connection = ConeccionCamHiper
    SQL.Strings = (
      'TRUNCATE catalogo_camara_hiperbarica;')
    Left = 56
    Top = 88
  end
  object QInsertarCamHiper: TUniQuery
    Connection = ConeccionCamHiper
    SQL.Strings = (
      'INSERT INTO catalogo_camara_hiperbarica'
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
  object QInsertarCamHiperPesos: TUniQuery
    Connection = ConeccionCamHiper
    SQL.Strings = (
      'INSERT INTO catalogo_camara_hiperbarica_Pesos'
      
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
  object QTruncateCamHiperPesos: TUniQuery
    Connection = ConeccionCamHiper
    SQL.Strings = (
      'TRUNCATE catalogo_camara_hiperbarica_pesos;')
    Left = 56
    Top = 208
  end
  object QTruncateCamHiperDolares: TUniQuery
    Connection = ConeccionCamHiper
    SQL.Strings = (
      'TRUNCATE catalogo_camara_hiperbarica_dolares;')
    Left = 56
    Top = 328
  end
  object QInsertarCamHiperDolares: TUniQuery
    Connection = ConeccionCamHiper
    SQL.Strings = (
      'INSERT INTO catalogo_camara_hiperbarica_dolares'
      
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
  object TablaCamHiper: TUniTable
    TableName = 'catalogo_camara_hiperbarica'
    Connection = ConeccionCamHiperVer
    Left = 392
    Top = 80
    object TablaCamHiperCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaCamHiperDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaCamHiperGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaCamHiperIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaCamHiperIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaCamHiperTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSCamHiper: TUniDataSource
    DataSet = TablaCamHiper
    Left = 392
    Top = 136
  end
  object TablaCamHiperPesos: TUniTable
    TableName = 'catalogo_camara_hiperbarica_pesos'
    Connection = ConeccionCamHiperVer
    Left = 392
    Top = 200
    object TablaCamHiperPesosCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaCamHiperPesosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaCamHiperPesosGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaCamHiperPesosIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaCamHiperPesosIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaCamHiperPesosTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSCamHiperPesos: TUniDataSource
    DataSet = TablaCamHiperPesos
    Left = 392
    Top = 256
  end
  object TablaCamHiperDolares: TUniTable
    TableName = 'catalogo_camara_hiperbarica_dolares'
    Connection = ConeccionCamHiperVer
    Left = 392
    Top = 328
    object TablaCamHiperDolaresCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaCamHiperDolaresDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaCamHiperDolaresGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaCamHiperDolaresIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaCamHiperDolaresIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaCamHiperDolaresTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSCamHiperDolares: TUniDataSource
    DataSet = TablaCamHiperDolares
    Left = 392
    Top = 388
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 192
    Top = 16
  end
  object ConeccionCamHiperVer: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 392
    Top = 24
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
end
