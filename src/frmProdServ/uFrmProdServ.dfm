inherited frmProdServ: TfrmProdServ
  Caption = 'Produtos e Servicos'
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
        object LabelProdutoID: TLabel
          Left = 20
          Top = 5
          Width = 49
          Height = 13
          Caption = 'ProdutoID'
        end
        object LabelUndMed: TLabel
          Left = 20
          Top = 47
          Width = 76
          Height = 13
          Caption = 'Unidade Medida'
        end
        object LabelMarca: TLabel
          Left = 20
          Top = 91
          Width = 29
          Height = 13
          Caption = 'Marca'
        end
        object LabelProNome: TLabel
          Left = 20
          Top = 131
          Width = 68
          Height = 13
          Caption = 'Nome Produto'
        end
        object LabelProTipo: TLabel
          Left = 20
          Top = 171
          Width = 57
          Height = 13
          Caption = 'Tipo Poduto'
        end
        object LabelProValor: TLabel
          Left = 20
          Top = 211
          Width = 65
          Height = 13
          Caption = 'Valor Produto'
        end
        object LabelProCusto: TLabel
          Left = 20
          Top = 257
          Width = 69
          Height = 13
          Caption = 'Custo Produto'
        end
        object LabelProSituacao: TLabel
          Left = 175
          Top = 5
          Width = 82
          Height = 13
          Caption = 'Situacao Produto'
        end
        object EdtIDProduto: TDBEdit
          Left = 20
          Top = 20
          Width = 121
          Height = 21
          DataField = 'PRO_ID'
          DataSource = dsPadrao
          TabOrder = 0
        end
        object EdtUndMedida: TDBEdit
          Left = 20
          Top = 64
          Width = 121
          Height = 21
          DataField = 'UND_ABR'
          DataSource = dsPadrao
          TabOrder = 1
        end
        object EdtMarca: TDBEdit
          Left = 20
          Top = 105
          Width = 121
          Height = 21
          DataField = 'MAR_ID'
          DataSource = dsPadrao
          TabOrder = 2
        end
        object EdtNomeProduto: TDBEdit
          Left = 20
          Top = 144
          Width = 121
          Height = 21
          DataField = 'PRO_NOME'
          DataSource = dsPadrao
          TabOrder = 3
        end
        object EdtTipoProduto: TDBEdit
          Left = 20
          Top = 184
          Width = 121
          Height = 21
          DataField = 'PRO_TIPO'
          DataSource = dsPadrao
          TabOrder = 4
        end
        object EdtValorProduto: TDBEdit
          Left = 20
          Top = 230
          Width = 121
          Height = 21
          DataField = 'PRO_VALOR'
          DataSource = dsPadrao
          TabOrder = 5
        end
        object EdtCustoProduto: TDBEdit
          Left = 20
          Top = 276
          Width = 121
          Height = 21
          DataField = 'PRO_CUSTO'
          DataSource = dsPadrao
          TabOrder = 6
        end
        object EdtSitProduto: TDBEdit
          Left = 175
          Top = 24
          Width = 121
          Height = 21
          DataField = 'PRO_SITUACAO'
          DataSource = dsPadrao
          TabOrder = 7
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
