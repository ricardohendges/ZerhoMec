inherited frmCadLogin: TfrmCadLogin
  Caption = 'frmCadLogin'
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
        ExplicitLeft = 0
        ExplicitTop = 0
        inherited Button1: TButton
          Left = 16
          Top = 16
          ExplicitLeft = 16
          ExplicitTop = 16
        end
      end
    end
  end
  inherited pnlMenuBotton: TPanel
    inherited lblStatusForm: TLabel
      Height = 14
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
