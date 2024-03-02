object DMMembresia: TDMMembresia
  OldCreateOrder = False
  Height = 451
  Width = 539
  object ConeccionMemb: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 56
    Top = 24
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
  object QTruncateMemb: TUniQuery
    Connection = ConeccionMemb
    SQL.Strings = (
      'TRUNCATE catalogo_membresia;')
    Left = 56
    Top = 88
  end
  object QInsertarMemb: TUniQuery
    Connection = ConeccionMemb
    SQL.Strings = (
      'INSERT INTO catalogo_membresia'
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
  object QInsertarMembPesos: TUniQuery
    Connection = ConeccionMemb
    SQL.Strings = (
      'INSERT INTO catalogo_membresia_Pesos'
      
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
  object QTruncateMembPesos: TUniQuery
    Connection = ConeccionMemb
    SQL.Strings = (
      'TRUNCATE catalogo_membresia_pesos;')
    Left = 56
    Top = 208
  end
  object QTruncateMembDolares: TUniQuery
    Connection = ConeccionMemb
    SQL.Strings = (
      'TRUNCATE catalogo_membresia_dolares;')
    Left = 56
    Top = 328
  end
  object QInsertarMembDolares: TUniQuery
    Connection = ConeccionMemb
    SQL.Strings = (
      'INSERT INTO catalogo_membresia_dolares'
      
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
  object TablaMemb: TUniTable
    TableName = 'catalogo_membresia'
    Connection = ConeccionMembVer
    Left = 392
    Top = 80
    object TablaMembCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaMembDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaMembGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaMembIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaMembIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaMembTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSMemb: TUniDataSource
    DataSet = TablaMemb
    Left = 392
    Top = 136
  end
  object TablaMembPesos: TUniTable
    TableName = 'catalogo_membresia_pesos'
    Connection = ConeccionMembVer
    Left = 392
    Top = 200
    object TablaMembPesosCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaMembPesosDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaMembPesosGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaMembPesosIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaMembPesosIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaMembPesosTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSMembPesos: TUniDataSource
    DataSet = TablaMembPesos
    Left = 392
    Top = 256
  end
  object TablaMembDolares: TUniTable
    TableName = 'catalogo_membresia_dolares'
    Connection = ConeccionMembVer
    Left = 392
    Top = 328
    object TablaMembDolaresCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaMembDolaresDESCRIPCION: TStringField
      FieldName = 'DESCRIPCION'
      Size = 255
    end
    object TablaMembDolaresGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaMembDolaresIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaMembDolaresIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaMembDolaresTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSMembDolares: TUniDataSource
    DataSet = TablaMembDolares
    Left = 392
    Top = 388
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 216
    Top = 16
  end
  object ConeccionMembVer: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 392
    Top = 24
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
end
