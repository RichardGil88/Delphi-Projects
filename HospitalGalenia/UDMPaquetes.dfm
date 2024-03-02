object DMPaquetes: TDMPaquetes
  OldCreateOrder = False
  Height = 491
  Width = 585
  object ConeccionPaq: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 56
    Top = 24
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
  object QTruncatePaq: TUniQuery
    Connection = ConeccionPaq
    SQL.Strings = (
      'TRUNCATE catalogo_paquetes;')
    Left = 56
    Top = 88
  end
  object QInsertarPaq: TUniQuery
    Connection = ConeccionPaq
    SQL.Strings = (
      'INSERT INTO catalogo_paquetes'
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
  object QInsertarPaqPesos: TUniQuery
    Connection = ConeccionPaq
    SQL.Strings = (
      'INSERT INTO catalogo_paquetes_Pesos'
      
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
  object QTruncatePaqPesos: TUniQuery
    Connection = ConeccionPaq
    SQL.Strings = (
      'TRUNCATE catalogo_paquetes_pesos;')
    Left = 56
    Top = 208
  end
  object QTruncatePaqDolares: TUniQuery
    Connection = ConeccionPaq
    SQL.Strings = (
      'TRUNCATE catalogo_paquetes_dolares;')
    Left = 56
    Top = 328
  end
  object QInsertarPaqDolares: TUniQuery
    Connection = ConeccionPaq
    SQL.Strings = (
      'INSERT INTO catalogo_paquetes_dolares'
      
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
  object TablaPaq: TUniTable
    TableName = 'catalogo_paquetes'
    Connection = ConeccionPaqVer
    Left = 392
    Top = 80
    object TablaPaqCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaPaqDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaPaqGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaPaqIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaPaqIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaPaqTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSPaq: TUniDataSource
    DataSet = TablaPaq
    Left = 392
    Top = 136
  end
  object TablaPaqPesos: TUniTable
    TableName = 'catalogo_paquetes_pesos'
    Connection = ConeccionPaqVer
    Left = 392
    Top = 200
    object TablaPaqPesosCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaPaqPesosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaPaqPesosGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaPaqPesosIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaPaqPesosIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaPaqPesosTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSPaqPesos: TUniDataSource
    DataSet = TablaPaqPesos
    Left = 392
    Top = 256
  end
  object TablaPaqDolares: TUniTable
    TableName = 'catalogo_paquetes_dolares'
    Connection = ConeccionPaqVer
    Left = 392
    Top = 328
    object TablaPaqDolaresCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaPaqDolaresDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaPaqDolaresGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaPaqDolaresIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaPaqDolaresIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaPaqDolaresTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSPaqDolares: TUniDataSource
    DataSet = TablaPaqDolares
    Left = 392
    Top = 388
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 216
    Top = 16
  end
  object ConeccionPaqVer: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 392
    Top = 24
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
end
