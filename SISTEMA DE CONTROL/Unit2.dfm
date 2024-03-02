object DM: TDM
  OldCreateOrder = False
  Height = 491
  Width = 541
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 72
    Top = 32
  end
  object ConChequeo: TUniConnection
    ProviderName = 'MySQL'
    Left = 168
    Top = 32
  end
  object DSTcontrol: TUniDataSource
    DataSet = Tcontrol
    Left = 80
    Top = 144
  end
  object Qgrupos: TUniQuery
    Connection = ConChequeo
    SQL.Strings = (
      'select grupos.grupo '
      'from  chequeo.grupos'
      'where  grupos.guardarBdTx='#39's'#39';')
    Left = 320
    Top = 40
  end
  object DSQgrupos: TUniDataSource
    DataSet = Qgrupos
    Left = 376
    Top = 40
  end
  object Qaux: TUniQuery
    Connection = ConChequeo
    Left = 320
    Top = 120
  end
  object DSQaux: TUniDataSource
    DataSet = Qaux
    Left = 376
    Top = 120
  end
  object Qaux2: TUniQuery
    Connection = ConChequeo
    Left = 320
    Top = 176
  end
  object DSQaux2: TUniDataSource
    DataSet = Qaux2
    Left = 376
    Top = 176
  end
  object DSQvaciar: TUniDataSource
    DataSet = Qvaciar
    Left = 368
    Top = 232
  end
  object Qvaciar: TUniQuery
    Connection = ConControl
    Left = 320
    Top = 232
  end
  object Tcontrol: TUniTable
    TableName = 'estado'
    Connection = ConControl
    Options.StrictUpdate = False
    Left = 24
    Top = 144
    object Tcontrolgrupo: TStringField
      FieldName = 'grupo'
      Size = 250
    end
    object TcontrolClave: TIntegerField
      FieldName = 'Clave'
    end
    object Tcontroldptosecc: TStringField
      FieldName = 'dptosecc'
      Size = 255
    end
    object TcontrolFechainicio: TDateTimeField
      FieldName = 'Fecha inicio'
    end
    object TcontrolDuracion: TIntegerField
      FieldName = 'Duracion'
    end
    object TcontrolSentido: TStringField
      FieldName = 'Sentido'
      Size = 1
    end
    object TcontrolTelefonollamador: TStringField
      FieldName = 'Telefono llamador'
      Size = 50
    end
    object TcontrolTelefonollamado: TStringField
      FieldName = 'Telefono llamado'
      Size = 50
    end
    object TcontrolCategoria: TStringField
      FieldName = 'Categoria'
      Size = 50
    end
    object TcontrolTipoTx: TStringField
      FieldName = 'TipoTx'
      Size = 50
    end
    object TcontrolTema: TStringField
      FieldName = 'Tema'
      Size = 50
    end
    object TcontrolDigitosserviciosagregados: TStringField
      FieldName = 'Digitos servicios agregados'
      Size = 250
    end
    object TcontrolIt: TLargeintField
      FieldName = 'It'
    end
    object Tcontrolkt: TStringField
      FieldName = 'kt'
      Size = 50
    end
    object Tcontrolfechita: TDateTimeField
      FieldName = 'fechita'
    end
    object Tcontrolpriorizada: TBooleanField
      FieldName = 'priorizada'
    end
    object Tcontrolconidioma: TBooleanField
      FieldName = 'conidioma'
    end
    object TcontrolDepurada: TSmallintField
      FieldName = 'Depurada'
    end
    object Tcontrolktclick: TStringField
      FieldName = 'ktclick'
      Size = 50
    end
    object Tcontrolfechaclick: TDateTimeField
      FieldName = 'fechaclick'
    end
    object Tcontrolduraclick: TIntegerField
      FieldName = 'duraclick'
    end
    object Tcontrolfichero: TStringField
      FieldName = 'fichero'
      Size = 250
    end
    object TcontrolidSolicitud: TLargeintField
      FieldName = 'idSolicitud'
    end
    object Tcontrolktprimero: TStringField
      FieldName = 'ktprimero'
      Size = 50
    end
    object TcontrolfechitaPrimero: TDateTimeField
      FieldName = 'fechitaPrimero'
    end
    object Tcontrolidioma: TStringField
      FieldName = 'idioma'
      Size = 50
    end
    object Tcontrolconfax: TBooleanField
      FieldName = 'confax'
    end
    object Tcontrolbancovoces: TBooleanField
      FieldName = 'bancovoces'
    end
    object Tcontrolcontenido: TStringField
      FieldName = 'contenido'
      Size = 250
    end
    object Tcontrolficherocontenido: TStringField
      FieldName = 'ficherocontenido'
      Size = 250
    end
    object Tcontrollugardemonitoreo: TStringField
      FieldName = 'lugar de monitoreo'
      Size = 250
    end
  end
  object UniSQL1: TUniSQL
    Connection = ConControl
    SQL.Strings = (
      'insert into  '
      
        '(grupo, Clave, "Fecha inicio", duracion, Sentido, "Telefono llam' +
        'ador", "Telefono llamado", Categoria, TipoTx, Tema, "Digitos ser' +
        'vicios agregados", It, kt, fechita, priorizada, conidioma, Depur' +
        'ada, ktclick, fechaclick, duraclick, fichero, ktprimero, fechita' +
        'Primero, idioma, confax, bancovoces, contenido, ficherocontenido' +
        ', "lugar de monitoreo")'
      
        'values (:grupo, :Clave, :Fechainicio, :duracion, :Sentido, :llam' +
        'ador, :llamado, :Categoria, :TipoTx, :Tema, :Digitos, :It, :kt, ' +
        ':fechita, :priorizada, :conidioma, :Depurada, :ktclick, :fechacl' +
        'ick, :duraclick, :fichero, :ktprimero, :fechitaPrimero, :idioma,' +
        ':confax, :bancovoces, :contenido, :ficherocontenido, :lugar);')
    Left = 24
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'grupo'
      end
      item
        DataType = ftUnknown
        Name = 'Clave'
      end
      item
        DataType = ftUnknown
        Name = 'Fechainicio'
      end
      item
        DataType = ftUnknown
        Name = 'duracion'
      end
      item
        DataType = ftUnknown
        Name = 'Sentido'
      end
      item
        DataType = ftUnknown
        Name = 'llamador'
      end
      item
        DataType = ftUnknown
        Name = 'llamado'
      end
      item
        DataType = ftUnknown
        Name = 'Categoria'
      end
      item
        DataType = ftUnknown
        Name = 'TipoTx'
      end
      item
        DataType = ftUnknown
        Name = 'Tema'
      end
      item
        DataType = ftUnknown
        Name = 'Digitos'
      end
      item
        DataType = ftUnknown
        Name = 'It'
      end
      item
        DataType = ftUnknown
        Name = 'kt'
      end
      item
        DataType = ftUnknown
        Name = 'fechita'
      end
      item
        DataType = ftUnknown
        Name = 'priorizada'
      end
      item
        DataType = ftUnknown
        Name = 'conidioma'
      end
      item
        DataType = ftUnknown
        Name = 'Depurada'
      end
      item
        DataType = ftUnknown
        Name = 'ktclick'
      end
      item
        DataType = ftUnknown
        Name = 'fechaclick'
      end
      item
        DataType = ftUnknown
        Name = 'duraclick'
      end
      item
        DataType = ftUnknown
        Name = 'fichero'
      end
      item
        DataType = ftUnknown
        Name = 'ktprimero'
      end
      item
        DataType = ftUnknown
        Name = 'fechitaPrimero'
      end
      item
        DataType = ftUnknown
        Name = 'idioma'
      end
      item
        DataType = ftUnknown
        Name = 'confax'
      end
      item
        DataType = ftUnknown
        Name = 'bancovoces'
      end
      item
        DataType = ftUnknown
        Name = 'contenido'
      end
      item
        DataType = ftUnknown
        Name = 'ficherocontenido'
      end
      item
        DataType = ftUnknown
        Name = 'lugar'
      end>
  end
  object ConControl: TUniConnection
    ProviderName = 'MySQL'
    Left = 168
    Top = 88
  end
  object Qestado: TUniQuery
    Connection = ConControl
    Left = 136
    Top = 208
  end
  object DSestado: TUniDataSource
    DataSet = Qestado
    Left = 208
    Top = 208
  end
  object TEstados: TUniTable
    TableName = 'estado'
    Connection = ConControl
    Left = 360
    Top = 320
    object TEstadosTabla: TStringField
      FieldName = 'Tabla'
      Size = 250
    end
    object TEstadosActiva: TStringField
      FieldName = 'Activa'
      Size = 250
    end
  end
  object DStestados: TUniDataSource
    DataSet = TEstados
    Left = 360
    Top = 376
  end
  object UniQuery1: TUniQuery
    Connection = ConChequeo
    Left = 152
    Top = 344
  end
end
