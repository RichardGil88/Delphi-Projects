object ConfigServicios: TConfigServicios
  Left = 216
  Top = 63
  Caption = 'Configuraci'#243'n de los Servicios...'
  ClientHeight = 281
  ClientWidth = 254
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 254
    Height = 281
    ActivePage = DespKDCentral
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 469
    object DespKDCentral: TTabSheet
      Caption = 'RETO'
      ExplicitWidth = 461
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 246
        Height = 253
        Align = alClient
        Color = clSilver
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 337
        object SalirOK: TSpeedButton
          Left = 55
          Top = 214
          Width = 138
          Height = 30
          Caption = '&Salir'
          OnClick = SalirOKClick
        end
        object edtIdDespachador: TLabeledEdit
          Left = 11
          Top = 21
          Width = 201
          Height = 21
          AutoSize = False
          EditLabel.Width = 77
          EditLabel.Height = 13
          EditLabel.Caption = 'ID Despachador'
          EditLabel.Layout = tlCenter
          TabOrder = 0
        end
        object CxGroupMySQL: TGroupBox
          Left = 11
          Top = 64
          Width = 201
          Height = 121
          Caption = 'Base MySql Global'
          TabOrder = 1
          object edtHostKD: TLabeledEdit
            Left = 71
            Top = 18
            Width = 111
            Height = 21
            AutoSize = False
            EditLabel.Width = 26
            EditLabel.Height = 13
            EditLabel.Caption = 'Host:'
            LabelPosition = lpLeft
            TabOrder = 0
            Text = 'LocalHost'
          end
          object edtPuertoKD: TLabeledEdit
            Left = 71
            Top = 43
            Width = 111
            Height = 21
            AutoSize = False
            EditLabel.Width = 36
            EditLabel.Height = 13
            EditLabel.Caption = 'Puerto:'
            LabelPosition = lpLeft
            TabOrder = 1
            Text = '3306'
          end
          object edtUsuarioKD: TLabeledEdit
            Left = 71
            Top = 68
            Width = 111
            Height = 21
            AutoSize = False
            EditLabel.Width = 40
            EditLabel.Height = 13
            EditLabel.Caption = 'Usuario:'
            LabelPosition = lpLeft
            TabOrder = 2
            Text = 'root'
          end
          object edtPasswordKD: TLabeledEdit
            Left = 71
            Top = 93
            Width = 111
            Height = 21
            AutoSize = False
            EditLabel.Width = 60
            EditLabel.Height = 13
            EditLabel.Caption = 'Contrase'#241'a:'
            LabelPosition = lpLeft
            PasswordChar = '*'
            TabOrder = 3
            Text = 'yqswodnxj'
          end
        end
      end
    end
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders]
    Left = 264
    Top = 104
  end
end
