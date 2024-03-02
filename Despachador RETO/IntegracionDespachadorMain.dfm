object MainForm: TMainForm
  Left = 0
  Top = 36
  BorderStyle = bsDialog
  Caption = 'Integraci'#243'n Despachador'
  ClientHeight = 380
  ClientWidth = 558
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 14
  object LabelProgress: TLabel
    Left = 9
    Top = 3
    Width = 60
    Height = 14
    Caption = 'ProgresoRx:'
  end
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 79
    Width = 516
    Height = 299
    TabOrder = 1
    Properties.ActivePage = Despachador
    ClientRectBottom = 295
    ClientRectLeft = 4
    ClientRectRight = 512
    ClientRectTop = 25
    object Despachador: TcxTabSheet
      Caption = 'Despachador'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DespachadorGrid: TcxGrid
        Left = 0
        Top = 0
        Width = 508
        Height = 270
        Align = alClient
        TabOrder = 0
        LevelTabs.Style = 11
        RootLevelOptions.DetailTabsPosition = dtpTop
        object OrigenesView: TcxGridDBTableView
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Visible = True
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Visible = False
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SyncMode = False
          DataController.DataSource = DMDespachador.origenessrc
          DataController.KeyFieldNames = 'IdDespachador'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.GroupBySorting = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.ShowEditButtons = gsebAlways
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object OrigenesViewIdDespachador: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'IdDespachador'
            PropertiesClassName = 'TcxTextEditProperties'
            Visible = False
            Width = 41
          end
          object OrigenesViewDespachador: TcxGridDBColumn
            DataBinding.FieldName = 'Despachador'
            Visible = False
            Width = 113
          end
          object OrigenesViewIdOrigen: TcxGridDBColumn
            DataBinding.FieldName = 'IdOrigen'
            Visible = False
            Options.Editing = False
            Width = 37
          end
          object OrigenesViewDescripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Width = 115
          end
          object OrigenesViewCompactados: TcxGridDBColumn
            DataBinding.FieldName = 'Compactados'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Width = 67
          end
          object OrigenesViewServidorRxIRI: TcxGridDBColumn
            DataBinding.FieldName = 'ServidorRxIRI'
          end
          object OrigenesViewUsuarioRxIRI: TcxGridDBColumn
            DataBinding.FieldName = 'UsuarioRxIRI'
          end
          object OrigenesViewPasswordRxIRI: TcxGridDBColumn
            DataBinding.FieldName = 'PasswordRxIRI'
          end
          object OrigenesViewCarpetaIRI: TcxGridDBColumn
            DataBinding.FieldName = 'CarpetaIRI'
          end
          object OrigenesViewTimeOutIRI: TcxGridDBColumn
            DataBinding.FieldName = 'TimeOutIRI'
          end
          object OrigenesViewServidorRxContenidos: TcxGridDBColumn
            DataBinding.FieldName = 'ServidorRxContenidos'
          end
          object OrigenesViewPasswordRxContenidos: TcxGridDBColumn
            DataBinding.FieldName = 'PasswordRxContenidos'
          end
          object OrigenesViewUsuarioRxContenidos: TcxGridDBColumn
            DataBinding.FieldName = 'UsuarioRxContenidos'
          end
          object OrigenesViewCarpetaContenidos: TcxGridDBColumn
            DataBinding.FieldName = 'CarpetaContenidos'
          end
          object OrigenesViewGeneraAvisos: TcxGridDBColumn
            DataBinding.FieldName = 'GeneraAvisos'
            PropertiesClassName = 'TcxCheckBoxProperties'
          end
          object OrigenesViewCantidadFicheros: TcxGridDBColumn
            DataBinding.FieldName = 'CantidadFicheros'
          end
          object OrigenesViewCantidadFicherosAviso: TcxGridDBColumn
            DataBinding.FieldName = 'CantidadFicherosAviso'
          end
          object OrigenesViewCantidadFicherosLimite: TcxGridDBColumn
            DataBinding.FieldName = 'CantidadFicherosLimite'
          end
          object OrigenesViewFormatoCompactados: TcxGridDBColumn
            DataBinding.FieldName = 'FormatoCompactados'
          end
          object OrigenesViewExtensionCompactados: TcxGridDBColumn
            DataBinding.FieldName = 'ExtensionCompactados'
          end
          object OrigenesViewFormaRxIRI: TcxGridDBColumn
            DataBinding.FieldName = 'FormaRxIRI'
          end
          object OrigenesViewFormaRxContenidos: TcxGridDBColumn
            DataBinding.FieldName = 'FormaRxContenidos'
          end
          object OrigenesViewCarpetaTemporalIRI: TcxGridDBColumn
            DataBinding.FieldName = 'CarpetaTemporalIRI'
          end
          object OrigenesViewCarpetaTemporalContenidos: TcxGridDBColumn
            DataBinding.FieldName = 'CarpetaTemporalContenidos'
          end
        end
        object DestinosView: TcxGridDBTableView
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SmartRefresh = True
          DataController.DataModeController.SyncMode = False
          DataController.DataSource = DMDespachador.destinossrc
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object DestinosViewIdDespachador: TcxGridDBColumn
            DataBinding.FieldName = 'IdDespachador'
            Visible = False
          end
          object DestinosViewDespachador: TcxGridDBColumn
            DataBinding.FieldName = 'Despachador'
            Visible = False
          end
          object DestinosViewidDestino: TcxGridDBColumn
            DataBinding.FieldName = 'idDestino'
            Visible = False
          end
          object DestinosViewDescripcion: TcxGridDBColumn
            DataBinding.FieldName = 'Descripcion'
            Width = 120
          end
          object DestinosViewServidorBD: TcxGridDBColumn
            DataBinding.FieldName = 'ServidorBD'
            Width = 76
          end
          object DestinosViewPuertoBD: TcxGridDBColumn
            DataBinding.FieldName = 'PuertoBD'
          end
          object DestinosViewUsuarioBD: TcxGridDBColumn
            DataBinding.FieldName = 'UsuarioBD'
            Width = 82
          end
          object DestinosViewPasswordBD: TcxGridDBColumn
            DataBinding.FieldName = 'PasswordBD'
            Width = 87
          end
          object DestinosViewMaster: TcxGridDBColumn
            DataBinding.FieldName = 'Master'
          end
          object DestinosViewServidorTxIRI: TcxGridDBColumn
            DataBinding.FieldName = 'ServidorTxIRI'
          end
          object DestinosViewPuertoTxIRI: TcxGridDBColumn
            DataBinding.FieldName = 'PuertoTxIRI'
          end
          object DestinosViewUsuarioTxIRI: TcxGridDBColumn
            DataBinding.FieldName = 'UsuarioTxIRI'
          end
          object DestinosViewPasswordTxIRI: TcxGridDBColumn
            DataBinding.FieldName = 'PasswordTxIRI'
          end
          object DestinosViewCarpetaIRI: TcxGridDBColumn
            DataBinding.FieldName = 'CarpetaIRI'
          end
          object DestinosViewServidorTxContenidos: TcxGridDBColumn
            DataBinding.FieldName = 'ServidorTxContenidos'
          end
          object DestinosViewPuertoTxContenidos: TcxGridDBColumn
            DataBinding.FieldName = 'PuertoTxContenidos'
          end
          object DestinosViewUsuarioTxContenidos: TcxGridDBColumn
            DataBinding.FieldName = 'UsuarioTxContenidos'
          end
          object DestinosViewPasswordTxContenidos: TcxGridDBColumn
            DataBinding.FieldName = 'PasswordTxContenidos'
          end
          object DestinosViewCarpetaContenidos: TcxGridDBColumn
            DataBinding.FieldName = 'CarpetaContenidos'
          end
          object DestinosViewCompactados: TcxGridDBColumn
            DataBinding.FieldName = 'Compactados'
          end
          object DestinosViewCantidadIRIenZIP: TcxGridDBColumn
            DataBinding.FieldName = 'CantidadIRIenZIP'
          end
          object DestinosViewFormatoCompactados: TcxGridDBColumn
            DataBinding.FieldName = 'FormatoCompactados'
          end
          object DestinosViewExtensionCompactados: TcxGridDBColumn
            DataBinding.FieldName = 'ExtensionCompactados'
          end
          object DestinosViewAutoridad: TcxGridDBColumn
            DataBinding.FieldName = 'Autoridad'
          end
          object DestinosViewTipodeAutoridad: TcxGridDBColumn
            DataBinding.FieldName = 'TipodeAutoridad'
          end
          object DestinosViewFormaTxIRI: TcxGridDBColumn
            DataBinding.FieldName = 'FormaTxIRI'
          end
          object DestinosViewFormaTxContenidos: TcxGridDBColumn
            DataBinding.FieldName = 'FormaTxContenidos'
          end
        end
        object DespachadorGridDBCardView1: TcxGridDBCardView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CardIndent = 7
          object DespachadorGridDBCardView1IdDespachador: TcxGridDBCardViewRow
            Caption = 'Id'
            DataBinding.FieldName = 'IdDespachador'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1Despachador: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Despachador'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1IdOrigen: TcxGridDBCardViewRow
            DataBinding.FieldName = 'IdOrigen'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.ListColumns = <>
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1Descripcion: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Descripcion'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1Compactados: TcxGridDBCardViewRow
            DataBinding.FieldName = 'Compactados'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1ServidorRxIRI: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ServidorRxIRI'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1UsuarioRxIRI: TcxGridDBCardViewRow
            DataBinding.FieldName = 'UsuarioRxIRI'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1PasswordRxIRI: TcxGridDBCardViewRow
            DataBinding.FieldName = 'PasswordRxIRI'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1CarpetaIRI: TcxGridDBCardViewRow
            DataBinding.FieldName = 'CarpetaIRI'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1TimeOutIRI: TcxGridDBCardViewRow
            DataBinding.FieldName = 'TimeOutIRI'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1ServidorRxContenidos: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ServidorRxContenidos'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1PasswordRxContenidos: TcxGridDBCardViewRow
            DataBinding.FieldName = 'PasswordRxContenidos'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1UsuarioRxContenidos: TcxGridDBCardViewRow
            DataBinding.FieldName = 'UsuarioRxContenidos'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1CarpetaContenidos: TcxGridDBCardViewRow
            DataBinding.FieldName = 'CarpetaContenidos'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1GeneraAvisos: TcxGridDBCardViewRow
            DataBinding.FieldName = 'GeneraAvisos'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1CantidadFicheros: TcxGridDBCardViewRow
            DataBinding.FieldName = 'CantidadFicheros'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1CantidadFicherosAviso: TcxGridDBCardViewRow
            DataBinding.FieldName = 'CantidadFicherosAviso'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1CantidadFicherosLimite: TcxGridDBCardViewRow
            DataBinding.FieldName = 'CantidadFicherosLimite'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1FormatoCompactados: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FormatoCompactados'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1ExtensionCompactados: TcxGridDBCardViewRow
            DataBinding.FieldName = 'ExtensionCompactados'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1FormaRxIRI: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FormaRxIRI'
            Position.BeginsLayer = True
          end
          object DespachadorGridDBCardView1FormaRxContenidos: TcxGridDBCardViewRow
            DataBinding.FieldName = 'FormaRxContenidos'
            Position.BeginsLayer = True
          end
        end
        object DespachadorGridDBBandedTableView1: TcxGridDBBandedTableView
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnsQuickCustomization = True
          Bands = <
            item
            end>
          object DespachadorGridDBBandedTableView1IdDespachador: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IdDespachador'
            Visible = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object DespachadorGridDBBandedTableView1Despachador: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Despachador'
            Visible = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object DespachadorGridDBBandedTableView1IdServicio: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IdServicio'
            Visible = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object DespachadorGridDBBandedTableView1Servicio: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Servicio'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object DespachadorGridDBBandedTableView1Extension: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Extension'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object DespachadorGridDBBandedTableView1IdFormatosIRI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IdFormatosIRI'
            Visible = False
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object DespachadorGridDBBandedTableView1FormatoIRI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FormatoIRI'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object DespachadorGridDBBandedTableView1BDMasivo: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BDMasivo'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object DespachadorGridDBBandedTableView1BDTrazas: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BDTrazas'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
        object ServiciosView: TcxGridDBTableView
          DataController.DataModeController.GridMode = True
          DataController.DataModeController.SyncMode = False
          DataController.DataSource = DMDespachador.serviciossrc
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object ServiciosViewIdDespachador: TcxGridDBColumn
            DataBinding.FieldName = 'IdDespachador'
            Visible = False
          end
          object ServiciosViewDespachador: TcxGridDBColumn
            DataBinding.FieldName = 'Despachador'
            Visible = False
          end
          object ServiciosViewIdServicio: TcxGridDBColumn
            DataBinding.FieldName = 'IdServicio'
            Visible = False
          end
          object ServiciosViewServicio: TcxGridDBColumn
            DataBinding.FieldName = 'Servicio'
          end
          object ServiciosViewExtension: TcxGridDBColumn
            DataBinding.FieldName = 'Extension'
          end
          object ServiciosViewBDMasivo: TcxGridDBColumn
            DataBinding.FieldName = 'BDMasivo'
          end
          object ServiciosViewBDTrazas: TcxGridDBColumn
            DataBinding.FieldName = 'BDTrazas'
          end
          object ServiciosViewIdFormatosIRI: TcxGridDBColumn
            DataBinding.FieldName = 'IdFormatosIRI'
          end
          object ServiciosViewFormatoIRI: TcxGridDBColumn
            DataBinding.FieldName = 'FormatoIRI'
          end
          object ServiciosViewNumeroServicio: TcxGridDBColumn
            DataBinding.FieldName = 'NumeroServicio'
          end
          object ServiciosViewGrupoServicio: TcxGridDBColumn
            DataBinding.FieldName = 'GrupoServicio'
          end
          object ServiciosViewPrefijoTablaContenidos: TcxGridDBColumn
            DataBinding.FieldName = 'TablaContenidos'
          end
        end
        object OrigenesLevel: TcxGridLevel
          Caption = 'Origenes'
          GridView = OrigenesView
          Options.DetailTabsPosition = dtpTop
        end
        object DestinosLevel: TcxGridLevel
          Caption = 'Destinos'
          GridView = DestinosView
        end
        object ServiciosLevel: TcxGridLevel
          Caption = 'Servicios'
          GridView = ServiciosView
        end
      end
    end
    object TMagFileCopy: TcxTabSheet
      Caption = 'TMagFileCopy'
      ImageIndex = 1
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label20: TLabel
        Left = 170
        Top = 118
        Width = 50
        Height = 14
        Caption = 'Password'
      end
      object Label19: TLabel
        Left = 5
        Top = 120
        Width = 30
        Height = 14
        Caption = 'Logon'
      end
      object Label4: TLabel
        Left = 5
        Top = 70
        Width = 77
        Height = 14
        Caption = 'Target Directory'
      end
      object Label3: TLabel
        Left = 5
        Top = 50
        Width = 82
        Height = 14
        Caption = 'Source File Mask'
      end
      object Label2: TLabel
        Left = 5
        Top = 0
        Width = 82
        Height = 14
        Caption = 'Source Directory'
      end
      object Button1: TButton
        Left = 286
        Top = 152
        Width = 101
        Height = 25
        Caption = 'Comenzar'
        TabOrder = 0
        OnClick = Button1Click
      end
      object doDeleteFiles: TButton
        Left = 150
        Top = 220
        Width = 101
        Height = 25
        Caption = 'Delete Target Files'
        TabOrder = 1
        OnClick = DeleteFiles
      end
      object doDeleteCheck: TButton
        Left = 150
        Top = 190
        Width = 101
        Height = 25
        Caption = 'Check Delete Files'
        TabOrder = 2
        OnClick = DeleteFiles
      end
      object doCopyAbort: TButton
        Left = 150
        Top = 160
        Width = 101
        Height = 25
        Caption = 'Abort'
        Enabled = False
        TabOrder = 3
        OnClick = doAbortClick
      end
      object doCopyFiles: TButton
        Left = 30
        Top = 220
        Width = 101
        Height = 25
        Caption = 'Copy Files'
        TabOrder = 4
        OnClick = CopyFiles
      end
      object doCopyCheck: TButton
        Left = 30
        Top = 190
        Width = 101
        Height = 25
        Caption = 'Check Copy Files'
        TabOrder = 5
        OnClick = CopyFiles
      end
      object doCopyList: TButton
        Left = 30
        Top = 159
        Width = 101
        Height = 25
        Caption = 'List Source Files'
        TabOrder = 6
        OnClick = doCopyListClick
      end
      object NetPassword: TEdit
        Left = 230
        Top = 115
        Width = 101
        Height = 22
        PasswordChar = '*'
        TabOrder = 7
      end
      object NetLogon: TEdit
        Left = 45
        Top = 115
        Width = 111
        Height = 22
        TabOrder = 8
      end
      object CopyTarDir: TEdit
        Left = 5
        Top = 85
        Width = 391
        Height = 22
        TabOrder = 9
        Text = 'c:\gprs'
      end
      object CopySrcFile: TEdit
        Left = 105
        Top = 45
        Width = 121
        Height = 22
        TabOrder = 10
        Text = '*.*'
      end
      object CopySrcDir: TEdit
        Left = 5
        Top = 20
        Width = 396
        Height = 22
        TabOrder = 11
        Text = 'c:\ftp'
      end
    end
    object TMagFtp: TcxTabSheet
      Caption = 'TMagFtp'
      ImageIndex = 2
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label14: TLabel
        Left = 10
        Top = 220
        Width = 297
        Height = 28
        Caption = 
          'The magsys FTP server is anonymous downloads only, you'#39'll need y' +
          'our own upload host '
        WordWrap = True
      end
      object Label25: TLabel
        Left = 138
        Top = 155
        Width = 133
        Height = 14
        Caption = 'Bandwidth Limit (KBits/sec)'
        WordWrap = True
      end
      object Label24: TLabel
        Left = 5
        Top = 130
        Width = 152
        Height = 14
        Caption = 'Keep Alive (secs or 0 for none)'
      end
      object Label23: TLabel
        Left = 220
        Top = 100
        Width = 42
        Height = 14
        Caption = 'SSL Port'
      end
      object Label22: TLabel
        Left = 110
        Top = 100
        Width = 40
        Height = 14
        Caption = 'FTP Port'
      end
      object Label21: TLabel
        Left = 5
        Top = 70
        Width = 74
        Height = 14
        Caption = 'Secure Server:'
      end
      object Label11: TLabel
        Left = 170
        Top = 38
        Width = 50
        Height = 14
        Caption = 'Password'
      end
      object Label10: TLabel
        Left = 5
        Top = 40
        Width = 30
        Height = 14
        Caption = 'Logon'
      end
      object Label9: TLabel
        Left = 5
        Top = 10
        Width = 43
        Height = 14
        Caption = 'FTP Host'
      end
      object ftpIgnoreUtf8: TCheckBox
        Left = 285
        Top = 195
        Width = 100
        Height = 17
        Caption = 'Ignore UTF8 '
        TabOrder = 0
      end
      object FtpNoUtf8: TCheckBox
        Left = 285
        Top = 174
        Width = 100
        Height = 17
        Caption = 'Turn UTF8 Off'
        TabOrder = 1
      end
      object ftpNoHost: TCheckBox
        Left = 145
        Top = 195
        Width = 117
        Height = 17
        Caption = 'No HOST Command'
        TabOrder = 2
      end
      object FtpNoTmpFile: TCheckBox
        Left = 145
        Top = 175
        Width = 134
        Height = 17
        Caption = 'No TMP File for Xfers'
        TabOrder = 3
      end
      object FtpBandWidth: TEdit
        Left = 285
        Top = 150
        Width = 46
        Height = 22
        TabOrder = 4
        Text = '0'
      end
      object FtpNoMd5Crc: TCheckBox
        Left = 5
        Top = 195
        Width = 126
        Height = 17
        Caption = 'No MD5 or CRC Check'
        TabOrder = 5
      end
      object FtpNoZlib: TCheckBox
        Left = 5
        Top = 175
        Width = 126
        Height = 17
        Caption = 'No Mode Z Compress'
        TabOrder = 6
      end
      object FtpNoFeatCmd: TCheckBox
        Left = 5
        Top = 155
        Width = 126
        Height = 17
        Caption = 'No FEAT Command'
        TabOrder = 7
      end
      object FtpKeepAlive: TEdit
        Left = 165
        Top = 125
        Width = 46
        Height = 22
        TabOrder = 8
        Text = '30'
      end
      object FtpPortSsl: TEdit
        Left = 270
        Top = 95
        Width = 46
        Height = 22
        TabOrder = 9
        Text = '990'
      end
      object FtpPort: TEdit
        Left = 165
        Top = 95
        Width = 46
        Height = 22
        TabOrder = 10
        Text = '21'
      end
      object FtpPassive: TCheckBox
        Left = 5
        Top = 100
        Width = 97
        Height = 17
        Caption = 'Passive Mode'
        TabOrder = 11
      end
      object FtpServerType: TComboBox
        Left = 90
        Top = 65
        Width = 241
        Height = 20
        Style = csOwnerDrawFixed
        ItemHeight = 14
        TabOrder = 12
      end
      object FtpPassword: TEdit
        Left = 230
        Top = 35
        Width = 101
        Height = 22
        PasswordChar = '*'
        TabOrder = 13
        Text = 'test@'
      end
      object FtpUsername: TEdit
        Left = 45
        Top = 35
        Width = 111
        Height = 22
        TabOrder = 14
        Text = 'anonymous'
      end
      object FtpHost: TComboBox
        Left = 55
        Top = 5
        Width = 276
        Height = 22
        TabOrder = 15
        Text = 'www.magsys.co.uk'
        Items.Strings = (
          'www.magsys.co.uk'
          'secure.magsys.co.uk'
          'ics.ftptest.org'
          'filezilla.ftptest.org'
          'wsftp.ftptest.org'
          'servu.ftptest.org'
          'gene6.ftptest.org'
          'msftp7.ftptest.org')
      end
    end
    object MultiFtp: TcxTabSheet
      Caption = 'MultiFtp'
      ImageIndex = 3
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label12: TLabel
        Left = 5
        Top = 105
        Width = 73
        Height = 14
        Caption = 'Local Directory'
      end
      object Label13: TLabel
        Left = 125
        Top = 40
        Width = 82
        Height = 14
        Caption = 'Source File Mask'
      end
      object Label8: TLabel
        Left = 5
        Top = 10
        Width = 21
        Height = 14
        Caption = 'Path'
      end
      object Button2: TButton
        Left = 278
        Top = 155
        Width = 101
        Height = 25
        Caption = 'Comenzar'
        TabOrder = 0
        OnClick = Button2Click
      end
      object doFtpUpFiles: TButton
        Left = 140
        Top = 215
        Width = 101
        Height = 25
        Caption = 'Upload Files'
        TabOrder = 1
        OnClick = FtpUpload
      end
      object doFtpUpCheck: TButton
        Left = 140
        Top = 185
        Width = 101
        Height = 25
        Caption = 'Check Upload'
        TabOrder = 2
        OnClick = FtpUpload
      end
      object doFtpAbort: TButton
        Left = 140
        Top = 155
        Width = 101
        Height = 25
        Caption = 'Abort'
        Enabled = False
        TabOrder = 3
        OnClick = doAbortClick
      end
      object doFtpDownFiles: TButton
        Left = 30
        Top = 215
        Width = 101
        Height = 25
        Caption = 'Download Files'
        TabOrder = 4
        OnClick = FtpDownload
      end
      object doFtpDownCheck: TButton
        Left = 30
        Top = 185
        Width = 101
        Height = 25
        Caption = 'Check Download'
        TabOrder = 5
        OnClick = FtpDownload
      end
      object doFtpList: TButton
        Left = 30
        Top = 155
        Width = 101
        Height = 25
        Caption = 'List Host Files'
        TabOrder = 6
        OnClick = doFtpListClick
      end
      object FtpLocDir: TEdit
        Left = 5
        Top = 125
        Width = 386
        Height = 22
        TabOrder = 7
        Text = 'd:\tempfiles'
      end
      object FtpSubdirs: TCheckBox
        Left = 150
        Top = 80
        Width = 136
        Height = 17
        Caption = 'Include Sub Directories'
        TabOrder = 8
      end
      object FtpDelOldTar: TCheckBox
        Left = 5
        Top = 82
        Width = 136
        Height = 13
        Caption = 'Delete Old Target Files'
        TabOrder = 9
      end
      object FtpDelDone: TCheckBox
        Left = 150
        Top = 60
        Width = 136
        Height = 17
        Caption = 'Delete After Transfer'
        TabOrder = 10
      end
      object FtpReplace: TCheckBox
        Left = 5
        Top = 60
        Width = 71
        Height = 17
        Caption = 'Replace'
        TabOrder = 11
      end
      object FtpSrcFile: TEdit
        Left = 210
        Top = 35
        Width = 191
        Height = 22
        TabOrder = 12
        Text = 'd*.zip'
      end
      object FtpCopyAllDir: TCheckBox
        Left = 5
        Top = 40
        Width = 116
        Height = 17
        Caption = 'Copy All Directory '
        TabOrder = 13
      end
      object FtpPath: TEdit
        Left = 60
        Top = 5
        Width = 341
        Height = 22
        TabOrder = 14
        Text = '/'
      end
    end
    object SingleFtp: TcxTabSheet
      Caption = 'SingleFtp'
      ImageIndex = 4
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label18: TLabel
        Left = 5
        Top = 110
        Width = 127
        Height = 14
        Caption = 'Upload File Path and Name'
      end
      object Label17: TLabel
        Left = 5
        Top = 60
        Width = 96
        Height = 14
        Caption = 'Download Directory'
      end
      object Label16: TLabel
        Left = 5
        Top = 40
        Width = 98
        Height = 14
        Caption = 'Download File Name'
      end
      object Label15: TLabel
        Left = 5
        Top = 10
        Width = 60
        Height = 14
        Caption = 'Remote Path'
      end
      object Label27: TLabel
        Left = 310
        Top = 189
        Width = 50
        Height = 14
        Caption = 'Password'
      end
      object Label28: TLabel
        Left = 152
        Top = 189
        Width = 30
        Height = 14
        Caption = 'Logon'
      end
      object Label29: TLabel
        Left = 149
        Top = 160
        Width = 43
        Height = 14
        Caption = 'FTP Host'
      end
      object doFtpAbort1: TButton
        Left = 116
        Top = 230
        Width = 76
        Height = 25
        Caption = 'Abort'
        Enabled = False
        TabOrder = 0
        OnClick = doAbortClick
      end
      object doFtpUp1: TButton
        Left = 10
        Top = 231
        Width = 96
        Height = 25
        Caption = 'Single Upload'
        TabOrder = 1
        OnClick = doFtpUp1Click
      end
      object doFtpDown1: TButton
        Left = 10
        Top = 200
        Width = 96
        Height = 25
        Caption = 'Single Download'
        TabOrder = 2
        OnClick = doFtpDown1Click
      end
      object FtpOneDelDone: TCheckBox
        Left = 10
        Top = 177
        Width = 136
        Height = 17
        Caption = 'Delete After Transfer'
        Checked = True
        State = cbChecked
        TabOrder = 3
        Visible = False
      end
      object FtpOneReplace: TCheckBox
        Left = 10
        Top = 160
        Width = 71
        Height = 17
        Caption = 'Replace'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object Ftp1UpFile: TEdit
        Left = 5
        Top = 130
        Width = 396
        Height = 22
        TabOrder = 5
        Text = 'd:\tempfiles\dunman.zip'
      end
      object Ftp1LocDir: TEdit
        Left = 5
        Top = 80
        Width = 396
        Height = 22
        TabOrder = 6
        Text = 'd:\tempfiles'
      end
      object Ftp1SrcName: TEdit
        Left = 115
        Top = 35
        Width = 216
        Height = 22
        TabOrder = 7
        Text = 'dunman.zip'
      end
      object Ftp1Path: TEdit
        Left = 75
        Top = 5
        Width = 326
        Height = 22
        TabOrder = 8
        Text = '/software'
      end
      object Ftp1Host: TComboBox
        Left = 198
        Top = 158
        Width = 276
        Height = 22
        TabOrder = 9
        Text = 'www.magsys.co.uk'
        Items.Strings = (
          'www.magsys.co.uk'
          'secure.magsys.co.uk'
          'ics.ftptest.org'
          'filezilla.ftptest.org'
          'wsftp.ftptest.org'
          'servu.ftptest.org'
          'gene6.ftptest.org'
          'msftp7.ftptest.org')
      end
      object Ftp1Password: TEdit
        Left = 366
        Top = 186
        Width = 101
        Height = 22
        PasswordChar = '*'
        TabOrder = 10
        Text = 'test@'
      end
      object Ftp1Usernam: TEdit
        Left = 185
        Top = 186
        Width = 111
        Height = 22
        TabOrder = 11
        Text = 'anonymous'
      end
    end
    object TMagHttp: TcxTabSheet
      Caption = 'TMagHttp'
      ImageIndex = 7
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label7: TLabel
        Left = 5
        Top = 70
        Width = 77
        Height = 14
        Caption = 'Target Directory'
      end
      object Label6: TLabel
        Left = 5
        Top = 50
        Width = 82
        Height = 14
        Caption = 'Source File Mask'
      end
      object Label5: TLabel
        Left = 5
        Top = 0
        Width = 87
        Height = 14
        Caption = 'Source HTTP Path'
      end
      object doHttpAbort: TButton
        Left = 150
        Top = 115
        Width = 101
        Height = 25
        Caption = 'Abort'
        Enabled = False
        TabOrder = 0
        OnClick = doAbortClick
      end
      object doHttpDownFiles: TButton
        Left = 30
        Top = 145
        Width = 101
        Height = 25
        Caption = 'Download Files'
        TabOrder = 1
        OnClick = HttpDownload
      end
      object doHttpDownCheck: TButton
        Left = 30
        Top = 115
        Width = 101
        Height = 25
        Caption = 'Check Down Files'
        TabOrder = 2
        OnClick = HttpDownload
      end
      object HttpTarDir: TEdit
        Left = 5
        Top = 85
        Width = 391
        Height = 22
        TabOrder = 3
        Text = 'd:\tempfiles'
      end
      object HttpSrcFile: TComboBox
        Left = 100
        Top = 50
        Width = 111
        Height = 22
        TabOrder = 4
        Text = '*.zip'
        Items.Strings = (
          '*.ide'
          '*.zip'
          '*.htm'
          '*.*')
      end
      object HttpSrcDir: TComboBox
        Left = 5
        Top = 20
        Width = 401
        Height = 22
        TabOrder = 5
        Text = 'http://www.magsys.co.uk/dunman/default.asp'
        Items.Strings = (
          'http://www.magsys.co.uk/dunman/default.asp'
          'http://www.magsys.co.uk/telecom/residx.htm'
          'http://www.sophos.com/downloads/ide/index.html'
          'http://web4.magenta/dunman/default.asp'
          'http://web4.magenta/telecom/residx.htm'
          'https://secure.magsys.co.uk/secure/download.asp')
      end
    end
    object Otros: TcxTabSheet
      Caption = 'Otros'
      ImageIndex = 5
      TabVisible = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label1: TLabel
        Left = 9
        Top = 0
        Width = 299
        Height = 56
        Caption = 
          'The demonstration application is designed to show how the three ' +
          'Magenta File Transfer components are used from code, there are n' +
          'umerous properties at are set in code, not through the GUI.  '
        WordWrap = True
      end
      object LabelVersion: TLabel
        Left = 9
        Top = 62
        Width = 37
        Height = 14
        Caption = 'Version'
      end
      object Label26: TLabel
        Left = 9
        Top = 191
        Width = 322
        Height = 42
        Caption = 
          'This Wide demo supports the full Unicode components for Delphi 7' +
          ' and later, but the GUI is only Unicode when built with Delphi 2' +
          '009 and later.  '
        WordWrap = True
      end
      object LabelSslState: TLabel
        Left = 113
        Top = 234
        Width = 66
        Height = 14
        Caption = 'LabelSslState'
      end
      object ShowDiagsUtf8: TCheckBox
        Left = 9
        Top = 99
        Width = 231
        Height = 17
        Caption = 'Show FTP UTF-8 Commands'
        TabOrder = 0
      end
      object ShowDiagsHigh: TCheckBox
        Left = 9
        Top = 122
        Width = 231
        Height = 17
        Caption = 'Show High Level Diagnostic Information'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object ShowDiagsLow: TCheckBox
        Left = 9
        Top = 145
        Width = 231
        Height = 17
        Caption = 'Show Low Level Diagnostic Information'
        TabOrder = 2
      end
      object doTest: TButton
        Left = 337
        Top = 19
        Width = 75
        Height = 25
        Caption = 'Test'
        TabOrder = 3
        Visible = False
        OnClick = doTestClick
      end
      object ShowDiagsSSL: TCheckBox
        Left = 9
        Top = 168
        Width = 231
        Height = 17
        Caption = 'Show SSL Dump Diagnostic Information'
        TabOrder = 4
      end
      object doExit: TButton
        Left = 337
        Top = 187
        Width = 75
        Height = 25
        Caption = 'Exit'
        TabOrder = 5
        OnClick = doExitClick
      end
      object doClear: TButton
        Left = 337
        Top = 156
        Width = 75
        Height = 25
        Caption = 'Clear'
        TabOrder = 6
        OnClick = doClearClick
      end
    end
    object Memos: TcxTabSheet
      Caption = 'Memos'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object LogDelim: TMemo
        Left = 0
        Top = 0
        Width = 508
        Height = 155
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object LogText: TMemo
        Left = 0
        Top = 155
        Width = 508
        Height = 115
        Align = alClient
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 1
      end
    end
  end
  object BtnDespachar: TcxButton
    Left = 8
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Comenzar'
    TabOrder = 0
    OnClick = BtnDespacharClick
  end
  object DBAdvControlDropDown1: TDBAdvControlDropDown
    Left = 98
    Top = 48
    Width = 167
    Height = 22
    DropDownColor = 15984090
    DropDownColorTo = 15785680
    DropDownBorderColor = clNone
    DropDownSizeable = False
    EditorEnabled = False
    LabelMargin = 0
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    Version = '1.2.0.0'
    Text = 'Click para ver configuraci'#243'n'
    ButtonAppearance.BorderColorHot = 10079963
    ButtonAppearance.BorderColorDown = 4370174
    ButtonAppearance.Color = 16773091
    ButtonAppearance.ColorTo = 16768452
    ButtonAppearance.ColorDisabledTo = 11974326
    ButtonAppearance.ColorDown = 11196927
    ButtonAppearance.ColorDownTo = 7257087
    ButtonAppearance.ColorHot = 15465983
    ButtonAppearance.ColorHotTo = 11332863
    ButtonAppearance.Font.Charset = DEFAULT_CHARSET
    ButtonAppearance.Font.Color = clWindowText
    ButtonAppearance.Font.Height = -11
    ButtonAppearance.Font.Name = 'Tahoma'
    ButtonAppearance.Font.Style = []
    DropDownHeader.Color = 16773091
    DropDownHeader.ColorTo = 16765615
    DropDownHeader.Font.Charset = DEFAULT_CHARSET
    DropDownHeader.Font.Color = clWindowText
    DropDownHeader.Font.Height = -11
    DropDownHeader.Font.Name = 'Tahoma'
    DropDownHeader.Font.Style = []
    DropDownHeader.Visible = False
    DropDownHeader.BorderColor = 16765615
    DropDownHeader.Buttons = <>
    DropDownFooter.Color = 16773091
    DropDownFooter.ColorTo = 16765615
    DropDownFooter.Font.Charset = DEFAULT_CHARSET
    DropDownFooter.Font.Color = clWindowText
    DropDownFooter.Font.Height = -11
    DropDownFooter.Font.Name = 'Tahoma'
    DropDownFooter.Font.Style = []
    DropDownFooter.Visible = False
    DropDownFooter.BorderColor = 16765615
    DropDownFooter.Buttons = <>
    TabOrder = 2
    Control = cxPageControl1
    SelectionColorStyle = 1
    TMSStyle = 4
  end
  object dxSkinController1: TdxSkinController
    SkinName = 'DarkSide'
    Left = 200
    Top = 248
  end
  object XMLDocument1: TXMLDocument
    Left = 160
    Top = 8
    DOMVendorDesc = 'MSXML'
  end
end
