object FormCNT: TFormCNT
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'FormCNT'
  ClientHeight = 191
  ClientWidth = 447
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
    Width = 68
    Height = 13
    Caption = 'Contact Name'
  end
  object Label2: TLabel
    Left = 17
    Top = 43
    Width = 30
    Height = 13
    Caption = 'Phone'
  end
  object Label3: TLabel
    Left = 17
    Top = 70
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object Label4: TLabel
    Left = 17
    Top = 98
    Width = 39
    Height = 13
    Caption = 'Address'
  end
  object Label5: TLabel
    Left = 17
    Top = 125
    Width = 45
    Height = 13
    Caption = 'Comment'
  end
  object DBEditName: TDBEdit
    Left = 108
    Top = 13
    Width = 321
    Height = 21
    DataField = 'CNT_FIRSTNAME'
    DataSource = DCNT
    TabOrder = 0
  end
  object DBEditPhone: TDBEdit
    Left = 108
    Top = 40
    Width = 321
    Height = 21
    DataField = 'CNT_PHONE'
    DataSource = DCNT
    TabOrder = 1
  end
  object DBEditEmail: TDBEdit
    Left = 108
    Top = 67
    Width = 321
    Height = 21
    DataField = 'CNT_EMAIL'
    DataSource = DCNT
    TabOrder = 2
  end
  object DBEditAddress: TDBEdit
    Left = 108
    Top = 95
    Width = 321
    Height = 21
    DataField = 'CNT_ADDRESS'
    DataSource = DCNT
    TabOrder = 3
  end
  object DBEditComment: TDBEdit
    Left = 108
    Top = 122
    Width = 321
    Height = 21
    DataField = 'CNT_COMMENT'
    DataSource = DCNT
    TabOrder = 4
  end
  object ButtonOK: TButton
    Left = 298
    Top = 157
    Width = 131
    Height = 25
    Caption = 'OK'
    TabOrder = 5
    OnClick = ButtonOKClick
  end
  object ButtonCancel: TButton
    Left = 178
    Top = 157
    Width = 100
    Height = 25
    Caption = 'Cancel'
    TabOrder = 6
    OnClick = ButtonCancelClick
  end
  object WCNT: TFDQuery
    Connection = DM.Connect
    SQL.Strings = (
      'SELECT dbo.CNT.* FROM dbo.CNT')
    Left = 14
    Top = 144
    object WCNTCNT_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CNT_ID'
      Origin = 'CNT_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object WCNTCNT_FIRSTNAME: TWideStringField
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      Required = True
      FixedChar = True
    end
    object WCNTCNT_PHONE: TWideStringField
      FieldName = 'CNT_PHONE'
      Origin = 'CNT_PHONE'
      FixedChar = True
    end
    object WCNTCNT_EMAIL: TWideStringField
      FieldName = 'CNT_EMAIL'
      Origin = 'CNT_EMAIL'
      FixedChar = True
      Size = 40
    end
    object WCNTCNT_ADDRESS: TWideStringField
      FieldName = 'CNT_ADDRESS'
      Origin = 'CNT_ADDRESS'
      FixedChar = True
      Size = 100
    end
    object WCNTCNT_COMMENT: TWideStringField
      FieldName = 'CNT_COMMENT'
      Origin = 'CNT_COMMENT'
      FixedChar = True
      Size = 100
    end
  end
  object DCNT: TDataSource
    DataSet = WCNT
    Left = 67
    Top = 144
  end
end
