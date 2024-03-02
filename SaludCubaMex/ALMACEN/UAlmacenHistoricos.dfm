object FAlmacenHistoricos: TFAlmacenHistoricos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'HISTORICOS DE ALMACEN'
  ClientHeight = 611
  ClientWidth = 893
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'REGISTROS HISTORICOS DE ALMACEN'
    TabOrder = 0
    Height = 611
    Width = 893
    object cxGrid1: TcxGrid
      Left = 2
      Top = 115
      Width = 889
      Height = 488
      Align = alBottom
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = FDMAlmacen.DSAlmacenHistoricos
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'ENTRADAS =# '
            Kind = skSum
            FieldName = 'ENTRADA'
            Column = cxGrid1DBTableView1ENTRADA
            DisplayText = 'ENTRADAS =#'
          end
          item
            Format = 'SALIDAS = # '
            Kind = skSum
            FieldName = 'SALIDA'
            Column = cxGrid1DBTableView1SALIDA
            DisplayText = 'SALIDAS = #'
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'ENTRADAS = #'
            Kind = skSum
            FieldName = 'ENTRADA'
            Column = cxGrid1DBTableView1ENTRADA
            DisplayText = 'ENTRADAS = #'
          end
          item
            Format = 'SALIDAS = #'
            Kind = skSum
            FieldName = 'SALIDA'
            Column = cxGrid1DBTableView1SALIDA
            DisplayText = 'SALIDAS = #'
          end
          item
            Format = 'REG = #'
            Kind = skSum
            FieldName = 'CODIGO_PRODUCTO'
            Column = cxGrid1DBTableView1CODIGO_PRODUCTO
            DisplayText = 'REG = #'
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end>
            SummaryItems = <
              item
                Format = 'ENTRADA=#'
                Kind = skSum
                FieldName = 'ENTRADA'
                Column = cxGrid1DBTableView1ENTRADA
                DisplayText = 'ENTRADA=#'
              end
              item
                Format = 'SALIDAS =#'
                Kind = skSum
                FieldName = 'SALIDA'
                Column = cxGrid1DBTableView1SALIDA
                DisplayText = 'SALIDAS =#'
              end>
          end>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.Footer = True
        OptionsView.FooterAutoHeight = True
        OptionsView.FooterMultiSummaries = True
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 15
        object cxGrid1DBTableView1CODIGO_PRODUCTO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO_PRODUCTO'
          Width = 155
        end
        object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
          DataBinding.FieldName = 'NOMBRE'
          Visible = False
          GroupIndex = 0
          Width = 214
        end
        object cxGrid1DBTableView1ENTRADA: TcxGridDBColumn
          DataBinding.FieldName = 'ENTRADA'
          Width = 183
        end
        object cxGrid1DBTableView1SALIDA: TcxGridDBColumn
          DataBinding.FieldName = 'SALIDA'
          Width = 156
        end
        object cxGrid1DBTableView1TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO'
          Width = 192
        end
        object cxGrid1DBTableView1PROVEEDOR: TcxGridDBColumn
          DataBinding.FieldName = 'PROVEEDOR'
          Width = 223
        end
        object cxGrid1DBTableView1PRESENTACION: TcxGridDBColumn
          DataBinding.FieldName = 'PRESENTACION'
          Width = 181
        end
        object cxGrid1DBTableView1LABORATORIO: TcxGridDBColumn
          DataBinding.FieldName = 'LABORATORIO'
          Width = 220
        end
        object cxGrid1DBTableView1LOTE: TcxGridDBColumn
          DataBinding.FieldName = 'LOTE'
          Width = 199
        end
        object cxGrid1DBTableView1FECHA_DE_ENTRADA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA_DE_ENTRADA'
          Width = 179
        end
        object cxGrid1DBTableView1FECHA_DE_SALIDA: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA_DE_SALIDA'
          Width = 165
        end
        object cxGrid1DBTableView1PRECIO_COSTO_POR_UNIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'PRECIO_COSTO_POR_UNIDAD'
          Width = 216
        end
        object cxGrid1DBTableView1PRECIO_VENTA_POR_UNIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'PRECIO_VENTA_POR_UNIDAD'
          Width = 191
        end
        object cxGrid1DBTableView1FECHA_DE_VENCIMIENTO: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA_DE_VENCIMIENTO'
          Width = 171
        end
        object cxGrid1DBTableView1OPERACION: TcxGridDBColumn
          DataBinding.FieldName = 'OPERACION'
          Width = 197
        end
        object cxGrid1DBTableView1FECHA_DE_LA_OPERACION: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA_DE_LA_OPERACION'
          Width = 173
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object cxDateEdit2: TcxDateEdit
      Left = 20
      Top = 48
      Properties.DateButtons = [btnClear, btnNow]
      Properties.InputKind = ikRegExpr
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 1
      Width = 121
    end
    object cxDateEdit3: TcxDateEdit
      Left = 159
      Top = 48
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 2
      Width = 121
    end
    object cxButton3: TcxButton
      Left = 331
      Top = 25
      Width = 158
      Height = 49
      Caption = '      MOSTRAR'
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
        000000000000000000000000000000000000000000050000000C000000080000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000010125060A11770D1626AC0E192AB9070B14990000
        0047000000050000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000050910691E365DEA29497CFF2C5085FF305890FF2C5086FF1322
        3AD7000000510000000600000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000009101C7F2B4D81FF2F558BFF315B93FF35649EFF3A6EABFF3B71AFFF2B4D
        82FF111E34D00000004D00000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000407
        0D522E548AFF35649EFF396BA8FF3C73B2FF3F7ABBFF4381C5FF4789CFFF3059
        8FFF28487BFF0F1B2EC80000003C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000051F38
        5ED23C73B2FF3F79BAFF4380C3FF4686CBFF488DD3FF4C94DDFF4C94DDFF305A
        91FF2A4D81FF294A7CFF0B1321B60000002D0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000050910383666
        A1FF4788CEFF488BD2FF4B91DAFF4D96E0FF4F9AE6FF54A4F2FF4688CDFF305A
        91FF2E568CFF2C5186FF264577FE131821B2090907730000003F0000000E0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000B14234E407B
        BCFF4D97E1FF4E98E3FF519DE9FF53A1EEFF55A7F6FF529FECFF3B6FADFF3563
        9DFF325E96FF2F588DFF2A4F84FF35517DFF999A9CFF44413FD20000005D0000
        0002000000000000000700000025020202440606065D07070765020202540000
        00310000000D0000000000000000000000000000000000000000070D16384079
        BAFF56A8F7FF54A4F2FF56A7F7FF56A9F9FF529FECFF427FC2FF3C72B0FF396D
        AAFF3666A1FF336098FF30598FFF23497FFF677D9FFFD6D2D0FF2C2C2BBA0000
        00390E0E0D6A393737B5676563E3827F7EF88D8A89FF8A8886FF797775F84746
        45D60B0B0B870000002200000000000000000000000000000000000000001B31
        51B34D95DFFF57ABFBFF52A1EEFF4E96E0FF4789CEFF4382C5FF417DBEFF3D75
        B5FF3A6EABFF3768A4FF34619AFF2D5890FF3A5987FFE7E7E8FF827F7DF06B6A
        69E6AAA8A6FFB3B1AFFFAEABAAFFA7A4A3FF9F9D9BFF999695FF949190FF9390
        8EFF7D7A78FC0A0A0A840000000A000000000000000000000000000000000102
        030D172A48A64585CBFF54A5F3FF4F99E3FF4C92DBFF488CD2FF4585C9FF417D
        C0FF3E77B6FF3B71AEFF386AA6FF2B5B96FF577198FFF8F7F5FF9A9795FFBEBC
        BAFFBBBAB8FFB2B0AFFFABA9A8FFA6A4A2FFA09E9CFF9A9896FF949290FF8E8B
        8AFF908D8BFF4E4C4BDD00000042000000000000000000000000000000000000
        0000000000000E192C793D73B2FD55A5F3FF529FEBFF4C93DDFF498DD4FF4686
        CBFF4280C2FF3F79B9FF3D75B4FF25538EFFAAB3C4FFDFDCD9FFABA9A8FFA7A5
        A3FFBCBBB9FFB5B3B2FFAFADABFFA9A7A6FFA3A1A0FF9E9C9AFF979594FF928F
        8DFF8D8B88FF8A8784FF1716169D000000130000000000000000000000000000
        00000000000000000000080E184B2F5689E94D98E4FF53A2F0FF4D95DFFF4A8E
        D6FF4788CEFF4586CBFF2E65A6FF617698FFE1E0DDFFB5B3B1FFFAFAFAFFB5B3
        B2FFB8B6B5FFB9B7B6FFB2B1AFFFADABAAFFA9A7A5FFA2A0A0FF989998FF9092
        92FF8B8C8CFF8D8B89FF63605FEC010101570000000000000000000000000000
        00000000000000000000000000000305091E253D61CB4589D2FF54A6F5FF509C
        E9FF478ED8FF2F67A8FF5A7192FFCCCBCBFFACAAA7FFD3D1D1FFFAFAFAFFB7B5
        B4FFBCBBBAFFBEBCBBFFB7B6B5FFAAA8A9FF989697FF968C8AFFA28D85FFA889
        7EFFA78479FF938C8AFF878887FF252322B30000001E00000000000000000000
        000000000000000000000000000000000000373636774B6080FF3C74B4FF3D74
        B3FF426594FF717D92FFBEBBB8FFA8A5A2FFB5B3B2FFE3E3E2FFDBDAD9FFACAB
        A9FFC9C8C8FFB2B1B2FFA4A19EFFACA496FFC8B99FFFE9D4B0FFFDE4BBFFFFE5
        BBFFFFD3AAFFF1B397FFC1B3AEFF6E6E6DF20201015E00000000000000000000
        00000000000000000000000000000000000009080818726F6CD47A797FFF7B7B
        80FF9B9896FFA6A39EFF989693FFAAA8A7FFC9C8C7FFCCCBCAFFAAA9A7FFB9B8
        BAFFAAA7A4FFBEB29DFFECD9B1FFFFEEC0FFFFF5C6FFFFF5C8FFFFF5CAFFFFF8
        CDFFFFFDD2FFFFEEC1FFFBC4ABFFC1C1C1FF1818189A00000007000000000000
        0000000000000000000000000000000000000000000003030310615D5BC5B7B5
        B2FF878482FF868380FF9D9A98FFAAA8A7FFACAAA8FFA3A1A1FFA3A3A4FFB7AB
        9AFFEAD0A5FFFFE8B5FFFFE7B7FFFFE6B7FFFFE8B9FFFFE9BBFFFFEBBEFFFFED
        C0FFFFEFC2FFFFF5C6FFFEC7A5FFE2DBDAFF272727A500000004000000000000
        000000000000000000000000000000000000000000000000000F8E8C8CDDFFFF
        FFFFDEDDDDFFA5A2A1FF979493FFA5A2A0FFB1B2B3FFA8A29EFFD2B594FFFEDA
        A4FFFFDDA9FFFFDCAAFFFFDDACFFFFDFAEFFFFE1B0FFFFE3B3FFFFE5B5FFFFE6
        B7FFFFE7B8FFFFEABDFFFFC9ADFFDCD9D9FF1111107800000000000000000000
        000000000000000000000000000000000000000000001A191942CAC8C7FFF4F3
        F4FFFEFEFEFFFCFCFCFFF3F2F2FFE3E6E8FFB3A69EFFE9BB90FFFFD49FFFFFD1
        9FFFFFD2A0FFFFD4A2FFFFD7A4FFFFD8A6FFFFDAA8FFFFDBA9FFFFDDAAFFFFE0
        B0FFFFE9C1FFFED6B3FFFFD8C9FF919393EB0000002B00000000000000000000
        0000000000000000000000000000000000000000000024232247C7C5C4FFECEB
        EBFFF5F4F4FFFFFFFFFFF3F7F8FFB2A199FFECB287FFFFC998FFFEC697FFFEC8
        98FFFECA99FFFECC9AFFFECD9BFFFFCF9DFFFFD3A0FFFFD7A6FFFFDEB4FFFFE7
        C5FFFFE9CBFFFEBDA1FFDED7D5FF1E1E1E860000000000000000000000000000
        00000000000000000000000000000000000000000000090909199C9998EAE7E5
        E4FFEDEDECFFFCFEFFFFBCB3B1FFE39F79FFFFBE8DFFFDBC8EFFFDBF91FFFDC2
        95FFFDC699FFFECBA0FFFED0A8FFFED5B0FFFEDCBAFFFEE1C4FFFEE6CCFFFFE9
        CFFFFFB999FFEDD1CAFF585A5AC60000000D0000000000000000000000000000
        00000000000000000000000000000000000000000000000000003E3D3C88D4D2
        D1FFEDEDECFFD4D7D8FFC88D75FFFFB387FFFCBF9AFFFDC7A5FFFDCCACFFFDD0
        B2FFFED5B8FFFED8BEFFFEDCC3FFFEDEC6FFFEE0C8FFFEE5CDFFFFE7CFFFFEBD
        A0FFEBC3B5FF868889E703030331000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000070706158E8C
        8BE1E7E8E8FFB3A19BFFF49E7AFFFEC7A9FFFDCCB3FFFDCFB6FFFDD2B9FFFDD5
        BDFFFDD7C0FFFDDAC4FFFEDCC7FFFEDFCAFFFEE6D3FFFFDFC8FFFBB89DFFDABB
        B1FF7A7D7EE10505053700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002C2B
        2A68BEC0BFFFA78E85FFFEB69AFFFDCFBAFFFDCEB9FFFDD2BDFFFDD4C0FFFDD7
        C4FFFDDAC7FFFDDDCBFFFEE3D2FFFFE3D1FFFFCAB2FFF0B098FFC2B1AAFF4648
        49B30101011C0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000202
        0205666463C9928884FFEFA68BFFFFD3C0FFFDD6C6FFFDD8C7FFFDDBCBFFFEDE
        CFFFFFE1D1FFFFDCCAFFFFC7AFFFF2B097FFD1AC9EFF908E8DF01A1B1B700000
        0003000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001A191942818281F7A6897EFFEDA48AFFFFBFA8FFFFC8B3FFFFC8B3FFFDC1
        AAFFF3B39BFFDEA591FFC0A196FF96928FF63739399B03030323000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002A282865808080F88B8380FFA4877DFFB08C7FFFAF8E81FFA991
        88FF9A908CFD676968D22526267E030303240000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001313122C393837734B4C4C964E4F4F9C4747478C2727
        27640B0B0B2F0000000500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 3
      OnClick = cxButton3Click
    end
    object cxLabel1: TcxLabel
      Left = 20
      Top = 25
      Caption = 'DESDE'
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 159
      Top = 25
      Caption = 'HASTA'
      Transparent = True
    end
  end
end
