inherited frmCadLogin: TfrmCadLogin
  Caption = 'frmCadLogin'
  FormStyle = fsNormal
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    ActivePage = tsCadastro
    inherited tsListagem: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 515
      ExplicitHeight = 425
      inherited pnlFiltros: TPanel
        inherited gbCampos: TGroupBox
          inherited cbbCampos: TComboBox
            ItemIndex = 1
            Text = 'Nome'
            Items.Strings = (
              'C'#243'digo'
              'Nome'
              'Tipo')
          end
        end
        inherited gbFiltros: TGroupBox
          inherited cbbFiltros: TComboBox
            ItemIndex = 0
            Text = 'Cont'#233'm'
            Items.Strings = (
              'Cont'#233'm')
          end
        end
        inherited gbPesquisar: TGroupBox
          inherited EdtPesquisar: TEdit
            ParentShowHint = False
            ShowHint = True
            TextHint = 'Pesquisar...'
          end
        end
      end
      inherited pnlInfos: TPanel
        inherited dbnvgrPrincipal: TDBNavigator
          Hints.Strings = ()
        end
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 515
      ExplicitHeight = 425
      inherited pnlPrincipal: TPanel
        object lblCodigo: TLabel
          Left = 33
          Top = 29
          Width = 37
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object lblNome: TLabel
          Left = 33
          Top = 75
          Width = 77
          Height = 13
          Caption = 'Nome completo:'
        end
        object lblUsuario: TLabel
          Left = 33
          Top = 121
          Width = 84
          Height = 13
          Caption = 'Nome de usu'#225'rio:'
        end
        object lblTipoUsuario: TLabel
          Left = 33
          Top = 302
          Width = 46
          Height = 13
          Caption = 'Privil'#233'gio:'
        end
        object grpValidarSenha: TGroupBox
          Left = 33
          Top = 173
          Width = 329
          Height = 124
          Caption = 'Validar senha:'
          TabOrder = 3
          object lblConfirmarSenha: TLabel
            Left = 12
            Top = 66
            Width = 83
            Height = 13
            Caption = 'Confirmar senha:'
          end
          object lblSenha: TLabel
            Left = 12
            Top = 17
            Width = 34
            Height = 13
            Caption = 'Senha:'
          end
          object dbEdtSenha: TDBEdit
            Left = 12
            Top = 36
            Width = 188
            Height = 21
            DataField = 'USU_SENHA'
            DataSource = dsPadrao
            PasswordChar = '*'
            TabOrder = 0
          end
          object edtConfirmarSenha: TEdit
            Left = 12
            Top = 85
            Width = 188
            Height = 21
            PasswordChar = '*'
            TabOrder = 1
            OnExit = edtConfirmarSenhaExit
          end
        end
        object dbEdtCodigo: TDBEdit
          Left = 33
          Top = 48
          Width = 88
          Height = 21
          DataField = 'USU_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object dbEdtNome: TDBEdit
          Left = 33
          Top = 94
          Width = 121
          Height = 21
          DataField = 'USU_NOME'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object dbEdtUsername: TDBEdit
          Left = 33
          Top = 140
          Width = 121
          Height = 21
          DataField = 'USU_LOGIN'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object dbCbTipoUsuario: TDBComboBox
          Left = 33
          Top = 322
          Width = 188
          Height = 21
          DataField = 'USU_TIPO'
          DataSource = dsPadrao
          Items.Strings = (
            'Admin'
            'Normal')
          TabOrder = 4
        end
      end
    end
  end
  inherited pnlMenuBotton: TPanel
    inherited lblStatusForm: TLabel
      Height = 14
    end
  end
  inherited actlstPrincipal: TActionList
    inherited actSair: TAction
      AutoCheck = True
    end
  end
  inherited dsPadrao: TDataSource
    Left = 488
    Top = 104
  end
  inherited frxrprtPrincipal: TfrxReport
    Left = 488
    Top = 152
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
    end
  end
  inherited frxDBDatasetPrincipal: TfrxDBDataset
    Left = 488
    Top = 8
  end
  inherited FDPadrao: TFDQuery
    Left = 484
    Top = 56
  end
end
