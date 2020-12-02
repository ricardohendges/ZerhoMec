inherited frmCadLogin: TfrmCadLogin
  Caption = 'frmCadLogin'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    inherited tsListagem: TTabSheet
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
          Left = 73
          Top = 40
          Width = 37
          Height = 13
          Caption = 'C'#243'digo:'
        end
        object lblNome: TLabel
          Left = 33
          Top = 64
          Width = 77
          Height = 13
          Caption = 'Nome completo:'
        end
        object lblUsuario: TLabel
          Left = 26
          Top = 91
          Width = 84
          Height = 13
          Caption = 'Nome de usu'#225'rio:'
        end
        object lblTipoUsuario: TLabel
          Left = 64
          Top = 203
          Width = 46
          Height = 13
          Caption = 'Privil'#233'gio:'
        end
        object grpValidarSenha: TGroupBox
          Left = 24
          Top = 118
          Width = 329
          Height = 79
          Caption = 'Validar senha:'
          TabOrder = 2
          object lblConfirmarSenha: TLabel
            Left = 3
            Top = 44
            Width = 83
            Height = 13
            Caption = 'Confirmar senha:'
          end
          object lblSenha: TLabel
            Left = 52
            Top = 17
            Width = 34
            Height = 13
            Caption = 'Senha:'
          end
          object dbEdtSenha: TDBEdit
            Left = 92
            Top = 17
            Width = 188
            Height = 21
            DataField = 'USU_SENHA'
            DataSource = dsPadrao
            TabOrder = 0
          end
          object edtConfirmarSenha: TEdit
            Left = 92
            Top = 44
            Width = 188
            Height = 21
            TabOrder = 1
            Text = 'edtConfirmarSenha'
          end
        end
        object dbEdtCodigo: TDBEdit
          Left = 116
          Top = 37
          Width = 121
          Height = 21
          DataField = 'USU_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object dbEdtNome: TDBEdit
          Left = 116
          Top = 64
          Width = 121
          Height = 21
          DataField = 'USU_NOME'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object dbEdtUsername: TDBEdit
          Left = 116
          Top = 91
          Width = 121
          Height = 21
          DataField = 'USU_LOGIN'
          DataSource = dsPadrao
          TabOrder = 3
        end
        object dbCbTipoUsuario: TDBComboBox
          Left = 116
          Top = 202
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
  inherited frxrprtPrincipal: TfrxReport
    Left = 456
    Top = 8
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited frxDBDatasetPrincipal: TfrxDBDataset
    Left = 488
    Top = 8
  end
end
