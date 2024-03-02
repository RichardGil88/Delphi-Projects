object FormEditarUsuario: TFormEditarUsuario
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Editar Usuario'
  ClientHeight = 479
  ClientWidth = 553
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 88
    Align = alBottom
    TabOrder = 0
    Height = 391
    Width = 553
    object cxLabel1: TcxLabel
      Left = 48
      Top = 40
      Caption = 'Nombres'
      Transparent = True
    end
    object cxTextEdit1: TcxTextEdit
      Left = 48
      Top = 64
      TabOrder = 1
      Width = 169
    end
    object cxMemo1: TcxMemo
      Left = 48
      Top = 120
      TabOrder = 2
      Height = 41
      Width = 169
    end
    object cxCheckBox1: TcxCheckBox
      Left = 449
      Top = 188
      TabOrder = 5
    end
    object cxCheckBox2: TcxCheckBox
      Left = 449
      Top = 152
      TabOrder = 3
    end
    object cxButton1: TcxButton
      Left = 94
      Top = 344
      Width = 123
      Height = 25
      Caption = '   Salvar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000000B744558745469746C6500536176653BF9E8F9090000020349444154
        785E7D52316B145110FEDEE6EE9A03EF2E57284A6C6DAC42C0262185829D0A36
        16820AFE010BADC47F60AB2022585A588875B01041822158D858081204956872
        DC5DD6DD3733CF99D93DD713CCC0F7BEF776E7FB66E6ED0654912982633EFCFC
        9F67A2603B2CAC9DBFB2810CEB4B274EE1E4D271B0303832A24450A94C113112
        2846ECED8F301A7DB59CD76F379E9F6D9901425A5F3DB38C4F9FC7B87BE70690
        60E1E49C80BC886049B87EF33656964F6373EBFD1A8096190466017352B0ABA6
        BF22C4D5C9C5972E5CD632010F1F3F0553C4CECE17088B8F9ED99292B898884C
        EFE2548B270711D942867E7F114717BB9E0308582A83962D2C6EE0EE2925EFA6
        245671899205ED561B9D4EA77EC7CA6D887063904CCCE29735C923BEEF4F91C4
        A771DC7FF008C7865DEF88896B23FA6310BC03226FEFEAB55B9A203E63823143
        5490445C3883D05F23F8FCC228F26F180C06B3CB730059BD57866F20229EDF18
        D42358BC78F60487C5EAB98B5A6408E63903B1F6BD358B9FE302F06D729610BC
        B2AE20B63CF9D780602072579FB9F98B6082E6DF8D044932FF156CA648EC89F7
        5E7E844802299851B3C26667F30BCAF31D043B3091DFC3917E0F5C895C1C4D3C
        03E095C79303A4CA20984111CBFCDDE6D6F6CA70D0C39B571F2A7164AF129589
        14C65E59B0FB631765596C03C8030033E929BA8A0C4D8443F6A2982AF67E037E
        F6AC9379188DF20000000049454E44AE426082}
      TabOrder = 6
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 299
      Top = 344
      Width = 123
      Height = 25
      Caption = '    Cancelar'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000023744558745469746C650043616E63656C3B53746F703B457869743B
        426172733B526962626F6E3B4C9696B20000038849444154785E1D906B4C5367
        18C7FF3DBD40CB1A2E32B55C9D598B4CA675D8D13836652E9B0359B67D589665
        3259E644A52571644474CB4CB6ECC23770C4449DD38D2885005E4683AB69C616
        8DA12384264EC8AAAC0C9149A1175ACEE9E939CFDE9EE7E477F2CBFFB924E720
        E6E943CC3B8895D12B00A0FEE3D08167A75A5BBAEEB71D9D081E6B4DA549FBDD
        A3CEEFDD1F3658016818AA98A71FD1915E202DE980A19D741E3EF6E0F8A7FC7F
        673B6979E002C5BC43B4C2581EB8480BE7BA68E6441BEF3B72F03300990C8E1D
        5016554E7B55D6C1ED9543C6C2B5BB739FDF025988838424E4240F10A0D2EAA0
        D26540AD37203CFE17C2C187A3EDBFDE7CF3DAD4748403A06EA8A8E830AC5FB3
        3B7BAB1901B717AE23DFE1CEC5EBEC90A0E0EB71A3CFD981C0B017C6F252180B
        D6BD74BCFA856E003A0CBDFD966DF250532AD4FF038DB734D18557DF21CFB08F
        2E37B5D370ED5E72D7D52BEEF9654CE9F91C1FD392EB0C4D3A0E4BE7F6ECD909
        CFDEFAD381AF4ED0A3D35FD399E272BA3F3D478F971234FD2044BDCE930AF798
        CF2FAED0DF5373CACCFCA92F2970B29DDCAFD7F56B48945E918201C41738945A
        2D581C7461ADA3192AB50AD64F9A010272730CC8D4AA313BE44289D58CF85D3F
        2411504BB28D93845489145E041F9CC1863C09A11BD7E1EFEA86240339463DB2
        B3F59025C0DFD98DD0C83594E6886C360831F408523265D208BC0021B20A35A7
        82B8BC0429C2239A10D812417988007088B14C8A8421EA75A094044A8A48F200
        17E78587629220B370E69F2884EA3750F07E23245946868E43A64EA3B8695F23
        F8EA7A046763EC780AC9640AF155FEB1269AE0BD91AC8CFDF910108E26F15A5B
        33788D1E860CF6CDE7CF225D45FB3F02A0C7CE36076E5CBD84825C3562A20E4B
        097E0CAD051B5FFCA97C9BE4ABAEA05B2FDBE9E6BE0F880F8568FCDB0E1AA9AA
        646C579C654AEF564D15FDB96333FDBCC94A8E751B6A0140DF5168B9E42A7B86
        266AB6D2ED1A1BF559CAC853B58DFCB576F2D7D9D3AE64B777D96862D716EA2F
        2BA76F4CE62B008C1A00C2F9C57F9D8DA2C99212C5E72C85323699F320A77FD2
        72040021DF9885F56BF2204457706F9EC74C4CF2F744169A012430DBF21E00A8
        2B754F98BEC82EEEED7AF2291A306FA451EBD3346633938FF13BF341969D62BD
        CF738AAF6ED6EA4B006882CE77A14ABFD255D2799903606830E4EF28E274070C
        1C67D74255041044C25C9CE43B4149F8B16735F41B8038DB9300E07F6924ECFB
        01D589CC0000000049454E44AE426082}
      TabOrder = 7
      OnClick = cxButton2Click
    end
    object cxLookupComboBox2: TcxLookupComboBox
      Left = 48
      Top = 204
      Properties.KeyFieldNames = 'Departamentos'
      Properties.ListColumns = <
        item
          FieldName = 'Departamentos'
        end>
      Properties.ListSource = DataModule1.DSDepartamentos
      TabOrder = 4
      Width = 167
    end
    object cxMaskEdit1: TcxMaskEdit
      Left = 48
      Top = 262
      Properties.EditMask = '#'
      TabOrder = 8
      Text = ' '
      Width = 169
    end
    object cxLabel10: TcxLabel
      Left = 299
      Top = 97
      Caption = 'Extensi'#243'n'
      Transparent = True
    end
    object cxLabel11: TcxLabel
      Left = 299
      Top = 154
      Caption = 'Status'
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 48
      Top = 239
      Caption = 'Cantidad Comidas al d'#237'a'
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 48
      Top = 97
      Caption = 'Credencial'
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 299
      Top = 190
      Caption = 'Acceso al Comedor'
      Transparent = True
    end
    object cxLabel7: TcxLabel
      Left = 48
      Top = 181
      Caption = 'Departamento'
      Transparent = True
    end
    object cxLabel9: TcxLabel
      Left = 299
      Top = 40
      Caption = 'Tel'#233'fono'
      Transparent = True
    end
    object cxTextEdit4: TcxTextEdit
      Left = 299
      Top = 63
      TabOrder = 16
      Width = 169
    end
    object cxTextEdit5: TcxTextEdit
      Left = 299
      Top = 120
      TabOrder = 17
      Width = 169
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Seleccione el usuario a editar'
    TabOrder = 1
    Height = 88
    Width = 553
    object cxLookupComboBox1: TcxLookupComboBox
      Left = 48
      Top = 40
      Properties.AutoSelect = False
      Properties.HideSelection = False
      Properties.KeyFieldNames = 'Id'
      Properties.ListColumns = <
        item
          FieldName = 'Nombres'
        end>
      Properties.ListSource = DataModule1.DSUsuarios
      TabOrder = 0
      OnClick = cxLookupComboBox1Click
      Width = 297
    end
    object cxLabel3: TcxLabel
      Left = 48
      Top = 17
      Caption = 'Nombre'
      Transparent = True
    end
  end
end
