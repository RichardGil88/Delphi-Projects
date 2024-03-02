object FormEliminarUsuarioSistema: TFormEliminarUsuarioSistema
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Eliminar Usuario del Sistema'
  ClientHeight = 412
  ClientWidth = 368
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxButton1: TcxButton
    Left = 96
    Top = 368
    Width = 169
    Height = 25
    Caption = '   Eliminar'
    OptionsImage.Glyph.SourceDPI = 96
    OptionsImage.Glyph.Data = {
      89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
      6100000020744558745469746C650052656D6F76653B47726F75703B48656164
      65723B44656C657465237E9F020000025E49444154785E6D924D48545114C77F
      7766520B290D4124A5511123AD500C224326A134330D84283711084A8B1613A4
      7D1181ABA845EDAC4808245C946060A22912DA22FA7042A24402432718C5D0D1
      5266DEBD759CF7704C2FEFBC7316F7FF3FBF73B83C79FE1940012EC0FD5F7846
      4E55578CD7D50503B5B5EDD59999A91F2AABDA472BAA82FDBEF2E3A259153EEA
      FC34A05CCA0780910F148663A55E96AEF9F1369C66F1CB04C13701D20F17909C
      9B45A0F5F1D491E1C16C0FA01696223EFF85838E1EA7D0DA62DCBB9BD9FE3ED2
      8AF79073B61C5738C4CF9E574C876606104400CB321803777A278977C9D8EEA1
      E47C135F1B1B284A3424EED846787A96F73D1FA7EE057F5C06B40B509665C574
      5A632C83D65A82BD195B997B709FDCD2023C096EC2DFA7484872535453967929
      2DEB2EE08E11680318C28B118CD4688C51247920F4F61DF9B5854C8C8CF16D72
      85BC74C5AEC26CE616E62B01972746200268A9CE01659C09702B48BA7D95E1E6
      5B6C39544C65DB4DFAFC37186AEB9E0945A34D8015231003A0B3670C910B8490
      88717EB697FDDD5DFC9A5F26392505AFFF3AF51D0FF3802591AE23A83B512000
      203628C92019D8996A502E37DDAF2700568C31518035026378F632209DC50C2D
      3F63D318082FFEA1B9B14CA8883FAB04DA1EE1CCC97D28E73139002831972419
      AD350ED6FA77A0A1A36BD4E92822C952D804BF69B9E893BB1B0C54546B84E15C
      CD014039DDD7766013C85896DE3802DA5EE2D317A3B18E1220FBB07D8CECE01F
      C151ACCD46D0DA883B4DF525D8F79D8389A3D0129B10E8C8CAF2E095D6DE7247
      8853C42DD2662212591E02A2D8E72F6AF058C62BDF62EC0000000049454E44AE
      426082}
    TabOrder = 0
    OnClick = cxButton1Click
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Alignment = alTopCenter
    Caption = 'Seleccione un Usuario '
    TabOrder = 1
    Height = 289
    Width = 368
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 362
      Height = 265
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataSource = DataModule1.DSUsuariosSistema
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'Id'
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.InfoText = 'Filtro'
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ScrollBars = ssVertical
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object cxGrid1DBTableView1Id: TcxGridDBColumn
          DataBinding.FieldName = 'Id'
          Width = 49
        end
        object cxGrid1DBTableView1Usuario: TcxGridDBColumn
          DataBinding.FieldName = 'Usuario'
          Width = 149
        end
        object cxGrid1DBTableView1Perfil: TcxGridDBColumn
          DataBinding.FieldName = 'Perfil'
          Width = 147
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxLabel1: TcxLabel
    Left = 96
    Top = 305
    Caption = 'Usuario Seleccionado'
  end
  object cxTextEdit1: TcxTextEdit
    Left = 96
    Top = 328
    Enabled = False
    StyleDisabled.TextColor = clBackground
    TabOrder = 3
    Width = 169
  end
end
