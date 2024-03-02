object DmMedicamentos: TDmMedicamentos
  OldCreateOrder = False
  Height = 478
  Width = 629
  object QTruncateMedicamentos: TUniQuery
    Connection = ConeccionMedicamentos
    SQL.Strings = (
      'TRUNCATE catalogo_medicamentos;')
    Left = 72
    Top = 104
  end
  object QInsertarMedicamentos: TUniQuery
    Connection = ConeccionMedicamentos
    SQL.Strings = (
      
        'INSERT INTO catalogo_medicamentos(CODIGO, MEDICAMENTO, GRUPO, IM' +
        'PORTE, IVA, TOTAL_CON_IVA) '
      
        'VALUES(:CODIGO, :MEDICAMENTO, :GRUPO, :IMPORTE, :IVA, :TOTAL_CON' +
        '_IVA);')
    Left = 72
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MEDICAMENTO'
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
  object ConeccionMedicamentos: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'root'
    Server = 'localhost'
    Left = 72
    Top = 32
    EncryptedPassword = 
      'BEFF9BFF92FF96FF91FF96FF8CFF8BFF8DFF9EFF9BFF90FF8DFFCEFFCDFFCCFF' +
      'D1FFD1FF'
  end
  object TablaMedicamentos: TUniTable
    TableName = 'catalogo_medicamentos'
    Connection = ConeccionMedicamentosVer
    Left = 344
    Top = 96
    object TablaMedicamentosCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaMedicamentosMEDICAMENTO: TStringField
      FieldName = 'MEDICAMENTO'
      Size = 255
    end
    object TablaMedicamentosGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaMedicamentosIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaMedicamentosIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaMedicamentosTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSMedicamentos: TUniDataSource
    DataSet = TablaMedicamentos
    Left = 344
    Top = 152
  end
  object QInsertarMedicamentosPesos: TUniQuery
    Connection = ConeccionMedicamentos
    SQL.Strings = (
      
        'INSERT INTO catalogo_medicamentos_pesos (CODIGO, MEDICAMENTO, GR' +
        'UPO, IMPORTE, IVA, TOTAL_CON_IVA, NUMERO) '
      
        'VALUES(:CODIGO, :MEDICAMENTO, :GRUPO, :IMPORTE, :IVA, :TOTAL_CON' +
        '_IVA, :NUMERO);')
    Left = 72
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MEDICAMENTO'
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
  object QTruncateMedicamentosPesos: TUniQuery
    Connection = ConeccionMedicamentos
    SQL.Strings = (
      'TRUNCATE catalogo_medicamentos_pesos;')
    Left = 72
    Top = 224
  end
  object TablaMedicamentosPesos: TUniTable
    TableName = 'catalogo_medicamentos_pesos'
    Connection = ConeccionMedicamentosVer
    Left = 344
    Top = 216
    object TablaMedicamentosPesosCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaMedicamentosPesosMEDICAMENTO: TStringField
      FieldName = 'MEDICAMENTO'
      Size = 255
    end
    object TablaMedicamentosPesosGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaMedicamentosPesosIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaMedicamentosPesosIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaMedicamentosPesosTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSMedicamentosPesos: TUniDataSource
    DataSet = TablaMedicamentosPesos
    Left = 344
    Top = 272
  end
  object QTruncateMedicamentosDolares: TUniQuery
    Connection = ConeccionMedicamentos
    SQL.Strings = (
      'TRUNCATE catalogo_medicamentos_dolares;')
    Left = 72
    Top = 344
  end
  object QInsertarMedicamentosDolares: TUniQuery
    Connection = ConeccionMedicamentos
    SQL.Strings = (
      'INSERT INTO catalogo_medicamentos_dolares '
      
        '(CODIGO, MEDICAMENTO, GRUPO, IMPORTE, IVA, TOTAL_CON_IVA, CAMBIO' +
        ') '
      'VALUES'
      
        '(:CODIGO, :MEDICAMENTO, :GRUPO, :IMPORTE, :IVA, :TOTAL_CON_IVA, ' +
        ':CAMBIO);')
    Left = 72
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'MEDICAMENTO'
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
  object TablaMedicamentosDolares: TUniTable
    TableName = 'catalogo_medicamentos_dolares'
    Connection = ConeccionMedicamentosVer
    Left = 344
    Top = 336
    object TablaMedicamentosDolaresCODIGO: TLargeintField
      FieldName = 'CODIGO'
    end
    object TablaMedicamentosDolaresMEDICAMENTO: TStringField
      FieldName = 'MEDICAMENTO'
      Size = 255
    end
    object TablaMedicamentosDolaresGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 100
    end
    object TablaMedicamentosDolaresIMPORTE: TStringField
      FieldName = 'IMPORTE'
      Size = 50
    end
    object TablaMedicamentosDolaresIVA: TStringField
      FieldName = 'IVA'
      Size = 50
    end
    object TablaMedicamentosDolaresTOTAL_CON_IVA: TStringField
      FieldName = 'TOTAL_CON_IVA'
      Size = 50
    end
  end
  object DSMedicamentosDolares: TUniDataSource
    DataSet = TablaMedicamentosDolares
    Left = 344
    Top = 392
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 512
    Top = 32
  end
  object ConeccionMedicamentosVer: TUniConnection
    ProviderName = 'MySQL'
    Database = 'hospitalgalenia'
    Username = 'mama'
    Server = 'localhost'
    Left = 344
    Top = 32
    EncryptedPassword = '92FF9EFF92FF9EFF'
  end
end
