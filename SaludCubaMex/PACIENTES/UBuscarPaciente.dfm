object FBuscarPaciente: TFBuscarPaciente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'BUSCAR UN PACIENTE'
  ClientHeight = 613
  ClientWidth = 999
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
    Left = 792
    Top = 0
    Align = alCustom
    Caption = 'ACCIONES SOBRE EL PACIENTE'
    TabOrder = 0
    Height = 613
    Width = 208
    object cxLabel1: TcxLabel
      Left = 18
      Top = 48
      Caption = 'CODIGO'
      Transparent = True
    end
    object cxTextEdit1: TcxTextEdit
      Left = 18
      Top = 71
      Enabled = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleDisabled.TextColor = clBlack
      TabOrder = 1
      Width = 174
    end
    object cxLabel2: TcxLabel
      Left = 18
      Top = 98
      Caption = 'NOMBRE'
      Transparent = True
    end
    object cxTextEdit2: TcxTextEdit
      Left = 18
      Top = 120
      Enabled = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleDisabled.TextColor = clBlack
      TabOrder = 3
      Width = 174
    end
    object cxButton1: TcxButton
      Left = 18
      Top = 304
      Width = 174
      Height = 66
      Caption = 'MOSTRAR LA  HISTORIA CLINICA'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D361000000000000036000000280000002000000020000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000C080B151F15
        1D38432A3E6B694462876F48688B20161E550000000800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000005030407181117243D2839565F3D587D8E5383B4C075B2DCE882
        D6F8FC90E8FFFFA2F3FFDB83CAFF774A6EFF0C080B4300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001A121926432D3E5B6A41
        62849F5A92BCCA7DBCE0ED88DBFAFA94E7FFFF93EDFFFF8FEDFFFFA0EFFFFF97
        ECFFFF9DF1FFEA89D8FF7B4A72FF6F4466EF0C070B2B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000101
        010219111825342331475C38557889537EAFA66099D3C26BB2FBCD7CBEFFDA78
        C8FFEC8ADAFFFD93E9FFFF9CF2FFFF9AEDFFFC8FE8FFFC98EAFFFC93E9FFFF9E
        EFFFDB7FCAFF724069FF85517BFF79466FD20302030D00000000000000000000
        0000000000000000000000000000150E14203725344E633B5B81975F8DB5C675
        B7D7DC7CCBFCBD79B1FF95618BFF786074FF746A72FF777477FF7B787AFF7D73
        7BFF80737EFF8C6886FFB272A6FFEC87DAFFFF9EF0FFFE93EAFFFF97EFFFD17B
        C1FF5C3855FF7E5075FFB067A2FF55324EA00000000000000000000000000B03
        0910452E415D6F466892945D8AC0D188C4F7FF8BEBFFFF98F4FFF58EE2FFB474
        A8FF72636FFF606561FF787F79FF939794FF787A78FF696A69FF616362FF5F61
        60FF636563FF676B68FF666866FF856D80FFCA82BDFFFE96ECFFE883D6FF623A
        5BFF714A6AFFA05E93FFAA649DFF3621326F0000000000000000000000002314
        202AD0A5C8F0DBD6DAFFDAD9DAFFD5D1D4FFE7A0DAFFC178B4FF736070FF6569
        66FF959895FFCECECEFFF1F1F1FFDADADAFF363636FF2E2E2EFF404040FF4848
        48FF4D4D4DFF3F3F3FFF313231FF363B37FF555255FF9D6D94FF7E4B74FF623E
        5CFF935788FF9C5B90FFA8639AFF21131E460000000000000000000000000000
        00001F131D22B199ADC9E1E3E2FFD6D8D6FF888988FF5D5B5CFF868986FFD4D4
        D4FFFDFDFDFFFFFFFFFFFFFFFFFFF0F0F0FFC3C3C3FFE6E6E6FFF6F6F6FFF9F9
        F9FFEFEFEFFFE2E2E2FFA2A2A2FF515051FF222322FF424643FF433440FF8551
        7BFF8C5181FF9F5D92FF9A5B8FF30B060A180000000000000000000000000000
        000000000000050304054F414C63737674E7737373FFBCBDBCFFF6F6F6FFFFFF
        FFFFFEFEFEFFFCFCFCFFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5
        B5FFB8B8B8FFFFFFFFFFFFFFFFFFF8F8F8FF979798FF5D605EFF6D4F67FF7E49
        75FF8D5482FFA15F95FF844E7AD9010101030000000000000000000000000000
        0000000000000000000034323481868686FBD9D9D9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFF8282
        82FFE5E5E5FFFFFFFFFFFEFEFEFFFFFFFFFFFCFDFCFF807A7FFF72456AFF7946
        70FF8E5484FFA46097FF62395BAE000000000000000000000000000000000000
        0000000000002F302F819E9F9EFFE4E4E4FFFFFFFFFFFEFEFEFFF8F8F8FF8F8F
        8FFFECECECFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFDCDCDCFF8889
        89FFFFFFFFFFFFFEFEFFFEFBFBFFFFFFFFFFF1F3EFFF806C7CFF6C3D63FF7947
        70FF8F5484FFA66299FF40253B79000000000000000000000000000000000000
        000012121244AAAAAAFFE4E4E4FFFFFFFFFFFBFBFBFFF6F6F6FFFEFEFEFF8888
        88FF6F6F6FFFFFFFFFFFFEFFFFFFFEFEFFFFFEFDFDFFFEFDFDFFB8B8B8FFC4C4
        C4FFFFFFFFFFFBF6F7FFF8EFEFFFFFFFFFFFC8CAC9FF80617AFF673A5FFF7947
        70FF905585FFA56198FF29172653000000000000000000000000000000000303
        030B858585D7DFDFDFFFFFFFFFFFFBFBFBFFF4F4F4FFFEFFFFFFFFFFFFFFFDFD
        FDFF5B5B5BFFA5A3A4FFFFFCFCFFFAF3F2FFFAF4F3FFF9F4F3FFF2EBEBFFF7EF
        EEFFFDF8F9FFFAF3F3FFF4F0EFFF969595FF858685FF86647FFF64385CFF7947
        70FF925687FF8C5380D90A060914000000000000000000000000000000002F2F
        2F69D9D9D9FFFAFAFAFFFEFEFEFFF1F1F1FFFDFCFCFFFEFAFBFFFAF5F5FFFAF3
        F3FFDCD6D5FFABA8A6FFFCF9F7FFFCFAF8FFFEFCFBFFFEFEFDFFFCFAFAFFF7F6
        F5FFFBF8F8FFFAF9F9FF828181FFB5B5B5FFFFFFFFFF8A6883FF603558FF7947
        70FF7E4D76D7120C111B00000000000000000000000000000000010101039A9A
        9AD0F1F1F1FFFFFFFFFFF3F2F2FFF5F2F1FFF7F3F1FFF6F0EEFFF4F1EFFFF6F4
        F3FFFEFEFCFFFFFFFFFFFEFEFEFFFEFFFFFFFEFEFEFFFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFCFBFBFFF1EFEFFFFFFFFFFFFFFFFFFF93738DFF5E3356FF6D40
        65ED110C1026000000000000000000000000000000000000000012121232E7E7
        E7FFFCFCFCFFF9F9F9FFEEEEEEFFFFFDFCFFFDF9F7FFFCFAF9FFFDFBFBFFFEFE
        FEFFFFFFFFFFFEFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFCFCFFFDFCFBFFFEFD
        FDFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFFFFFFFFFA58AA0FF603358FF3227
        30890000000000000000000000000000000000000000000000003A3A3A62F6F6
        F6FFFFFFFFFFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFAF5F3FFFBF7
        F5FFFCF7F6FFFCF9F8FFFDFDFDFFFEFEFEFFFFFDFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDBCC9FF6D4565FC100F
        10320000000000000000000000000000000000000000000000007272729BFDFD
        FDFFFDFDFDFFEBEBEBFFBBBBBBFFA2A2A2FFA0A0A0FFA2A3A3FFF0EDECFFFCF5
        F5FFF5EDECFFF9F4F2FFFDFBFBFFFFFDFCFFD1CFCFFF959595FF999999FF9898
        98FF999999FF959595FF919191FF8A8A8AFFC6C7C6FFF0E7EEFF583F53CB0000
        0000000000000000000000000000000000000000000000000000848484ACFFFF
        FFFFF7F7F7FFEEEEEEFFC6C6C6FFBABABAFFBEBEBEFFC1C1C1FFF5F5F5FFFEFE
        FEFFFDFDFDFFFEFEFEFFFEFBFBFFFEFDFAFFEDECEBFF666767FF484848FF4F4F
        4FFF4F4F4FFF4F4F4FFF4F4F4FFF474747FFC2C2C2FFD8D9D8FC775470D60906
        08160000000000000000000000000000000000000000000000006767678EFFFF
        FFFFEFEFEFFFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFFFFFEFBFAFFFFFFFFFFDCDCDCFF5C5C5CFF5555
        55FF585858FF585858FF575757FF5E5E5EFFD0D1D0FF484948853F253A7A2716
        234300000000000000000000000000000000000000000000000037373758FFFF
        FFFFF1F1F1FFEDEDEDFFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFFFFFFFFFFFF
        FFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFDFCFFFFFFFFFFBABABAFF4F4F
        4FFF585858FF585858FF555555FF717171FF646564BA01010104190E17342E1B
        2A4F0000000000000000000000000000000000000000000000001B1B1B2EDFDF
        DFFFD4D4D4FFE5E4E4FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFD0D0D0FFF5F5
        F5FFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFEFFFCFAF8FFFFFDFDFFFDFDFDFF8989
        89FF4E4E4EFF585858FF545454FF696969D20707071500000000020102030906
        080F00000000000000000000000000000000000000000000000002020204A5A5
        A5D4A4A4A4FFADADADFFFCFCFCFFFFFFFFFFEFEFEFFF8F8F8FFFA8A8A8FFF9F9
        F9FFFEFEFEFFFFFFFFFFEAEAEAFFF9F9F9FFFEFDFBFFFDFBFAFFFFFFFFFFF3F3
        F3FF676767FF535353FF5A5A5AFF0E0E0E4A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003D3D
        3D67B7B7B7FFBBBBBBFFAAAAAAFFF3F3F3FF9D9D9DFFCDCDCDFFFFFFFFFFFFFF
        FFFFFEFEFEFFFCFCFCFFA7A7A7FFF9F9F9FFFFFFFFFFFFFFFFFFDFDEDDFFBFBF
        BFFFCCCCCCFF535353FF535353F70404041B0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000101
        01037F7F7FAFA0A0A0FF979797FF898989FFCECECEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3E3E3FFC7C7C7FFFBFBFBFFD4D4D4FFA4A4A4FFA9A9A9FFB6B6
        B6DC8282829FB0B0B0FF353535CA000000010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000505050C7E7E7EADC2C2C2FFCCCCCCFF909090FF989898FFABABABFFBABA
        BAFFBDBDBDFFA8A8A8FFA2A2A2FF959595FF7E7E7EFF989898EB717171910C0C
        0C1400000000A1A1A1C14040409B000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000003B3B3B4AA8A8A8B6EBEBEBEEEBEBEBFFCFCFCFFFBFBF
        BFFFC0C0C0FFA9A9A9FF8E8E8EE57E7E7EB6363636630C0C0C14000000000000
        0000000000001010101811111121000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000010101011B1B1B284A4A4A627C7C7C868B8B
        8B8F60606078303030491212121D000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000}
      TabOrder = 4
      WordWrap = True
      OnClick = cxButton1Click
    end
    object cxLabel3: TcxLabel
      Left = 18
      Top = 146
      Caption = 'PRIMER APELLIDO'
      Transparent = True
    end
    object cxTextEdit3: TcxTextEdit
      Left = 18
      Top = 168
      Enabled = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleDisabled.TextColor = clBlack
      TabOrder = 6
      Width = 174
    end
    object cxLabel5: TcxLabel
      Left = 18
      Top = 195
      Caption = 'SEGUNDO APELLIDO'
      Transparent = True
    end
    object cxTextEdit4: TcxTextEdit
      Left = 18
      Top = 218
      Enabled = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      StyleDisabled.TextColor = clBlack
      TabOrder = 8
      Width = 174
    end
    object cxButton5: TcxButton
      Left = 18
      Top = 401
      Width = 174
      Height = 66
      Caption = 'NUEVO SERVICIO '
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        424D361000000000000036000000280000002000000020000000010020000000
        000000000000C40E0000C40E0000000000000000000000000000000000000000
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
        000000000000000000000000000000000000070C0F14091F2B37173745560540
        596E0044627B004A68810048657B05455B6E17364255091E2737060B0D130000
        00000000000000000000020304070F2B38630A496AAF0D547BBE234D62890A0F
        111B000000000000000000000000000000000000000000000000000000000000
        000000000000000000000E192136165B83AA117FB9EA1F9AD5FF28A5DDFF34B0
        E4FF3BB8E9FF3EBBEBFF3BBCECFF35B7E7FF2AA8D7FF2296C6FF15719BE9124A
        66AD0E171C330C1417250F5B7CC51C89BAFF53BBE7FF5ACBF9FF42C1F7FF3DAA
        DAE618282F460000000000000000000000000000000000000000000000000000
        0000000000000106090C167FB9E33BB5EDFF46C8FBFF42CAFFFF39C4FAFF2EBC
        F4FF28B6EFFF24B3ECFF24B3EBFF26B5ECFF2DBBEEFF35B9EBFF3CB4E3FF37A2
        D3FF1579A8EF077BA8E633AADAFF72D8FFFF52CAF8FF31B8EEFF26B1EBFF1AA7
        E6FF36A1D2E50A0D0F1500000000000000000000000000000000000000000000
        00000000000004090C0D3BB0E3E91BBCFCFF09A3E7FF038FD4FF088ED1FF1296
        D4FF1A9ED8FF21A5DCFF28ABE0FF2CB0E2FF2CB2E3FF25AADBFF1F9CCDFF1990
        C1FF0498CFFF32B4E5FF79DAFFFF4EC7F5FF32BDF2FF2CB7EFFF23AEEAFF18A5
        E6FF179EDEFF253D485000000000000000000000000000000000000000000000
        00000000000000000000172930411281B9DD017DC3FF0D8DCDFF1497D4FF179E
        D7FF19A2D9FF1BA6DCFF1DAADEFF22ACDEFF27A4D4FF30A2D0FF3CA8D4FF19A2
        D7FF18A9DEFF76D9FFFF57CBF7FF33BCF0FF1A83BFFF1A8FCCFF21B1EFFF16A4
        E6FF1195D6FF18526C6F00000000000000000000000000000000000000000000
        000000000000000000001231446A087BBBED0687CAFF078CCCFF0A91D0FF0B96
        D2FF0C9AD4FF0E9FD7FF0DA2D9FF0CA0D6FF0D95C8FF0D86B8FF077EB1FF0193
        CEFF5ECDF8FF68D2FAFF3AC4F5FF2296D0FF1073B2FF117EBEFF1694D4FF109D
        E1FF0F95D7FF204F646800000000000000000000000000000000000000000000
        000000000000020304051777AFDD0A88CCFF1593D2FF1797D4FF179BD6FF179E
        D8FF18A2D9FF18A5DBFF18A8DDFF17A6DAFF179BCDFF1B90C1FF0689C2FF27AB
        E2FF78D9FFFF48C9F7FF1E89C4FF1274B4FF1E97D3FF1898D8FF0A71B4FF0A94
        DAFF139BDEFF19323E4700000000000000000000000000000000000000000000
        0000000000000C1114181986C1EE118CCEFF1993D1FF249DD7FF31AAE0FF38B4
        E6FF3AB8EAFF3ABAEBFF39BAEBFF36B6E6FF30A9D8FF2196C6FF028AC8FF54C3
        F3FF67D2FBFF38C0F1FF187FBDFF0B66A7FF035295FF1185C7FF0B81C5FF0593
        DAFF229AD3ED0B11131700000000000000000000000000000000000000000000
        0000000000000C1317192592CAEF3BB5EBFF45C7FBFF41CCFFFF36C0F8FF29B2
        ECFF20A9E4FF1BA4DFFF1CA4DEFF20A8DFFF27AEE1FF22A7DCFF0A90D0FF6BD1
        FBFF4ECAF6FF2BA9DFFF1C8FCCFF22A3DFFF0D75B7FF035396FF057BC1FF0695
        DBFF2C7191A70000000000000000000000000000000000000000000000000000
        0000000000000B0F111441B1E1EB18BEFFFF0CB2F6FF028ED4FF0286CAFF1394
        D3FF29A5DCFF3DB3E4FF43BAEAFF44BFF0FF49C7F5FF2EB1E7FF1795D4FF6FD5
        FDFF3FC4F4FF249CD5FF137EBDFF1586C5FF0E7DBFFF0A80C5FF048FD6FF19A0
        E1FD102128380000000000000000000000000000000000000000000000000000
        000000000000000000002156718F0999DDFF018DD0FF0083C5FF0A94D1FF139F
        D8FF18A4DAFF1AAADFFF15AADFFF11A0D5FF119ACEFF098DC9FF1D97D5FF6AD3
        FCFF35BCEFFF2AAEE6FF20A5E1FF0F78B9FF0565A9FF0A98DFFF0893D9FF2A71
        92AB000000000000000000000000000000000000000000000000000000000000
        0000080D1018194D6A920075B6EE0083C5FF008AC9FF0292CEFF079AD3FF0B9F
        D7FF13A3D8FF189DD0FF249DCDFF38A4D0FF42ADD8FF2F9DCEFF1D94D2FF60CE
        F9FF30B7EDFF29B3ECFF21AEEBFF19A4E5FF0F9FE4FF058FD6FF258BBBD50407
        080D000000000000000000000000000000000000000000000000000000000C33
        4B77137EBAE8229CD9FF38AEE4FF44BDEEFF4AC4F5FF4DC7F7FF4EC8F7FF4CC9
        F7FF47C5F4FF42B9E8FF37A7D5FF298FBCFF1C7DACFF1F9CD2FF139DE0FF4BBD
        F0FF32B8EEFF22AEEAFF1CA9E9FF109EE2FF0892D6FF2891C3DA19323E4F0223
        303F0628343C070C0D13000000000000000000000000000000000000000026A1
        DFFB3FC3F9FF38C8FFFF2FCAFFFF24B4F0FF1BA4E2FF15A2E1FF0E8CCCFF109B
        DAFF13A6E3FF1CB6F1FF25BDF7FF33C0F6FF3DB6E9FF2295C9FF12A3E4FA3395
        C6DB44C0F6FE1AA5E4FF0F99DBFF199CDBFF2C82ACC03382A8BE44ACD8ED51C7
        F4FF51C7F2FF3D9CC1E21E313A5F000000000000000000000000000000003A9D
        C7D20AB2F7FF08B3F9FF04A0E6FF0081C6FF0784C6FF1394D1FF1B9AD3FF21A3
        D9FF24A9DDFF23ACE0FF1DABDEFF159ED1FF1291C4FF1487B9FF1F729AD6131F
        253A182930403C6E848939687D841D2F363F2A414D5643BFF2FF37B2E6FF2693
        CCFF2996CDFF3DBAEDFF3CA9D8F1000000000000000000000000000000000C12
        141C29576C7D0E82C0EB2499D7FF40B6EBFF48C4F7FF49CAFBFF46C8FBFF42C6
        FBFF42BFF4FF42C1F6FF44C6FAFF48C9FBFF4AC7F8FF46BBEAFF359DCBFF146A
        95EC030D12220000000000000000000000001D2E353E1BABEAFF0C8ED0FF046A
        AEFF0977BBFF0E9BDDFF2898CBDE000000000000000000000000000000000000
        0000000000002D83ACB92FC3FEFF1BC0FFFF15BFFFFF0EA9EBFF0888CCFF0C9F
        E1FF0267ABFF0680C3FF0A93D7FF067EC2FF12B5F7FF17C0FFFF23C4FFFF3BBF
        F6FF0D2C3B4500000000061015282A505F6A1C31384D1B3F506D1B82B3CE1E8D
        C5E8188AC4E527789FB40F1C2236000000000000000000000000000000000000
        0000000000001E31394B2093C5D80EACF0FF08AFF6FF06A7EEFF007CC4FF0390
        D6FF016CB1FF0382C7FF0091D8FF0190D7FF07AEF4FF0AACF2FF15A6E6F62E70
        8DA207090A0F010102023A95BED61B93D0FF2CA4DCFF1621263100000000080C
        0E0F080D10110000000000000000000000000000000000000000000000000000
        0000000000000000000004080A0C162E39421F536A771B698E9D2E80A6B31A82
        B2C30E7EB2C50F7EB2C52984AEBD26769BAC1D60808D1941535F0D1B21270000
        0000000000000000010117364460246C93AE1B58778E1F45576E2D6C87A70914
        192B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000002647566C3286B1CC1628
        303F000000000000000000000000000000000000000000000000000000000000
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
        00000000000000000000000000000000000000000000}
      TabOrder = 9
      WordWrap = True
      OnClick = cxButton5Click
    end
    object cxLabel6: TcxLabel
      Left = 59
      Top = 239
      Caption = 'M                F'
      Transparent = True
    end
    object SWSEXO: TdxToggleSwitch
      Left = 18
      Top = 262
      Caption = 'SEXO'
      Checked = False
      Enabled = False
      TabOrder = 11
      Transparent = True
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = -1
    Top = 0
    Caption = 'SELECCIONE EL PACIENTE EN LA TABLA'
    TabOrder = 1
    Height = 480
    Width = 793
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 787
      Height = 458
      Align = alClient
      TabOrder = 0
      LookAndFeel.NativeStyle = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu1
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataSource = FDMPacientes.DSPacientes
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skCount
            FieldName = 'MEDICO'
            Column = cxGrid1DBTableView1MEDICO
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'CANT=#'
            Kind = skCount
            FieldName = 'CODIGO'
            Column = cxGrid1DBTableView1CODIGO
            DisplayText = 'CANT=#'
          end>
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
        object cxGrid1DBTableView1CODIGO: TcxGridDBColumn
          DataBinding.FieldName = 'CODIGO'
          Width = 48
        end
        object cxGrid1DBTableView1NOMBRE: TcxGridDBColumn
          DataBinding.FieldName = 'NOMBRE'
          Width = 117
        end
        object cxGrid1DBTableView1PRIMER_APELLIDO: TcxGridDBColumn
          DataBinding.FieldName = 'PRIMER_APELLIDO'
          Width = 104
        end
        object cxGrid1DBTableView1SEGUNDO_APELLIDO: TcxGridDBColumn
          DataBinding.FieldName = 'SEGUNDO_APELLIDO'
          Width = 112
        end
        object cxGrid1DBTableView1CORREO: TcxGridDBColumn
          DataBinding.FieldName = 'CORREO'
          Width = 182
        end
        object cxGrid1DBTableView1SEXO: TcxGridDBColumn
          DataBinding.FieldName = 'SEXO'
          Width = 70
        end
        object cxGrid1DBTableView1ESCOLARIDAD: TcxGridDBColumn
          DataBinding.FieldName = 'ESCOLARIDAD'
          Width = 109
        end
        object cxGrid1DBTableView1ESTADO_CIVIL: TcxGridDBColumn
          DataBinding.FieldName = 'ESTADO_CIVIL'
          Width = 94
        end
        object cxGrid1DBTableView1OCUPACION: TcxGridDBColumn
          DataBinding.FieldName = 'OCUPACION'
          Width = 256
        end
        object cxGrid1DBTableView1MEDICO: TcxGridDBColumn
          DataBinding.FieldName = 'MEDICO'
          Visible = False
          GroupIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 480
    Align = alCustom
    Caption = 'OTROS DATOS DEL PACIENTE'
    TabOrder = 2
    Height = 133
    Width = 792
    object cxLabel4: TcxLabel
      Left = 15
      Top = 23
      Caption = 'TELEFONOS'
      Transparent = True
    end
    object cxMemo1: TcxMemo
      Left = 16
      Top = 43
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      TabOrder = 1
      Height = 62
      Width = 217
    end
    object cxLabel14: TcxLabel
      Left = 256
      Top = 20
      Caption = 'DIRECCCION'
      Transparent = True
    end
    object cxMemo4: TcxMemo
      Left = 256
      Top = 43
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      TabOrder = 3
      Height = 62
      Width = 225
    end
    object cxLabel17: TcxLabel
      Left = 505
      Top = 23
      Caption = 'COMENTARIOS'
      Transparent = True
    end
    object cxMemo3: TcxMemo
      Left = 505
      Top = 46
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      TabOrder = 5
      Height = 62
      Width = 264
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 576
    Top = 201
    object ELIMINARPACIENTE1: TMenuItem
      Caption = 'ELIMINAR PACIENTE'
      OnClick = ELIMINARPACIENTE1Click
    end
  end
end