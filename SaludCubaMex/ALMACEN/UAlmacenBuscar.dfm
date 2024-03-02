object FAlmacenBuscar: TFAlmacenBuscar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'BUSCAR PRODUCTO EN ALMACEN'
  ClientHeight = 617
  ClientWidth = 888
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 105
    Width = 888
    Height = 512
    Align = alClient
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    ExplicitWidth = 938
    ExplicitHeight = 493
    object cxGrid1DBTableView1: TcxGridDBTableView
      PopupMenu = PopupMenu1
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      OnCellClick = cxGrid1DBTableView1CellClick
      OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
      DataController.DataSource = FDMAlmacen.DSProd_Venc_Todos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.Footer = True
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 15
      object cxGrid1DBTableView1CODIGO_PRODUCTO: TcxGridDBColumn
        DataBinding.FieldName = 'CODIGO_PRODUCTO'
        Width = 146
      end
      object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
        DataBinding.FieldName = 'NOMBRE'
        Visible = False
        GroupIndex = 2
        Width = 184
      end
      object cxGrid1DBTableView1TIPO: TcxGridDBColumn
        DataBinding.FieldName = 'TIPO'
        Visible = False
        GroupIndex = 0
        Width = 145
      end
      object cxGrid1DBTableView1FECHA_DE_VENCIMIENTO: TcxGridDBColumn
        DataBinding.FieldName = 'FECHA_DE_VENCIMIENTO'
        Visible = False
        GroupIndex = 1
        Width = 230
      end
      object cxGrid1DBTableView1LOTE: TcxGridDBColumn
        DataBinding.FieldName = 'LOTE'
        Width = 179
      end
      object cxGrid1DBTableView1PRESENTACION: TcxGridDBColumn
        DataBinding.FieldName = 'PRESENTACION'
        Width = 141
      end
      object cxGrid1DBTableView1LABORATORIO: TcxGridDBColumn
        DataBinding.FieldName = 'LABORATORIO'
        Width = 141
      end
      object cxGrid1DBTableView1PROVEEDOR: TcxGridDBColumn
        DataBinding.FieldName = 'PROVEEDOR'
        Width = 114
      end
      object cxGrid1DBTableView1PRECIO_COSTO_POR_UNIDAD: TcxGridDBColumn
        DataBinding.FieldName = 'PRECIO_COSTO_POR_UNIDAD'
        Width = 223
      end
      object cxGrid1DBTableView1PRECIO_VENTA_POR_UNIDAD: TcxGridDBColumn
        DataBinding.FieldName = 'PRECIO_VENTA_POR_UNIDAD'
        Width = 206
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'PRESIONE EL BOTON BUSCAR PARA VER LOS PRODUCTOS'
    TabOrder = 1
    ExplicitWidth = 938
    Height = 105
    Width = 888
    object MostrarTodos: TcxButton
      Left = 40
      Top = 32
      Width = 137
      Height = 41
      Caption = '    BUSCAR'
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000002B0000002200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000001000046030811A202050C9100000013000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000202046B133466FF3174C1FF2863ABFF030F26D50000002A0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000031112F5CF7377FCFFF479AEFFF4394E7FF194689FF061838E40000
        0141000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00060409169D245AA2FF3980CFFF4394E7FF3E8BDCFF2962AAFF1B4A8FFF081E
        46F30001025B0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0029091E40D9245BA2FF2E6CB6FF3376C2FF4190E1FF3E8CDCFF2D6AB4FF1E4F
        95FF0D2B5FFF02040A8700000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0124091F44DB1F5097FF225599FF2961A8FF3F8CDCFF499FF4FF4190E2FF2F6F
        B9FF22569CFF0F326BFF01050E990000000A0000000000000000000000080000
        003E080808781212139B181818AA121212990606066E00000029000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000100040B64103673FF1D4B8FFF1E4D91FF2963AAFF3A83D2FF479CF1FF4496
        E9FF3478C4FF255CA3FF133977FF020C1FC60000002A06060572343333D67472
        71FF92908EFF9B9997FF9E9C99FF9B9996FF8D8B89FF5E5D5DF71011119A0000
        000F000000000000000000000000000000000000000000000000000000000000
        00000000000000030843061B40CB153F80FF1E4D91FF265DA3FF367BC8FF4599
        EDFF479BEEFF387FCCFF2760A8FF143F81FF172640F08B8986FFB2B0AFFFB5B3
        B0FFADABA8FFA8A5A2FFA5A2A0FFA4A2A0FFA3A2A2FFA5A3A4FF8D8D8EFF2C2D
        2DC6000000230000000000000000000000000000000000000000000000000000
        000000000000000000000000000000040D650C2B60F61B488CFF23579CFF3274
        C0FF4394E6FF489EF3FF3C86D5FF2A67B2FF22457CFFBCBABAFFBFBDBBFFB6B4
        B2FFAEADADFFA4A3A5FF9F9C97FFA49C8DFFB1A58AFFB6A685FFAD9D84FF948D
        89FF3E4043E30000003B00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000010425030F27A7123875FF2154
        9AFF2F6DB7FF3F8DDDFF489EF2FF3E8FE4FF244574FFB3AFADFFC7C5C5FFB4B4
        B6FFB4AC9BFFCEBA8BFFE7CC87FFF3D488FFF6D788FFF7D789FFF5D586FFDFBC
        78FF98846DFF4B4E51F30505055D000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000030B4E0822
        4DE019478BFF2B67B0FF408FE1FF2F78C8FF5F687BFFB4B2B1FFC1C0C1FFCCBA
        90FFF3D486FFF6D688FFF3D489FFF1D389FFF1D389FFF1D389FFF1D389FFF6D9
        8DFFF0C87AFF98826AFF505256F4000000270000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000B0B1325BE12356FFF0F3B7BFF32415BFF8C8B8CFFBDB9B4FFE0C78CFFF6D6
        87FFF1D389FFF1D38AFFF2D38BFFF2D38CFFF2D48CFFF1D38BFFF1D38AFFF1D3
        89FFF5D98DFFE3B76EFF877C73FF191A1B990000000500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0011555350E3A4A5ACFFA1A1A9FFB9B6B5FFBDBCBBFFE3CB8FFFF5D587FFF1D3
        8BFFF2D48DFFF2D590FFF3D691FFF3D793FFF3D793FFF3D692FFF3D691FFF2D5
        8FFFF2D48CFFF7D587FFAE916DFF424447D90101012900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000404
        044D91908FFFCAC8C5FFCCC9C8FFC9C9CDFFD6C59AFFF5D586FFF2D48DFFF2D6
        90FFF3D795FFF4D998FFF4DA9BFFF5DB9CFFF5DA9DFFF4DA9CFFF4D99AFFF3D8
        97FFF3D693FFF8DA91FFC9A571FF5E5F62F20505054900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000F0F
        0F77A9A7A6FFBBB9B7FFBEBDBEFFC2BCB3FFEFD188FFF2D48CFFF2D691FFF3D8
        97FFF4DA9CFFF5DCA1FFF5DDA4FFF6DEA7FFF6DFA7FFF6DEA6FFF5DDA4FFF5DC
        A0FFF4DA9BFFF8DD98FFD2AE78FF636264F10506064700000000000000000000
        0000000000000000000000000000000000000000000000000000000000001616
        1685A9A7A5FFB4B1AFFFB4B3B7FFD1C29EFFF6D588FFF2D590FFF3D896FFF5DB
        9DFFF6DDA4FFF6E0A9FFF7E2AEFFF8E3B1FFF8E3B2FFF8E3B1FFF7E2AEFFF6E0
        AAFFF5DDA3FFFAE09FFFCFAD7CFF4F5053DC0101012800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000E0E
        0E6BA09E9CFFAEABA9FFB2B0AFFFE7CE93FFF4D58CFFF3D794FFF4DA9BFFF5DD
        A3FFF7E0ABFFF8E3B2FFF9E6B8FFFAE7BCFFFAE8BDFFFAE8BCFFF9E6B9FFF8E3
        B3FFF7E1ACFFFADEA0FFBEA382FF27292BA30000000500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000202
        0231848280FFABA9A7FFB4AFA8FFF0D38EFFF3D58FFFF3D897FFF5DB9EFFF6DF
        A7FFF8E2B0FFF9E5B8FFFAE8C0FFFBEBC5FFFBEBC7FFFBEBC6FFFAE9C1FFF9E6
        BBFFFAE7B6FFF1CF94FF988B80FF050606440000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000282828A3A19F9CFFB0ACA7FFE9C989FFF4D790FFF4D898FFF5DCA0FFF7E0
        AAFFF8E4B4FFF9E7BCFFFBEAC5FFFCEDCBFFFDEFCFFFFCEECEFFFBEBC8FFFAEA
        C2FFFDE5B2FFCBAE8DFF3B3C3EBD000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000006353534B1A4A4A5FFD8C19EFFF4D489FFF4D999FFF5DCA0FFF7E0
        AAFFF8E4B4FFF9E7BCFFFBEBC6FFFCEECDFFFDF0D2FFFDEFD0FFFCEDCAFFFFED
        C3FFE3C49BFF716F6EEF02020228000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000022D2D2DAAB7B3B1FFEAC58CFFF5D993FFF5DDA0FFF6DF
        A7FFF8E2B1FFF9E6B9FFFAE9C2FFFBECC8FFFCEDCCFFFEF0CFFFFFEDC4FFE9CA
        A2FF77726FEE0202022C00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000052527289AC4BAB2FFECC68FFFF0CE89FFF6DE
        A2FFF8E3AFFFF9E6B6FFFBEABDFFFCECC3FFFDE8BDFFF8DCB0FFD3BA9EFF6764
        61D9040404340000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001A1B1C80B7B5B5FFE5CCB3FFEFC8
        95FFF6D39BFFF7D69FFFF8D8A6FFF1D1A5FFD8BA99FF968F88F6242526900101
        010B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000007070734303233906E6E
        6ECF97928FF19E9691F77B7673DC4A4949B11E1F21700405051D000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000030303191011
        124E262829802D2F318A1718195E080909300101010700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 0
      OnClick = MostrarTodosClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 680
    Top = 280
    object ELIMINARPRODUCTO1: TMenuItem
      Caption = 'ELIMINAR PRODUCTO'
      OnClick = ELIMINARPRODUCTO1Click
    end
  end
end
