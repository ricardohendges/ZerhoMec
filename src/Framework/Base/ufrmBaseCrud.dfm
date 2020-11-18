object frmBaseCrud: TfrmBaseCrud
  Left = 0
  Top = 0
  Caption = 'Base Crud'
  ClientHeight = 381
  ClientWidth = 566
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 50
    Width = 566
    Height = 331
    ActivePage = tsCadastro
    Align = alClient
    TabOrder = 0
    ExplicitTop = 128
    ExplicitHeight = 253
    object tsCadastro: TTabSheet
      Caption = 'Cadastro'
      ExplicitHeight = 353
      object pnlPrincipal: TPanel
        Left = 0
        Top = 0
        Width = 558
        Height = 303
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 184
        ExplicitTop = 104
        ExplicitWidth = 185
        ExplicitHeight = 41
      end
    end
    object tsListagem: TTabSheet
      Caption = 'Listagem'
      ImageIndex = 1
      ExplicitHeight = 353
      object pnlFiltros: TPanel
        Left = 0
        Top = 0
        Width = 558
        Height = 49
        Align = alTop
        TabOrder = 0
        DesignSize = (
          558
          49)
        object lblCampos: TLabel
          Left = 16
          Top = 6
          Width = 38
          Height = 13
          Caption = 'Campos'
        end
        object lblCondicao: TLabel
          Left = 167
          Top = 6
          Width = 44
          Height = 13
          Caption = 'Condi'#231#227'o'
        end
        object cbbCampos: TComboBox
          Left = 16
          Top = 20
          Width = 145
          Height = 21
          TabOrder = 0
          Text = 'cbbCampos'
        end
        object cbbFiltros: TComboBox
          Left = 167
          Top = 20
          Width = 138
          Height = 21
          TabOrder = 1
          Text = 'cbbFiltros'
        end
        object edtFiltro: TLabeledEdit
          Left = 311
          Top = 20
          Width = 234
          Height = 21
          Anchors = [akLeft, akTop, akRight]
          EditLabel.Width = 24
          EditLabel.Height = 13
          EditLabel.Caption = 'Filtro'
          TabOrder = 2
        end
      end
      object pnlGrid: TPanel
        Left = 0
        Top = 49
        Width = 558
        Height = 229
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 192
        ExplicitTop = 176
        ExplicitWidth = 185
        ExplicitHeight = 41
        object dbgrdPrincipal: TDBGrid
          Left = 1
          Top = 1
          Width = 556
          Height = 227
          Align = alClient
          DataSource = dsPadrao
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnTitleClick = dbgrdPrincipalTitleClick
        end
      end
      object pnlInfos: TPanel
        Left = 0
        Top = 278
        Width = 558
        Height = 25
        Align = alBottom
        TabOrder = 2
        ExplicitTop = 312
        object dbnvgrPrincipal: TDBNavigator
          Left = 0
          Top = -1
          Width = 185
          Height = 25
          DataSource = dsPadrao
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
          TabOrder = 0
        end
      end
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 566
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object btnInserir: TSpeedButton
      Left = 0
      Top = 0
      Width = 50
      Height = 50
      Action = actInserir
      Align = alLeft
    end
    object btnEditar: TSpeedButton
      Left = 50
      Top = 0
      Width = 50
      Height = 50
      Action = actEditar
      Align = alLeft
    end
    object btnExcluir: TSpeedButton
      Left = 100
      Top = 0
      Width = 50
      Height = 50
      Action = actExcluir
      Align = alLeft
    end
    object btnSalvar: TSpeedButton
      Left = 150
      Top = 0
      Width = 50
      Height = 50
      Action = actSalvar
      Align = alLeft
    end
    object btnCancelar: TSpeedButton
      Left = 200
      Top = 0
      Width = 50
      Height = 50
      Action = actCancelar
      Align = alLeft
    end
    object btnImprimir: TSpeedButton
      Left = 250
      Top = 0
      Width = 50
      Height = 50
      Action = actImprimir
      Align = alLeft
    end
    object btnSair: TSpeedButton
      Left = 300
      Top = 0
      Width = 50
      Height = 50
      Action = actSair
      Align = alLeft
    end
  end
  object actlstPrincipal: TActionList
    Left = 368
    Top = 8
    object actInserir: TAction
      Caption = 'Inserir'
    end
    object actEditar: TAction
      Caption = 'Editar'
    end
    object actExcluir: TAction
      Caption = 'Excluir'
    end
    object actSalvar: TAction
      Caption = 'Salvar'
    end
    object actCancelar: TAction
      Caption = 'Cancelar'
    end
    object actImprimir: TAction
      Caption = 'Imprimir'
    end
    object actSair: TAction
      Caption = 'Sair'
    end
  end
  object dsPadrao: TDataSource
    DataSet = frmBaseDM.FDPrincipal
    Left = 400
    Top = 8
  end
  object frxrprtPrincipal: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44145.902236655090000000
    ReportOptions.LastChange = 44145.902236655090000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 472
    Top = 16
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxDBDatasetPrincipal: TfrxDBDataset
    UserName = 'dsPadrao'
    CloseDataSource = False
    DataSource = dsPadrao
    BCDToCurrency = False
    Left = 472
    Top = 59
  end
end