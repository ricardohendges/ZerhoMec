inherited frmCadLogin: TfrmCadLogin
  Caption = 'frmCadLogin'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    ExplicitHeight = 453
    inherited tsListagem: TTabSheet
      ExplicitHeight = 425
      inherited pnlGrid: TPanel
        ExplicitHeight = 351
      end
      inherited pnlInfos: TPanel
        inherited dbnvgrPrincipal: TDBNavigator
          Hints.Strings = ()
        end
      end
    end
    inherited tsCadastro: TTabSheet
      ExplicitHeight = 425
      inherited pnlPrincipal: TPanel
        ExplicitHeight = 425
      end
    end
  end
  inherited pnlBotoes: TPanel
    ExplicitHeight = 453
  end
  inherited pnlMenuBotton: TPanel
    ExplicitTop = 453
    inherited lblStatusForm: TLabel
      ExplicitLeft = 11
      ExplicitTop = 2
    end
  end
  inherited frxrprtPrincipal: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
