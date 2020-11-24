object frmBaseDM: TfrmBaseDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 198
  Width = 286
  object FDConnection: TFDConnection
    LoginPrompt = False
    Left = 48
    Top = 16
  end
  object TFDPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 48
    Top = 64
  end
  object TFDGUIxWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 48
    Top = 112
  end
  object FDPrincipal: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select * from cliente')
    Left = 144
    Top = 16
  end
end
