object DM3: TDM3
  OldCreateOrder = False
  Height = 397
  Width = 429
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
  object QSelectActivas: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'select * from maquinas where maquinas.activo = 1;')
    Left = 40
    Top = 80
  end
end
