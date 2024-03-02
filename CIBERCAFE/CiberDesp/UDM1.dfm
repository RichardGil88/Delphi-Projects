object DM1: TDM1
  OldCreateOrder = False
  Height = 477
  Width = 630
  object cibercafe: TUniConnection
    ProviderName = 'MySQL'
    Database = 'cibercafe'
    Username = 'root'
    Password = 'windowsxp'
    Server = 'localhost'
    LoginPrompt = True
    Left = 40
    Top = 24
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 40
    Top = 80
  end
  object Qinsertar: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'insert into contenidos '
      '(Nombre_PC,'
      'Chequeo,'
      'Carpeta,'
      'Fichero,'
      'Fecha,'
      'Hora,'
      'Tipo,'
      'Extencion,'
      'Procesado,'
      'Conservar)'
      'values  '
      '(:PPcName,'
      ':PUserName,'
      ':PCarpeta,'
      ':PFichero, '
      ':PFecha, '
      ':PHora, '
      ':PTipo,'
      ':PExtencion, '
      ':PProcesado,'
      ':PConservar)')
    Left = 152
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PPcName'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PUserName'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PCarpeta'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFichero'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFecha'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PHora'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PTipo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PExtencion'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PProcesado'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PConservar'
        Value = nil
      end>
  end
  object QActivo: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'Select chequeos.chequeo,chequeos.activo'
      'from chequeos'
      'where chequeos.chequeo = :Pusuario;')
    Left = 152
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pusuario'
        Value = nil
      end>
  end
  object QDespachador: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'select * from Despachador;')
    Left = 152
    Top = 24
  end
end
