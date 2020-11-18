inherited frmCadLogin: TfrmCadLogin
  Caption = 'Formul'#225'rio de cadastro de Login/Usu'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    inherited tsCadastro: TTabSheet
      inherited pnlPrincipal: TPanel
        ExplicitLeft = -88
        ExplicitTop = -32
        object Label1: TLabel
          Left = 25
          Top = 12
          Width = 31
          Height = 13
          Caption = 'Label1'
        end
        object Label2: TLabel
          Left = 25
          Top = 53
          Width = 31
          Height = 36
          Caption = 'Label1'
        end
        object dbedtCodigo: TDBEdit
          Left = 25
          Top = 26
          Width = 121
          Height = 21
          TabOrder = 0
        end
      end
    end
    inherited tsListagem: TTabSheet
      inherited pnlInfos: TPanel
        inherited dbnvgrPrincipal: TDBNavigator
          Hints.Strings = ()
        end
      end
    end
  end
  inherited pnlBotoes: TPanel
    inherited btnExcluir: TSpeedButton
      Caption = 'Exclui'
    end
  end
  inherited actlstPrincipal: TActionList
    inherited actExcluir: TAction
      Caption = 'Excluis'#227'o'
    end
  end
  inherited frxrprtPrincipal: TfrxReport
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
