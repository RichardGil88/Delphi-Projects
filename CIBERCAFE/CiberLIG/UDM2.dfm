object DM2: TDM2
  OldCreateOrder = False
  Height = 392
  Width = 493
  object cibercafe: TUniConnection
    ProviderName = 'MySQL'
    Database = 'cibercafe'
    Username = 'root'
    Password = 'windowsxp'
    Server = 'localhost'
    Left = 120
    Top = 16
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 40
    Top = 16
  end
  object QInactivar: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'update `maquinas` '
      '   SET `maquinas`.`Activo` = 0 ,'
      '       `maquinas`.`USB` = 0   '
      ' WHERE `maquinas`.`PcName` = :Pmaq;')
    Left = 40
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pmaq'
      end>
  end
end
