inherited frmCadLogin: TfrmCadLogin
  Caption = 'frmCadLogin'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    inherited tsListagem: TTabSheet
      ExplicitHeight = 303
      inherited pnlFiltros: TPanel
        inherited edtFiltro: TLabeledEdit
          EditLabel.ExplicitLeft = 0
          EditLabel.ExplicitTop = -16
          EditLabel.ExplicitWidth = 40
        end
      end
      inherited pnlGrid: TPanel
        ExplicitLeft = 0
        ExplicitTop = 49
        ExplicitWidth = 558
        ExplicitHeight = 229
      end
      inherited pnlInfos: TPanel
        ExplicitTop = 278
        inherited dbnvgrPrincipal: TDBNavigator
          Hints.Strings = ()
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
