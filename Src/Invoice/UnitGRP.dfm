object FormGRP: TFormGRP
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'FormGRP'
  ClientHeight = 102
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 59
    Height = 13
    Caption = 'Group Name'
  end
  object Label2: TLabel
    Left = 17
    Top = 43
    Width = 45
    Height = 13
    Caption = 'Comment'
  end
  object DBEditComment: TDBEdit
    Left = 108
    Top = 40
    Width = 251
    Height = 21
    Color = clBtnFace
    DataField = 'GRP_COMMENT'
    DataSource = DGRP
    TabOrder = 0
  end
  object DBEditName: TDBEdit
    Left = 108
    Top = 13
    Width = 251
    Height = 21
    Color = clBtnFace
    DataField = 'GRP_NAME'
    DataSource = DGRP
    TabOrder = 1
  end
  object ButtonCancel: TButton
    Left = 108
    Top = 67
    Width = 100
    Height = 25
    Caption = 'Cancel'
    TabOrder = 2
    OnClick = ButtonCancelClick
  end
  object ButtonOK: TButton
    Left = 228
    Top = 67
    Width = 131
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = ButtonOKClick
  end
  object WGRP: TFDQuery
    Connection = DM.Connect
    SQL.Strings = (
      'SELECT dbo.GRP.* FROM dbo.GRP')
    Left = 14
    Top = 64
    object WGRPGRP_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'GRP_ID'
      Origin = 'GRP_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object WGRPGRP_NAME: TWideStringField
      FieldName = 'GRP_NAME'
      Origin = 'GRP_NAME'
      FixedChar = True
    end
    object WGRPGRP_COMMENT: TWideStringField
      FieldName = 'GRP_COMMENT'
      Origin = 'GRP_COMMENT'
      FixedChar = True
      Size = 200
    end
  end
  object DGRP: TDataSource
    DataSet = WGRP
    Left = 67
    Top = 64
  end
end
