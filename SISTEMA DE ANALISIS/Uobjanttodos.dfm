object Fobjanttodos: TFobjanttodos
  Left = 295
  Top = 196
  Caption = 'Objetivos Antecedentes'
  ClientHeight = 609
  ClientWidth = 938
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object GP1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = ' '
    TabOrder = 0
    Height = 609
    Width = 938
    object cxPageControl1: TcxPageControl
      Left = 2
      Top = 18
      Width = 934
      Height = 97
      ActivePage = tabnombre
      Align = alTop
      TabOrder = 0
      Visible = False
      ClientRectBottom = 97
      ClientRectRight = 934
      ClientRectTop = 24
      object tabnombre: TcxTabSheet
        Caption = 'Introducir nombre'
        ImageIndex = 0
        object edt1: TcxTextEdit
          Left = 8
          Top = 24
          BeepOnEnter = False
          TabOrder = 0
          OnKeyPress = edt1KeyPress
          Width = 121
        end
        object btn1: TcxButton
          Left = 176
          Top = 21
          Width = 75
          Height = 25
          Caption = 'Buscar'
          TabOrder = 1
          OnClick = btn1Click
        end
      end
      object tabchtelefono: TcxTabSheet
        Caption = 'Introducir tel'#233'fono'
        ImageIndex = 1
        object btn2: TcxButton
          Left = 176
          Top = 21
          Width = 75
          Height = 25
          Caption = 'Buscar'
          TabOrder = 0
          OnClick = btn2Click
        end
        object edt2: TcxTextEdit
          Left = 8
          Top = 24
          BeepOnEnter = False
          TabOrder = 1
          OnKeyPress = edt2KeyPress
          Width = 121
        end
      end
      object tabchcorreo: TcxTabSheet
        Caption = 'Introducir direcci'#243'n de correo'
        ImageIndex = 2
        object btn3: TcxButton
          Left = 176
          Top = 21
          Width = 75
          Height = 25
          Caption = 'Buscar'
          TabOrder = 0
          OnClick = btn3Click
        end
        object edt3: TcxTextEdit
          Left = 8
          Top = 27
          BeepOnEnter = False
          TabOrder = 1
          OnKeyPress = edt3KeyPress
          Width = 121
        end
      end
      object tabchdir: TcxTabSheet
        Caption = 'Introducir direcci'#243'n'
        ImageIndex = 3
        object lbl1: TLabel
          Left = 16
          Top = 8
          Width = 79
          Height = 13
          Caption = 'Calle donde vive'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl2: TLabel
          Left = 152
          Top = 8
          Width = 59
          Height = 13
          Caption = 'Entre calle 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lbl3: TLabel
          Left = 288
          Top = 8
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHotLight
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object btn4: TcxButton
          Left = 448
          Top = 21
          Width = 75
          Height = 25
          Caption = 'Buscar'
          TabOrder = 0
          OnClick = btn4Click
        end
        object edt4: TcxTextEdit
          Left = 16
          Top = 24
          TabOrder = 1
          Width = 121
        end
        object edt5: TcxTextEdit
          Left = 152
          Top = 24
          TabOrder = 2
          Width = 121
        end
        object edt6: TcxTextEdit
          Left = 288
          Top = 24
          BeepOnEnter = False
          TabOrder = 3
          Width = 121
        end
      end
    end
    object cxGrid1: TcxGrid
      Left = 2
      Top = 115
      Width = 934
      Height = 492
      Align = alClient
      TabOrder = 1
      Visible = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        PopupMenu = AdvPopupMenu1
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.Insert.Enabled = False
        NavigatorButtons.Insert.Visible = False
        NavigatorButtons.Append.Enabled = False
        NavigatorButtons.Append.Visible = False
        NavigatorButtons.Delete.Enabled = False
        NavigatorButtons.Delete.Visible = False
        NavigatorButtons.Edit.Enabled = False
        NavigatorButtons.Edit.Visible = False
        NavigatorButtons.Post.Visible = False
        NavigatorButtons.Cancel.Enabled = False
        NavigatorButtons.Cancel.Visible = False
        NavigatorButtons.Refresh.Enabled = False
        NavigatorButtons.Refresh.Visible = False
        NavigatorButtons.SaveBookmark.Enabled = False
        NavigatorButtons.SaveBookmark.Visible = False
        NavigatorButtons.GotoBookmark.Enabled = False
        NavigatorButtons.GotoBookmark.Visible = False
        NavigatorButtons.Filter.Visible = True
        FilterBox.Visible = fvNever
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataSource = DM.DSserv
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'CANTIDAD=#'
            Kind = skCount
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'idObjetivo'
            Column = cxGrid1DBTableView1idObjetivo
          end>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.Filters = [dtfRelativeDays, dtfRelativeDayPeriods, dtfRelativeYears, dtfMonths, dtfYears]
        Filtering.ColumnFilteredItemsList = True
        FilterRow.Visible = True
        OptionsBehavior.IncSearch = True
        OptionsBehavior.NavigatorHints = True
        OptionsCustomize.ColumnHidingOnGrouping = False
        OptionsCustomize.GroupRowSizing = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Navigator = True
        OptionsView.CellAutoHeight = True
        OptionsView.Footer = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        object cxGrid1DBTableView1idObjetivo: TcxGridDBColumn
          DataBinding.FieldName = 'idObjetivo'
          Width = 63
        end
        object cxGrid1DBTableView1nsiso: TcxGridDBColumn
          DataBinding.FieldName = 'nsiso'
          Width = 74
        end
        object cxGrid1DBTableView1Nombre: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre'
          Width = 112
        end
        object cxGrid1DBTableView1Nombre1: TcxGridDBColumn
          DataBinding.FieldName = 'Nombre1'
          Width = 129
        end
        object cxGrid1DBTableView1Apellido1: TcxGridDBColumn
          DataBinding.FieldName = 'Apellido1'
          Width = 131
        end
        object cxGrid1DBTableView1Apellido2: TcxGridDBColumn
          DataBinding.FieldName = 'Apellido2'
          Width = 155
        end
        object cxGrid1DBTableView1Alias: TcxGridDBColumn
          DataBinding.FieldName = 'Alias'
        end
        object cxGrid1DBTableView1NumeroDeIdentidad: TcxGridDBColumn
          DataBinding.FieldName = 'NumeroDeIdentidad'
          Width = 100
        end
        object cxGrid1DBTableView1Lugar: TcxGridDBColumn
          DataBinding.FieldName = 'Lugar'
          Width = 175
        end
        object cxGrid1DBTableView1Pais: TcxGridDBColumn
          DataBinding.FieldName = 'Pais'
          Width = 175
        end
        object cxGrid1DBTableView1chequeo: TcxGridDBColumn
          DataBinding.FieldName = 'chequeo'
          Width = 205
        end
        object cxGrid1DBTableView1fechaAlta: TcxGridDBColumn
          DataBinding.FieldName = 'fechaAlta'
        end
        object cxGrid1DBTableView1fechaBaja: TcxGridDBColumn
          DataBinding.FieldName = 'fechaBaja'
        end
        object cxGrid1DBTableView1categoriaOperativa: TcxGridDBColumn
          DataBinding.FieldName = 'categoriaOperativa'
          Width = 193
        end
        object cxGrid1DBTableView1fase: TcxGridDBColumn
          DataBinding.FieldName = 'fase'
          Width = 188
        end
        object cxGrid1DBTableView1caso: TcxGridDBColumn
          DataBinding.FieldName = 'caso'
        end
        object cxGrid1DBTableView1finalidadOperativa: TcxGridDBColumn
          DataBinding.FieldName = 'finalidadOperativa'
          Width = 240
        end
        object cxGrid1DBTableView1interes: TcxGridDBColumn
          DataBinding.FieldName = 'interes'
          PropertiesClassName = 'TcxMemoProperties'
        end
        object cxGrid1DBTableView1dptoSeccion: TcxGridDBColumn
          DataBinding.FieldName = 'dptoSeccion'
          Width = 143
        end
        object cxGrid1DBTableView1oficial: TcxGridDBColumn
          DataBinding.FieldName = 'oficial'
        end
        object cxGrid1DBTableView1cumplimientoFinalidad: TcxGridDBColumn
          DataBinding.FieldName = 'cumplimientoFinalidad'
          Width = 108
        end
        object cxGrid1DBTableView1motivoNoCumplimiento: TcxGridDBColumn
          DataBinding.FieldName = 'motivoNoCumplimiento'
          Width = 230
        end
        object cxGrid1DBTableView1niveldeAprobacion: TcxGridDBColumn
          DataBinding.FieldName = 'niveldeAprobacion'
        end
        object cxGrid1DBTableView1niveldeCompartimentacion: TcxGridDBColumn
          DataBinding.FieldName = 'niveldeCompartimentacion'
        end
        object cxGrid1DBTableView1ExpedienteOperativo: TcxGridDBColumn
          DataBinding.FieldName = 'ExpedienteOperativo'
        end
        object cxGrid1DBTableView1CentroDeTrabajo: TcxGridDBColumn
          DataBinding.FieldName = 'CentroDeTrabajo'
        end
        object cxGrid1DBTableView1Ocupacion: TcxGridDBColumn
          DataBinding.FieldName = 'Ocupacion'
        end
        object cxGrid1DBTableView1Cargo: TcxGridDBColumn
          DataBinding.FieldName = 'Cargo'
        end
        object cxGrid1DBTableView1Organismo: TcxGridDBColumn
          DataBinding.FieldName = 'Organismo'
        end
        object cxGrid1DBTableView1Calle: TcxGridDBColumn
          DataBinding.FieldName = 'Calle'
          Width = 151
        end
        object cxGrid1DBTableView1Calle1: TcxGridDBColumn
          DataBinding.FieldName = 'Calle1'
          Width = 153
        end
        object cxGrid1DBTableView1Calle2: TcxGridDBColumn
          DataBinding.FieldName = 'Calle2'
          Width = 154
        end
        object cxGrid1DBTableView1Numero: TcxGridDBColumn
          DataBinding.FieldName = 'Numero'
        end
        object cxGrid1DBTableView1Edificio: TcxGridDBColumn
          DataBinding.FieldName = 'Edificio'
        end
        object cxGrid1DBTableView1Piso: TcxGridDBColumn
          DataBinding.FieldName = 'Piso'
          Width = 50
        end
        object cxGrid1DBTableView1Apartamento: TcxGridDBColumn
          DataBinding.FieldName = 'Apartamento'
          Width = 97
        end
        object cxGrid1DBTableView1Barrio: TcxGridDBColumn
          DataBinding.FieldName = 'Barrio'
          Width = 129
        end
        object cxGrid1DBTableView1Municipio: TcxGridDBColumn
          DataBinding.FieldName = 'Municipio'
        end
        object cxGrid1DBTableView1Provincia: TcxGridDBColumn
          DataBinding.FieldName = 'Provincia'
        end
        object cxGrid1DBTableView1estado: TcxGridDBColumn
          DataBinding.FieldName = 'estado'
        end
        object cxGrid1DBTableView1ktBaja: TcxGridDBColumn
          DataBinding.FieldName = 'ktBaja'
        end
        object cxGrid1DBTableView1clave: TcxGridDBColumn
          DataBinding.FieldName = 'clave'
        end
        object cxGrid1DBTableView1sitio: TcxGridDBColumn
          DataBinding.FieldName = 'sitio'
        end
        object cxGrid1DBTableView1tipodeTecnica: TcxGridDBColumn
          DataBinding.FieldName = 'tipodeTecnica'
        end
        object cxGrid1DBTableView1aplicadopor: TcxGridDBColumn
          DataBinding.FieldName = 'aplicadopor'
        end
        object cxGrid1DBTableView1tipotx: TcxGridDBColumn
          DataBinding.FieldName = 'tipotx'
        end
        object cxGrid1DBTableView1atencionespecial: TcxGridDBColumn
          DataBinding.FieldName = 'atencionespecial'
          Width = 125
        end
        object cxGrid1DBTableView1seccion: TcxGridDBColumn
          DataBinding.FieldName = 'seccion'
        end
        object cxGrid1DBTableView1registro: TcxGridDBColumn
          DataBinding.FieldName = 'registro'
        end
        object cxGrid1DBTableView1idUbicacion: TcxGridDBColumn
          DataBinding.FieldName = 'idUbicacion'
        end
        object cxGrid1DBTableView1idLaborales: TcxGridDBColumn
          DataBinding.FieldName = 'idLaborales'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object DS1: TUniDataSource
    DataSet = DM.TABLEobjanteced
    Left = 208
    Top = 224
  end
  object cmdq1: TUniQuery
    Connection = DM.conserv
    SQL.Strings = (
      
        'select * from `obj ant view 2` where `obj ant view 2`.Calle like' +
        ' :Pcalle;')
    Left = 160
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'Pcalle'
        ParamType = ptInput
      end>
  end
  object cmdq2: TUniQuery
    Connection = DM.conserv
    SQL.Strings = (
      
        'select * from `obj ant view 2` where `obj ant view 2`.Calle1 lik' +
        'e :Pcalle1;')
    Left = 160
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'Pcalle1'
        ParamType = ptInput
      end>
  end
  object DS2: TUniDataSource
    DataSet = cmdq2
    Left = 208
    Top = 272
  end
  object cmdq3: TUniQuery
    Connection = DM.conserv
    SQL.Strings = (
      
        'select * from `obj ant view 2` where `obj ant view 2`.Numero lik' +
        'e :Pnumero;')
    Left = 160
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'Pnumero'
        ParamType = ptInput
      end>
  end
  object DS3: TUniDataSource
    DataSet = cmdq3
    Left = 208
    Top = 320
  end
  object cmdq4: TUniQuery
    Connection = DM.conserv
    SQL.Strings = (
      
        'select * from `obj ant view 2` where `obj ant view 2`.Calle like' +
        ' :Pcalle and `obj ant view 2`.Calle1 like :Pcalle1;')
    Left = 160
    Top = 368
    ParamData = <
      item
        DataType = ftString
        Name = 'Pcalle'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Pcalle1'
        ParamType = ptInput
      end>
  end
  object DS4: TUniDataSource
    DataSet = cmdq4
    Left = 208
    Top = 368
  end
  object cmdq5: TUniQuery
    Connection = DM.conserv
    SQL.Strings = (
      
        'select * from `obj ant view 2` where `obj ant view 2`.Calle1 lik' +
        'e :Pcalle1 and `obj ant view 2`.Numero like :Pnumero;')
    Left = 288
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'Pcalle1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Pnumero'
        ParamType = ptInput
      end>
  end
  object DS5: TUniDataSource
    DataSet = cmdq5
    Left = 336
    Top = 224
  end
  object cmdq6: TUniQuery
    Connection = DM.conserv
    SQL.Strings = (
      
        'select * from `obj ant view 2` where `obj ant view 2`.Calle like' +
        ' :Pcalle and `obj ant view 2`.Numero like :Pnumero;')
    Left = 288
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'Pcalle'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Pnumero'
        ParamType = ptInput
      end>
  end
  object DS6: TUniDataSource
    DataSet = cmdq6
    Left = 336
    Top = 272
  end
  object cmdq7: TUniQuery
    Connection = DM.conserv
    SQL.Strings = (
      
        'select * from `obj ant view 2` where `obj ant view 2`.Calle like' +
        ' :Pcalle and `obj ant view 2`.Calle1 like :Pcalle1 and `obj ant ' +
        'view 2`.Numero like :Pnumero;')
    Left = 288
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'Pcalle'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Pcalle1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Pnumero'
        ParamType = ptInput
      end>
  end
  object DS7: TUniDataSource
    DataSet = cmdq7
    Left = 336
    Top = 320
  end
  object AdvPopupMenu1: TAdvPopupMenu
    Version = '2.5.3.0'
    Left = 752
    Top = 56
    object GenerarReporte1: TMenuItem
      Bitmap.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000F6F0EEBC9581
        B78D76B48972B38971B28770B2876FB1866EB1856DB0846DB0846CB0846BAF82
        6BB0826CB2866DD5BEB2ECE2DB95512CA66543A96C4CA76A4AA56747A46444A3
        6443A26342A16240A1603FA0603FA0613E9E5D3C954820B28770EDE3DD8F4F2B
        CEA796F9EAE6F7E8E4F7E6E2F3DFDAF4E1DCF7E5E1F6E5E1F2DED9F0DCD6F2DF
        DAEBD5CE9C5B39B2886FEDE3DD93512FD7B6A7EAD4CCA4684AB98A73FCEEEBD1
        AFA19C6244AC7960EFDCD5F8E7E4F7E6E3F0DCD69E5E3BB2886FEDE3DD975735
        D9BAACE0C3B88C380F8C3D15DBBBAEC59D8B7A2C037A2E05C59D8BFBECEAF5E4
        E0EED9D39E5D3BB28871EDE3DD9A5C3CDABBAEE5C7BDA44F279E4A22B07255C3
        97838F421C883C15995939F0DBD5F9E8E5EEDAD49F5E3DB28972EDE3DDA06242
        DABEB1E8CBC1B55D37B55E37AB5831AB65459F502B994B258D3E17CAA18FFEF0
        EEEFDAD4A0603EB38972EDE3DDA56749DCC0B3EBD1C7C47654C0714EBC6641B5
        5E37B05A34A756309B4820A76343F3DFDAF2DED9A16140B38A73EDE3DDAA6F50
        DDC2B6EDD7CECF8C6FD09D88CB8D72C77654C06B46BF7554BB7B5EA54B21D3AA
        98F5E5E2A36342B58B73EDE3DDB07658DFC6BAEDDBD3D99E86E2BFB0E6CCC1CF
        8B6ECE8566CD8B70E1C3B8BD6D49BD7351EBD5CEA76A4AB58C75EDE3DDB68064
        D2AD9CE4BEAFE8B7A4DFB09DE3C8BDDDB4A3D7957BD49A81DCBDB0CB8669C26E
        4BC5896EA26341B8907AEDE3DEBC866DD8B6A6ECD4CBEAD2C8E7CBC0EBD5CCF4
        E6E1E3C3B7E5C7BBE7CEC4DEBAABDFB9AAD6AD9BA46544B8907BEDE3DEC28C73
        E6D0C6FFFFFFFFFFFFFEFDFEFEFBFBFFF9F8FFF9F8FEF7F6FEF5F3FDF5F4FFF8
        F8F7EBE8AC7051B8907AEDE2DDCE9C84E1BDADE6CFC3E4C9BDE1C5B8DEC2B3DC
        BEB0DABBACD9B8A9D7B5A6D5B2A2D5B2A2CFA898AB6B49BB937CEEE5DFCB9D86
        D2A08BC59079C08A70BB8469B67E62B1775AAB7153A76B4DA367489F62439C5E
        3C9959399F5E3CC29E8BFDFCFCEFE6E1ECE3DEEDE4DFEDE4DFEDE4DFEEE4DFEE
        E4DFEEE4E0EEE5DFEEE5DFEEE5E0EEE5E0EEE5E0ECE3DDF7F3F0}
      Caption = 'Generar Reporte'
      OnClick = GenerarReporte1Click
    end
  end
end
