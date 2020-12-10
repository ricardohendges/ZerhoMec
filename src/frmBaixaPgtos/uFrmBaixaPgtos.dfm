inherited frmBaseCrud1: TfrmBaseCrud1
  Caption = 'frmBaseCrud1'
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton [0]
    Left = 288
    Top = 240
    Width = 23
    Height = 22
  end
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
        ExplicitLeft = 1
        ExplicitTop = 24
        object lbcpg_id: TLabel
          Left = 14
          Top = 20
          Width = 120
          Height = 13
          Caption = 'C'#243'digo da Conta a Pagar'
        end
        object lblValorCPG: TLabel
          Left = 14
          Top = 128
          Width = 96
          Height = 13
          Caption = 'Valor Conta a Pagar'
        end
        object Label3: TLabel
          Left = 14
          Top = 75
          Width = 158
          Height = 13
          Caption = 'C'#243'digo da Nota Fiscal de Compra'
        end
        object lblFornecedor_ID: TLabel
          Left = 14
          Top = 184
          Width = 106
          Height = 13
          Caption = 'C'#243'digo do Fornecedor'
        end
        object lblSaldo: TLabel
          Left = 284
          Top = 75
          Width = 26
          Height = 13
          Caption = 'Saldo'
        end
        object lblVencimento: TLabel
          Left = 284
          Top = 16
          Width = 96
          Height = 13
          Caption = 'Data de Vencimento'
        end
        object lblParcela: TLabel
          Left = 284
          Top = 128
          Width = 35
          Height = 13
          Caption = 'Parcela'
        end
        object dbContaPagar_ID: TDBEdit
          Left = 14
          Top = 35
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object dbNotaCompra_ID: TDBEdit
          Left = 14
          Top = 94
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object dbContaPagar_Valor: TDBEdit
          Left = 14
          Top = 147
          Width = 121
          Height = 21
          TabOrder = 2
        end
        object dbFornecedor_ID: TDBEdit
          Left = 14
          Top = 203
          Width = 121
          Height = 21
          TabOrder = 3
        end
        object dbParcela: TDBEdit
          Left = 284
          Top = 147
          Width = 121
          Height = 21
          TabOrder = 4
        end
        object dbSaldo: TDBEdit
          Left = 284
          Top = 94
          Width = 121
          Height = 21
          TabOrder = 5
        end
      end
    end
  end
  inherited pnlMenuBotton: TPanel
    inherited lblStatusForm: TLabel
      Height = 14
    end
  end
  object dtContaPagar_Vecto: TDateTimePicker [4]
    Left = 288
    Top = 59
    Width = 186
    Height = 21
    Date = 44165.000000000000000000
    Time = 0.514725497683684800
    TabOrder = 3
  end
  inherited actlstPrincipal: TActionList
    Left = 288
    Top = 408
  end
  inherited dsPadrao: TDataSource
    Left = 208
    Top = 408
  end
  inherited frxrprtPrincipal: TfrxReport
    Left = 360
    Top = 408
    Datasets = <>
    Variables = <>
    Style = <>
  end
  inherited frxDBDatasetPrincipal: TfrxDBDataset
    Left = 456
    Top = 403
  end
end
