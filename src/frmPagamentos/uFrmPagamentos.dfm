inherited frmPagamentos: TfrmPagamentos
  Caption = 'Pagamentos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    ActivePage = tsCadastro
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
        object LabelIDPagamento: TLabel
          Left = 20
          Top = 5
          Width = 71
          Height = 13
          Caption = 'Pagamento  ID'
        end
        object LabelDesconto: TLabel
          Left = 20
          Top = 45
          Width = 45
          Height = 13
          Caption = 'Desconto'
        end
        object LabelObservacao: TLabel
          Left = 20
          Top = 85
          Width = 58
          Height = 13
          Caption = 'Observacao'
        end
        object EdtPagamento: TDBEdit
          Left = 20
          Top = 20
          Width = 121
          Height = 21
          DataField = 'FPA_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object EdtDescricao: TDBEdit
          Left = 20
          Top = 60
          Width = 121
          Height = 21
          DataField = 'FPA_DESC'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object EdtObservacao: TDBEdit
          Left = 20
          Top = 100
          Width = 121
          Height = 21
          DataField = 'FPA_OBS'
          DataSource = dsPadrao
          TabOrder = 2
        end
      end
    end
  end
  inherited frxrprtPrincipal: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
