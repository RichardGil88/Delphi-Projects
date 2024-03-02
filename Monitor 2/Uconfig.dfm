object Fconfig: TFconfig
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Configuraci'#243'n'
  ClientHeight = 343
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = 'Configuraci'#243'n de la Conecci'#243'n'
    TabOrder = 0
    Height = 343
    Width = 484
    object cxButton1: TcxButton
      Left = 364
      Top = 292
      Width = 75
      Height = 25
      Caption = 'Guardar'
      TabOrder = 0
      OnClick = cxButton1Click
    end
    object cxLabel4: TcxLabel
      Left = 16
      Top = 297
      Caption = 'Repetici'#243'n'
      Transparent = True
    end
    object cxTextEdit4: TcxTextEdit
      Left = 76
      Top = 296
      TabOrder = 2
      Width = 121
    end
    object cxGroupBox2: TcxGroupBox
      Left = 1
      Top = 12
      Caption = 'Conecci'#243'n KD'
      TabOrder = 3
      Height = 253
      Width = 233
      object lbl1: TLabel
        Left = 24
        Top = 24
        Width = 36
        Height = 13
        Caption = 'Usuario'
      end
      object lbl2: TLabel
        Left = 24
        Top = 67
        Width = 56
        Height = 13
        Caption = 'Contrase'#241'a'
      end
      object lbl3: TLabel
        Left = 24
        Top = 106
        Width = 40
        Height = 13
        Caption = 'Servidor'
      end
      object lbl4: TLabel
        Left = 24
        Top = 147
        Width = 13
        Height = 13
        Caption = 'DB'
      end
      object lbl5: TLabel
        Left = 24
        Top = 188
        Width = 32
        Height = 13
        Caption = 'Puerto'
      end
      object edt1: TEdit
        Left = 24
        Top = 43
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object edt2: TEdit
        Left = 24
        Top = 83
        Width = 121
        Height = 21
        PasswordChar = '*'
        TabOrder = 1
      end
      object edt3: TEdit
        Left = 24
        Top = 122
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object edt4: TEdit
        Left = 24
        Top = 162
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object edt5: TEdit
        Left = 24
        Top = 204
        Width = 121
        Height = 21
        TabOrder = 4
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 234
      Top = 12
      Caption = 'Conecci'#243'n Estad'#237'sticas'
      TabOrder = 4
      Height = 253
      Width = 247
      object lbl6: TLabel
        Left = 16
        Top = 24
        Width = 36
        Height = 13
        Caption = 'Usuario'
      end
      object lbl7: TLabel
        Left = 16
        Top = 67
        Width = 56
        Height = 13
        Caption = 'Contrase'#241'a'
      end
      object lbl8: TLabel
        Left = 16
        Top = 106
        Width = 40
        Height = 13
        Caption = 'Servidor'
      end
      object lbl9: TLabel
        Left = 16
        Top = 147
        Width = 13
        Height = 13
        Caption = 'DB'
      end
      object lbl10: TLabel
        Left = 16
        Top = 188
        Width = 32
        Height = 13
        Caption = 'Puerto'
      end
      object edt6: TEdit
        Left = 16
        Top = 40
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object edt7: TEdit
        Left = 16
        Top = 83
        Width = 121
        Height = 21
        PasswordChar = '*'
        TabOrder = 1
      end
      object edt8: TEdit
        Left = 16
        Top = 122
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object edt9: TEdit
        Left = 16
        Top = 162
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object edt10: TEdit
        Left = 16
        Top = 204
        Width = 121
        Height = 21
        TabOrder = 4
      end
    end
  end
end
