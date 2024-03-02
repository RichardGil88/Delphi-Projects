object FAlmacenMover: TFAlmacenMover
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'SACAR PRODUCTOS DEL ALMACEN'
  ClientHeight = 598
  ClientWidth = 979
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = '        SELECCIONE EL PRODUCTO A SACAR DEL ALMACEN'
    TabOrder = 0
    Height = 305
    Width = 979
    object cxGrid1: TcxGrid
      Left = 2
      Top = 15
      Width = 975
      Height = 282
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu1
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataSource = FDMAlmacen.DSProd_Venc_Todos
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Cant = #'
            Kind = skSum
            FieldName = 'EXISTENCIA'
            DisplayText = 'Cant = '
            VisibleForCustomization = False
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
                Column = cxGrid1DBTableView1NOMBRE
              end>
            SummaryItems = <
              item
                Kind = skSum
                FieldName = 'EXISTENCIA'
                Column = cxGrid1DBTableView1NOMBRE
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
        OptionsView.Footer = True
        OptionsView.Indicator = True
        object cxGrid1DBTableView1CODIGO_PRODUCTO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO_PRODUCTO'
          Width = 121
        end
        object cxGrid1DBTableView1TIPO: TcxGridDBColumn
          DataBinding.FieldName = 'TIPO'
          Visible = False
          GroupIndex = 0
        end
        object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
          DataBinding.FieldName = 'NOMBRE'
          Width = 153
        end
        object cxGrid1DBTableView1FECHA_DE_VENCIMIENTO: TcxGridDBColumn
          DataBinding.FieldName = 'FECHA_DE_VENCIMIENTO'
          Width = 160
        end
        object cxGrid1DBTableView1PRECIO_COSTO_POR_UNIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'PRECIO_COSTO_POR_UNIDAD'
          Width = 180
        end
        object cxGrid1DBTableView1PRECIO_VENTA_POR_UNIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'PRECIO_VENTA_POR_UNIDAD'
          Width = 190
        end
        object cxGrid1DBTableView1LOTE: TcxGridDBColumn
          DataBinding.FieldName = 'LOTE'
        end
        object cxGrid1DBTableView1PRESENTACION: TcxGridDBColumn
          DataBinding.FieldName = 'PRESENTACION'
        end
        object cxGrid1DBTableView1LABORATORIO: TcxGridDBColumn
          DataBinding.FieldName = 'LABORATORIO'
        end
        object cxGrid1DBTableView1PROVEEDOR: TcxGridDBColumn
          DataBinding.FieldName = 'PROVEEDOR'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 305
    Align = alClient
    Caption = 'SELECCIONE LA CANTIDAD A MOVER'
    TabOrder = 1
    Height = 293
    Width = 979
    object cxSpinEdit1: TcxSpinEdit
      Left = 32
      Top = 119
      TabOrder = 0
      Width = 184
    end
    object cxLabel1: TcxLabel
      Left = 32
      Top = 96
      Caption = 'SELECCIONE LA CANTIDAD A MOVER'
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 328
      Top = 96
      Caption = 'NOMBRE'
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 541
      Top = 156
      Caption = 'PRESENTACION'
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 541
      Top = 41
      Caption = 'LABORATORIO'
      Transparent = True
    end
    object cxLabel5: TcxLabel
      Left = 755
      Top = 41
      Caption = 'LOTE'
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 540
      Top = 96
      Caption = 'PROVEEDOR'
      Transparent = True
    end
    object cxLabel8: TcxLabel
      Left = 328
      Top = 156
      Caption = 'FECHA DE VENCIMIENTO'
      Transparent = True
    end
    object cxTextEdit1: TcxTextEdit
      Left = 328
      Top = 119
      Properties.ReadOnly = True
      TabOrder = 8
      Width = 193
    end
    object cxTextEdit2: TcxTextEdit
      Left = 541
      Top = 179
      Properties.ReadOnly = True
      TabOrder = 9
      Width = 193
    end
    object cxTextEdit3: TcxTextEdit
      Left = 540
      Top = 64
      Properties.ReadOnly = True
      TabOrder = 10
      Width = 193
    end
    object cxTextEdit5: TcxTextEdit
      Left = 755
      Top = 64
      Properties.ReadOnly = True
      TabOrder = 11
      Width = 193
    end
    object cxTextEdit6: TcxTextEdit
      Left = 540
      Top = 119
      Properties.ReadOnly = True
      TabOrder = 12
      Width = 193
    end
    object cxTextEdit7: TcxTextEdit
      Left = 328
      Top = 179
      Properties.ReadOnly = True
      TabOrder = 13
      Width = 193
    end
    object cxLabel9: TcxLabel
      Left = 755
      Top = 96
      Caption = 'PRECIO COSTO POR UNIDAD'
      Transparent = True
    end
    object cxTextEdit8: TcxTextEdit
      Left = 755
      Top = 119
      Properties.ReadOnly = True
      TabOrder = 15
      Width = 193
    end
    object cxLabel10: TcxLabel
      Left = 755
      Top = 156
      Caption = 'PRECIO VENTA POR UNIDAD'
      Transparent = True
    end
    object cxTextEdit9: TcxTextEdit
      Left = 755
      Top = 179
      Properties.ReadOnly = True
      TabOrder = 17
      Width = 193
    end
    object cxButton1: TcxButton
      Left = 32
      Top = 160
      Width = 184
      Height = 40
      Caption = 'SACAR DE ALMACEN'
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000002000000020000000200000002000000010000
        0001000000010000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0002000000040000000600000007000000080000000800000008000000080000
        0007000000060000000500000004000000030000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0004000000090000000D00000010000000120000001200000012000000120000
        0011000000100000000F0000000C0000000A0000000700000004000000020000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00060000001100000018000000190000001A0000001A0000001A0000001A0000
        001A00000019000000180000001700000014000000100000000A000000050000
        0002000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        00060000000F00000015000000180000001A0000001A0000001A0000001A0000
        001A0000001A0000001A0000001A0000001A0000001800000012000000090000
        0003000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0003000000070000000B00000010000000120000001500000017000000180000
        001A0000001900000015000000120000000F00000012000000150000000C0000
        0003000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000020000000400000007000000090000000B0000000D0000000F0000
        00100001011404271782053520AD0428187D031B11500000000C000000060000
        0002000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000020000000300000004000000050000
        000300020119095936D50C6F44FF17A366FF15B36EF204221553000000000000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000105030E010906140105030B0001010300000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0000010A06420B6841F4107349FF20AB70FF14B36EFF0F8552B9010B071F0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000010B07340C6041D40D6D49E90B6543BF095338970638257A031E145F020F
        0A3B0106041E0106041300000000000000000000000000000000000000000000
        000005291A6A0B6942FA177C51FF25B77AFF12B36FFF14B36EF90A59388B0001
        0004000000000000000000000000000000000000000000000000000000000000
        0000052C1E5D0F734FF713885EFF1EC58AFF19C788FF16BF81FF15BC7EFF13AC
        73F5108B5DD60E7F54CA0B6443B708462E98052F1F6D05291A4F020D082C0106
        041D073F299D0A6842FB209062FF2FC085FF11B471FF14B471FF13AC6CEB0635
        215C000000000000000000000000000000000000000000000000000000000000
        0000073B2A79157B59FF159A6DFF37D39DFF22CA8FFF16C788FF17C787FF17C7
        87FF17C786FF17C484FF16C484FF16C181FF16C080FF14B679FF14AE73FE1190
        5EEB0F8456E9118859FC31B27EFF25BE81FF13B774FF14B675FF14B673FF1195
        5FCB0108051E0000000000000000000000000000000000000000000000000000
        0000083C2B8E198360FF1AA577FF3DD7A3FF1FCC91FF15C98BFF17C88BFF18C7
        89FF17C688FF17C587FF17C486FF17C485FF16C283FF16C282FF16C281FF16C3
        82FF16C280FF17BE7EFF1DBE7FFF16BC7BFF15BA79FF15B977FF15B877FF15BB
        77FF0C6943990003020C00000000000000000000000000000000000000000000
        00010D4E39BA198663FF26B98AFF75E5C0FF44D8A7FF21CE95FF16CC8FFF14CA
        8CFF16C98BFF17C98BFF17C88AFF17C789FF17C688FF17C586FF17C385FF16C3
        83FF16C182FF16C181FF15BF7FFF16BE7EFF16BD7DFF15BC7BFF15BB7AFF15BA
        79FF15BD7AF70632206100000000000000000000000000000000000000000107
        051C167357DF1B8966FF35CA9BFFA1EFD6FF7CE6C4FF68E0B9FF57DDB1FF3BD6
        A3FF26D097FF1ACD90FF15CA8CFF15CA8CFF17C98CFF18C88BFF17C789FF17C6
        88FF17C586FF17C484FF17C384FF16C283FF16C181FF16C07FFF16BF7EFF16BE
        7EFF15BD7CFF12A269D502160F3200000000000000000000000000000000051D
        15351F7C5FE3249975FF53DDB2FFB1F2DEFF80E8C8FF79E6C4FF7AE6C4FF75E4
        C1FF6DE2BCFF55DCB0FF3AD6A2FF2AD199FF1BCD92FF15CB8EFF15C98CFF16C9
        8BFF16C78AFF16C788FF16C687FF16C586FF16C485FF16C283FF15C282FF14C0
        80FF16C080FF1DC283FF118257A80004030D0000000000000000000000000E35
        2A6042977EF641B291FF6DE4C1FFBCF5E4FF7DE9C8FF7DE8C7FF7CE8C7FF7AE6
        C5FF78E5C3FF77E5C3FF75E4C1FF6CE2BCFF5CDEB4FF4BD9ABFF3AD5A1FF2AD0
        99FF21CD92FF1ECC90FF1CCA8EFF1CCA8CFF1CC88CFF1DC88BFF21C88CFF2BC9
        90FF35CB94FF3ECC98FF2EC88EFA073F2A720000000000000000000000001545
        377358A891FF46C29EFF83EBCCFFF1FDFAFFBDF4E4FFA9F1DBFF96EDD3FF8BEB
        CEFF7FE9C9FF7DE8C8FF7BE7C5FF76E6C3FF74E5C1FF72E4BFFF6EE2BDFF68E1
        BAFF64DFB7FF5BDCB1FF54DAADFF51D9ABFF51D7AAFF54D7ABFF53D7AAFF52D6
        A8FF4FD4A5FF4BD2A2FF46D09EFF1CA673CC0000000000000000000000000410
        0D291846397D1A8164B33DCAA3D797E7D0ECC4FDEDFFC5FEEEFFC5F8E9FFC8F6
        E9FFD1F7ECFFC5F5E7FFB7F3E1FFA5EFD9FF9CEDD4FF8EEACEFF86E9C9FF80E7
        C7FF73E4C0FF6BE2BCFF6AE1BBFF68E0B9FF64DEB6FF60DDB3FF5CDBB1FF59DA
        AEFF54D7ABFF56D7ABFF6BE2B9FF19684B8E0000000000000000000000000000
        0000000000000106051404281E37054533610B5F46860D6C519C1A9975B326A6
        81B940B493C75AD0AEE478E6C7FC89F3D4FF9BF4DAFFA0F2D9FFA0F3D9FF9AF0
        D6FF99EDD3FF8AEACCFF6FE4BFFF6EE3BEFF6BE2BCFF68E0BAFF63DFB7FF60DD
        B4FF75E2BDFF67D5B1E71A624A7D0003020F0000000000000000000000000000
        000000000000000000000000000000000000000000000000000000010102010D
        0A0E031A141E04291E2F063A2B42032E22500642315C0E664C791FA57EDF26C5
        95FF8FE8CDFFC0F5E5FF75E7C4FF76E7C4FF72E6C1FF70E4C0FF81E6C6FF81E9
        C8FA339072A3061D163700000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000001090718096247D10F8D
        67FF95E5CEFFACF4DFFF7EEACBFF7DEACAFF85EACCFFA5F2DBFF78D3B6DC1449
        3864000302080000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000420183F0C7657E32495
        74FFC1F2E4FF97F2D8FF85EDCFFFA1F1DAFFA0F5DDF83689709F03120D280000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000062B21600B8060F438AD
        8CFFE3FCF5FFC0F7E8FFBEFAE9FF7DD0BAD8144637620003020B000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000001083E30820A8765FF4BC2
        A2FFF5FFFFFFBCF0E2F0317C688A02130E250000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000062C225F0B6F54CE2599
        7BCF3C9E84A307261E3C00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000003020F04211945031C
        154303251C2C0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 18
      OnClick = cxButton1Click
    end
    object cxLabel11: TcxLabel
      Left = 328
      Top = 41
      Caption = 'TIPO'
      Transparent = True
    end
    object cxTextEdit10: TcxTextEdit
      Left = 328
      Top = 64
      Properties.ReadOnly = True
      TabOrder = 20
      Width = 193
    end
    object cxLabel7: TcxLabel
      Left = 32
      Top = 46
      Caption = 'EXISTENCIA'
      Transparent = True
    end
    object cxTextEdit4: TcxTextEdit
      Left = 32
      Top = 69
      Properties.ReadOnly = True
      Properties.OnEditValueChanged = cxTextEdit4PropertiesEditValueChanged
      TabOrder = 22
      Width = 193
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 520
    Top = 144
    object ELIMINARREGISTRO1: TMenuItem
      Caption = 'ELIMINAR REGISTRO'
      OnClick = ELIMINARREGISTRO1Click
    end
  end
end
