object DM2: TDM2
  OldCreateOrder = False
  Height = 309
  Width = 368
  object cibercafe: TUniConnection
    ProviderName = 'MySQL'
    Database = 'cibercafe'
    Username = 'root'
    Password = 'windowsxp'
    Server = 'localhost'
    Left = 40
    Top = 24
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 40
    Top = 80
  end
  object Qftp: TUniQuery
    Connection = cibercafe
    SQL.Strings = (
      'select * from `Servidor FTP`;')
    Left = 136
    Top = 16
  end
end
