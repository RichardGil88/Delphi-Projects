object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 450
  Width = 704
  object ConeccionMySql: TUniConnection
    ProviderName = 'MySQL'
    Database = 'galeniacomedor'
    Username = 'root'
    Server = 'localhost'
    Left = 56
    Top = 24
    EncryptedPassword = 
      'BEFF9BFF92FF96FF91FF96FF8CFF8BFF8DFF9EFF9BFF90FF8DFFCEFFCDFFCCFF' +
      'D1FFD1FF'
  end
  object Qlogin: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'SELECT * '
      'FROM   usuariossistema'
      'WHERE  usuariossistema.`Usuario` = :Pusuario AND'
      '       usuariossistema.`Contrase'#241'a` = :Pcontrase'#241'a;'
      '')
    Left = 136
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pusuario'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Pcontrase'#241'a'
        Value = nil
      end>
    object QloginId: TIntegerField
      FieldName = 'Id'
    end
    object QloginUsuario: TStringField
      FieldName = 'Usuario'
      Size = 100
    end
    object QloginContraseña: TStringField
      FieldName = 'Contrase'#241'a'
      Size = 100
    end
    object QloginPerfil: TStringField
      FieldName = 'Perfil'
      Size = 50
    end
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 56
    Top = 88
  end
  object QDepartamentos: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'SELECT DISTINCT departamentos.Departamentos '
      'FROM departamentos '
      'ORDER BY departamentos ASC;')
    Left = 352
    Top = 24
    object QDepartamentosDepartamentos: TStringField
      FieldName = 'Departamentos'
      Size = 50
    end
  end
  object DSDepartamentos: TUniDataSource
    DataSet = QDepartamentos
    Left = 352
    Top = 72
  end
  object QInsertarUsuario: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'INSERT INTO usuarios (Nombres,Credencial,Departamento,'
      'Telefono1,Extension,AccesoComedor,Status,CantidadComidas) '
      '               VALUES(:Nombres,:Credencial,:Departamento,'
      ':Telefono1,:Extension,:AccesoComedor,:Status,:Comidas);')
    Left = 456
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Nombres'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Credencial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Departamento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Telefono1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Extension'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AccesoComedor'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'STATUS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Comidas'
        Value = nil
      end>
  end
  object QUsuarios: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'select * from usuarios;')
    Left = 544
    Top = 24
    object QUsuariosId: TIntegerField
      FieldName = 'Id'
    end
    object QUsuariosNombres: TStringField
      FieldName = 'Nombres'
      Size = 50
    end
    object QUsuariosCredencial: TStringField
      FieldName = 'Credencial'
      Size = 30
    end
    object QUsuariosDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 100
    end
    object QUsuariosTelefono1: TStringField
      FieldName = 'Telefono1'
    end
    object QUsuariosExtension: TStringField
      FieldName = 'Extension'
    end
    object QUsuariosAccesoComedor: TStringField
      FieldName = 'AccesoComedor'
      Size = 10
    end
    object QUsuariosStatus: TIntegerField
      FieldName = 'Status'
    end
    object QUsuariosCantidadComidas: TIntegerField
      FieldName = 'CantidadComidas'
    end
  end
  object DSUsuarios: TUniDataSource
    DataSet = QUsuarios
    Left = 544
    Top = 72
  end
  object QPreguntarPorCredencial: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'SELECT usuarios.Credencial FROM usuarios'
      'WHERE usuarios.Credencial = :Credencial;')
    Left = 56
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Credencial'
        Value = nil
      end>
  end
  object QInsertarRegistro: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      
        'INSERT INTO registrocomedor (Nombre,Credencial,Fecha,Hora,Depart' +
        'amento,Tipo) '
      'VALUES(:Nombres,:Credencial,:Fecha,:Hora,:Departamento,:Tipo)')
    Left = 48
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Nombres'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Credencial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Fecha'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Hora'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Departamento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Tipo'
        Value = nil
      end>
  end
  object QUltimos5: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'SELECT * FROM registrocomedor ORDER BY id'
      'DESC LIMIT 5;  ')
    Left = 632
    Top = 24
    object QUltimos5Id: TIntegerField
      FieldName = 'Id'
    end
    object QUltimos5Nombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object QUltimos5Credencial: TStringField
      FieldName = 'Credencial'
      Size = 50
    end
    object QUltimos5Departamento: TStringField
      FieldName = 'Departamento'
      Size = 50
    end
    object QUltimos5Fecha: TDateField
      FieldName = 'Fecha'
    end
    object QUltimos5Hora: TTimeField
      FieldName = 'Hora'
    end
  end
  object DSUltimos5: TUniDataSource
    DataSet = QUltimos5
    Left = 632
    Top = 72
  end
  object QCantidadComidasHoy: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'SELECT Id '
      'FROM registrocomedor '
      'WHERE'
      ' Fecha = :PFecha AND'
      ' Credencial = :PCredencial ;')
    Left = 464
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pfecha'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Pcredencial'
        Value = nil
      end>
  end
  object Qhorarios: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'SELECT * '
      'FROM horarioscomedor;')
    Left = 568
    Top = 136
    object QhorariosId: TIntegerField
      FieldName = 'Id'
    end
    object QhorariosTipo: TStringField
      FieldName = 'Tipo'
      Size = 255
    end
    object QhorariosHoraInicio: TTimeField
      FieldName = 'HoraInicio'
    end
    object QhorariosHoraFin: TTimeField
      FieldName = 'HoraFin'
    end
  end
  object QComidasHoy: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'SELECT *'
      'FROM   registrocomedor '
      'WHERE  Fecha = :Pfecha')
    Left = 464
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Pfecha'
        Value = nil
      end>
  end
  object QCantidadClientes: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'SELECT registrocomedor.tipo'
      'FROM registrocomedor'
      'WHERE Fecha = :Fecha;')
    Left = 48
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
        Value = nil
      end>
  end
  object QUsuariosPorNombre: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'SELECT * FROM usuarios'
      'WHERE usuarios.Nombres = :Nombre;')
    Left = 200
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Nombre'
        Value = nil
      end>
    object QUsuariosPorNombreId: TIntegerField
      FieldName = 'Id'
    end
    object QUsuariosPorNombreNombres: TStringField
      FieldName = 'Nombres'
      Size = 50
    end
    object QUsuariosPorNombreCredencial: TStringField
      FieldName = 'Credencial'
      Size = 30
    end
    object QUsuariosPorNombreDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 100
    end
    object QUsuariosPorNombreTelefono1: TStringField
      FieldName = 'Telefono1'
    end
    object QUsuariosPorNombreExtension: TStringField
      FieldName = 'Extension'
    end
    object QUsuariosPorNombreAccesoComedor: TStringField
      FieldName = 'AccesoComedor'
      Size = 10
    end
    object QUsuariosPorNombreStatus: TIntegerField
      FieldName = 'Status'
    end
    object QUsuariosPorNombreCantidadComidas: TIntegerField
      FieldName = 'CantidadComidas'
    end
  end
  object QUsuariosPorCredencial: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'SELECT * FROM usuarios'
      'WHERE usuarios.Credencial = :Credencial;')
    Left = 200
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Credencial'
        Value = nil
      end>
    object QUsuariosPorCredencialId: TIntegerField
      FieldName = 'Id'
    end
    object QUsuariosPorCredencialNombres: TStringField
      FieldName = 'Nombres'
      Size = 50
    end
    object QUsuariosPorCredencialCredencial: TStringField
      FieldName = 'Credencial'
      Size = 30
    end
    object QUsuariosPorCredencialDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 100
    end
    object QUsuariosPorCredencialTelefono1: TStringField
      FieldName = 'Telefono1'
    end
    object QUsuariosPorCredencialExtension: TStringField
      FieldName = 'Extension'
    end
    object QUsuariosPorCredencialAccesoComedor: TStringField
      FieldName = 'AccesoComedor'
      Size = 10
    end
    object QUsuariosPorCredencialStatus: TIntegerField
      FieldName = 'Status'
    end
    object QUsuariosPorCredencialCantidadComidas: TIntegerField
      FieldName = 'CantidadComidas'
    end
  end
  object QReporte: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'SELECT * '
      'FROM registrocomedor'
      'WHERE Fecha >= :PFechaInicio AND Fecha <= :PFechaFin')
    Left = 640
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PFechaInicio'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'PFechaFin'
        Value = nil
      end>
    object QReporteId: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Id'
    end
    object QReporteNombre: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object QReporteCredencial: TStringField
      FieldName = 'Credencial'
      Size = 50
    end
    object QReporteFecha: TDateField
      FieldName = 'Fecha'
    end
    object QReporteHora: TTimeField
      FieldName = 'Hora'
    end
    object QReporteDepartamento: TStringField
      FieldName = 'Departamento'
      Size = 50
    end
    object QReporteTipo: TStringField
      FieldName = 'Tipo'
    end
  end
  object DSReporte: TUniDataSource
    DataSet = QReporte
    Left = 640
    Top = 184
  end
  object QUsuariosSistema: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'Select * from UsuariosSistema')
    Left = 408
    Top = 272
    object QUsuariosSistemaId: TIntegerField
      FieldName = 'Id'
    end
    object QUsuariosSistemaUsuario: TStringField
      FieldName = 'Usuario'
      Size = 50
    end
    object QUsuariosSistemaContraseña: TStringField
      FieldName = 'Contrase'#241'a'
      Size = 50
    end
    object QUsuariosSistemaPerfil: TStringField
      FieldName = 'Perfil'
      Size = 50
    end
  end
  object QFechaDemo: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'SELECT * FROM registrocomedor ORDER BY id'
      'ASC LIMIT 1;  ')
    Left = 208
    Top = 24
    object IntegerField1: TIntegerField
      FieldName = 'Id'
    end
    object StringField1: TStringField
      FieldName = 'Nombre'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'Credencial'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'Departamento'
      Size = 50
    end
    object DateField1: TDateField
      FieldName = 'Fecha'
    end
    object TimeField1: TTimeField
      FieldName = 'Hora'
    end
  end
  object QEditarUsuario: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'UPDATE usuarios '
      'SET '
      'Nombres= :Nombres,'
      'Credencial= :Credencial,'
      'Departamento= :Departamento,'
      'Telefono1= :Telefono1,'
      'Extension= :Extension,'
      'AccesoComedor= :AccesoComedor,'
      '`Status`= :Status,'
      'CantidadComidas= :CantidadComidas'
      ''
      ''
      'WHERE usuarios.Id = :Id;')
    Left = 168
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Nombres'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Credencial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Departamento'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Telefono1'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Extension'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'AccesoComedor'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'STATUS'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'CantidadComidas'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Id'
        Value = nil
      end>
  end
  object QBuscarUsuario: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'SELECT * FROM usuarios WHERE nombres'
      'LIKE '#39'%:usuario%'#39)
    Left = 264
    Top = 272
  end
  object DSBuscarUsuario: TUniDataSource
    DataSet = QBuscarUsuario
    Left = 264
    Top = 328
  end
  object DSUsuariosSistema: TUniDataSource
    DataSet = QUsuariosSistema
    Left = 408
    Top = 320
  end
  object QEliminarUsuarioSistema: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'DELETE FROM usuariossistema'
      'WHERE Id = :Id')
    Left = 528
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Id'
        Value = nil
      end>
  end
  object QPerfiles: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'SELECT DISTINCT usuariossistema.Perfil'
      ''
      'FROM usuariossistema'
      '')
    Left = 640
    Top = 272
  end
  object DSPerfiles: TUniDataSource
    DataSet = QPerfiles
    Left = 640
    Top = 320
  end
  object QInsertarUsuarioSistema: TUniQuery
    Connection = ConeccionMySql
    SQL.Strings = (
      'INSERT INTO usuariossistema '
      '(Usuario,Contrase'#241'a,Perfil)        '
      'VALUES'
      '(:Usuario,:Contrase'#241'a,:Perfil) ;')
    Left = 528
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Usuario'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Contrase'#241'a'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Perfil'
        Value = nil
      end>
  end
end
