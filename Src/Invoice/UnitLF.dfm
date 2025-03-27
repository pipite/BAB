object FormLF: TFormLF
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'FormLF'
  ClientHeight = 112
  ClientWidth = 380
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
    Width = 75
    Height = 13
    Caption = 'Category Name'
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
    DataField = 'LF_COMMENT'
    DataSource = DLF
    TabOrder = 0
  end
  object ButtonCancel: TButton
    Left = 108
    Top = 67
    Width = 100
    Height = 25
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = ButtonCancelClick
  end
  object ButtonOK: TButton
    Left = 228
    Top = 67
    Width = 131
    Height = 25
    Caption = 'OK'
    TabOrder = 2
    OnClick = ButtonOKClick
  end
  object DBEditName: TDBEdit
    Left = 108
    Top = 13
    Width = 251
    Height = 21
    Color = clBtnFace
    DataField = 'LF_CATEGORY'
    DataSource = DLF
    TabOrder = 3
  end
  object DLF: TDataSource
    DataSet = WLF
    Left = 67
    Top = 64
  end
  object WLF: TFDQuery
    Connection = DM.Connect
    SQL.Strings = (
      'SELECT dbo.LF.* FROM dbo.LF')
    Left = 14
    Top = 64
    object WLFLF_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'LF_ID'
      Origin = 'LF_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object WLFLF_CATEGORY: TWideStringField
      FieldName = 'LF_CATEGORY'
      Origin = 'LF_CATEGORY'
      Required = True
      FixedChar = True
    end
    object WLFLF_COMMENT: TWideStringField
      FieldName = 'LF_COMMENT'
      Origin = 'LF_COMMENT'
      FixedChar = True
      Size = 50
    end
  end
end
