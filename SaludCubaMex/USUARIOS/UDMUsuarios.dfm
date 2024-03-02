object FDMUsuarios: TFDMUsuarios
  OldCreateOrder = False
  Height = 518
  Width = 739
  object DSuser: TUniDataSource
    DataSet = Quser
    Left = 60
    Top = 106
  end
  object Quser: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * '
      'FROM usuarios '
      'where usuarios.usuario=:Puser AND '
      'usuarios.contrase'#241'a= SHA1(:Ppass);')
    Left = 60
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Ppass'
        ParamType = ptInput
        Value = nil
      end>
  end
  object DSuser2: TUniDataSource
    DataSet = Quser2
    Left = 108
    Top = 107
  end
  object DSinsertarusuario: TUniDataSource
    DataSet = Qinsertarusuario
    Left = 236
    Top = 104
  end
  object Quser2: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT usuarios.usuario '
      'FROM usuarios'
      'where usuarios.usuario = :Puser')
    Left = 108
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
        Value = nil
      end>
  end
  object DSmospass: TUniDataSource
    DataSet = Qmodpass
    Left = 316
    Top = 105
  end
  object Qmodpass: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'update `usuarios` set `usuarios`.`contrase'#241'a` = sha(:pnewpass) '
      'where `usuarios`.`usuario` = :puser')
    Left = 316
    Top = 57
    ParamData = <
      item
        DataType = ftString
        Name = 'pnewpass'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'puser'
        ParamType = ptInput
        Value = nil
      end>
  end
  object Qinsertarusuario: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'INSERT into `usuarios`(NOMBRECOMPLETO,usuario,contrase'#241'a,cargo) '
      'values (:Pnombre,:Puser,SHA(:Ppass),:Pcargo);')
    Left = 236
    Top = 62
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pnombre'
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Ppass'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'Pcargo'
        ParamType = ptInput
        Value = nil
      end>
  end
  object Qlistcargoadm: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT cargos.cargos  '
      'FROM cargos')
    Left = 461
    Top = 56
  end
  object DSlistcargoadm: TUniDataSource
    DataSet = Qlistcargoadm
    Left = 461
    Top = 105
  end
  object Quser1: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT usuarios.usuario '
      'FROM usuarios')
    Left = 160
    Top = 64
  end
  object DSuser1: TUniDataSource
    DataSet = Quser1
    Left = 160
    Top = 107
  end
  object DSeliminaruser: TUniDataSource
    DataSet = Qeliminaruser
    Left = 384
    Top = 105
  end
  object Qeliminaruser: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'DELETE QUICK FROM `usuarios` '
      'WHERE `usuarios`.`usuario` = :Puser;')
    Left = 384
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'Puser'
        ParamType = ptInput
        Value = nil
      end>
  end
  object DSMostrarUsuarios: TUniDataSource
    DataSet = QMostrarUsuarios
    Left = 556
    Top = 106
  end
  object QMostrarUsuarios: TUniQuery
    Connection = FDM1.UniConnection1
    SQL.Strings = (
      'SELECT * '
      'FROM usuarios ')
    Left = 556
    Top = 64
    object QMostrarUsuariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object QMostrarUsuariosNOMBRECOMPLETO: TStringField
      FieldName = 'NOMBRECOMPLETO'
      Size = 100
    end
    object QMostrarUsuariosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 100
    end
    object QMostrarUsuariosCONTRASEÑA: TStringField
      FieldName = 'CONTRASE'#209'A'
      Size = 100
    end
    object QMostrarUsuariosCARGO: TStringField
      FieldName = 'CARGO'
      Size = 100
    end
    object QMostrarUsuariosFECHA_CREADO: TDateTimeField
      FieldName = 'FECHA_CREADO'
    end
  end
end
