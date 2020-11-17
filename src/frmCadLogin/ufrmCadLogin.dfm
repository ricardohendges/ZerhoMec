inherited frmCadLogin: TfrmCadLogin
  Caption = 'frmCadLogin'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    ActivePage = tsCadastro
    inherited tsListagem: TTabSheet
      inherited pnlGrid: TPanel
        Height = 231
        inherited dbgrdPrincipal: TDBGrid
          Height = 229
          OnCellClick = dbgrdPrincipalCellClick
        end
      end
      inherited pnlInfos: TPanel
        Top = 280
        Height = 23
        ExplicitTop = 280
        ExplicitHeight = 23
        inherited lblRolagem: TLabel
          Height = 21
          ExplicitLeft = 186
        end
        inherited dbnvgrPrincipal: TDBNavigator
          Height = 21
          Hints.Strings = ()
          ExplicitHeight = 18
        end
      end
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
