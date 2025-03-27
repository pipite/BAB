object FormLFITM: TFormLFITM
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'FormLFITM'
  ClientHeight = 334
  ClientWidth = 387
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
  object GBCategory: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 381
    Height = 177
    Align = alClient
    Caption = ' Choose a Category '
    TabOrder = 0
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 371
      Height = 154
      Align = alClient
      DataSource = DLF
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 186
    Width = 381
    Height = 145
    Align = alBottom
    TabOrder = 1
    object LabelItem: TLabel
      Left = 8
      Top = 8
      Width = 29
      Height = 13
      Caption = 'Item: '
    end
    object DBText3: TDBText
      Left = 47
      Top = 8
      Width = 313
      Height = 13
      DataField = 'ITM_NAME'
      DataSource = DWITM
    end
    object LabelQty: TLabel
      Left = 47
      Top = 41
      Width = 42
      Height = 13
      Caption = 'Quantity'
    end
    object Label3: TLabel
      Left = 8
      Top = 77
      Width = 45
      Height = 13
      Caption = 'Comment'
    end
    object Label12: TLabel
      Left = 268
      Top = 27
      Width = 66
      Height = 13
      Caption = 'Current Stock'
    end
    object DBTextCurrentStock: TDBText
      Left = 340
      Top = 27
      Width = 29
      Height = 17
      Alignment = taRightJustify
      DataField = 'Stock'
      DataSource = DWITM
    end
    object Label7: TLabel
      Left = 268
      Top = 46
      Width = 52
      Height = 13
      Caption = 'Next Stock'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object LabelNextStock: TLabel
      Left = 342
      Top = 46
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = '0 vnd'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object ButtonQtyMoins: TButton
      Left = 151
      Top = 38
      Width = 26
      Height = 21
      Caption = '-1'
      TabOrder = 0
      OnClick = ButtonQtyMoinsClick
    end
    object DBEditQty: TDBEdit
      Left = 183
      Top = 38
      Width = 47
      Height = 21
      DataField = 'LFITM_QTY'
      DataSource = DWLFITM
      TabOrder = 1
      OnChange = DBEditQtyChange
    end
    object ButtonQtyPlus: TButton
      Left = 236
      Top = 38
      Width = 26
      Height = 21
      Caption = '+1'
      TabOrder = 2
      OnClick = ButtonQtyPlusClick
    end
    object DBEditEmail: TDBEdit
      Left = 85
      Top = 74
      Width = 275
      Height = 21
      DataField = 'LFITM_COMMENT'
      DataSource = DWLFITM
      TabOrder = 3
    end
    object ButtonDelete: TButton
      Left = 8
      Top = 109
      Width = 81
      Height = 25
      Caption = 'Delete'
      TabOrder = 4
      OnClick = ButtonDeleteClick
    end
    object ButtonCancel: TButton
      Left = 123
      Top = 109
      Width = 100
      Height = 25
      Caption = 'Cancel'
      TabOrder = 5
      OnClick = ButtonCancelClick
    end
    object ButtonOK: TButton
      Left = 229
      Top = 109
      Width = 131
      Height = 25
      Caption = 'OK'
      TabOrder = 6
      OnClick = ButtonOKClick
    end
  end
  object WLF: TFDQuery
    Connection = DM.Connect
    SQL.Strings = (
      'SELECT * FROM dbo.LF'
      'WHERE (RTRIM(LF_CATEGORY) NOT LIKE '#39'* Sale Negative Item'#39') '
      'AND (RTRIM(LF_CATEGORY) NOT LIKE '#39'* Sale Without Code'#39')')
    Left = 59
    Top = 40
    object WLFLF_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'LF_ID'
      Origin = 'LF_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object WLFLF_CATEGORY: TWideStringField
      DisplayLabel = 'Category'
      DisplayWidth = 20
      FieldName = 'LF_CATEGORY'
      Origin = 'LF_CATEGORY'
      Required = True
      FixedChar = True
    end
    object WLFLF_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 19
      FieldName = 'LF_COMMENT'
      Origin = 'LF_COMMENT'
      FixedChar = True
      Size = 50
    end
  end
  object DLF: TDataSource
    DataSet = WLF
    Left = 99
    Top = 40
  end
  object WLFITM: TFDQuery
    Connection = DM.Connect
    SQL.Strings = (
      'SELECT * FROM dbo.LFITM'
      'ORDER BY LFITM_ID'
      ''
      ''
      '')
    Left = 143
    Top = 40
    object WLFITMLFITM_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'LFITM_ID'
      Origin = 'LFITM_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object WLFITMLFITM_LF_ID: TLargeintField
      FieldName = 'LFITM_LF_ID'
      Origin = 'LFITM_LF_ID'
      Required = True
    end
    object WLFITMLFITM_ITM_ID: TLargeintField
      FieldName = 'LFITM_ITM_ID'
      Origin = 'LFITM_ITM_ID'
      Required = True
    end
    object WLFITMLFITM_QTY: TLargeintField
      FieldName = 'LFITM_QTY'
      Origin = 'LFITM_QTY'
      Required = True
    end
    object WLFITMLFITM_DATE: TSQLTimeStampField
      FieldName = 'LFITM_DATE'
      Origin = 'LFITM_DATE'
      Required = True
    end
    object WLFITMLFITM_COMMENT: TWideStringField
      FieldName = 'LFITM_COMMENT'
      Origin = 'LFITM_COMMENT'
      FixedChar = True
      Size = 50
    end
  end
  object DWLFITM: TDataSource
    DataSet = WLFITM
    Left = 194
    Top = 40
  end
  object WITM: TFDQuery
    Connection = DM.Connect
    SQL.Strings = (
      'SELECT * FROM dbo.VITM'
      ''
      ''
      '')
    Left = 263
    Top = 40
    object WITMITM_ID: TLargeintField
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      Required = True
    end
    object WITMITM_GRP_ID: TLargeintField
      FieldName = 'ITM_GRP_ID'
      Origin = 'ITM_GRP_ID'
      Required = True
    end
    object WITMITM_CP: TWideStringField
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object WITMITM_CODE: TLargeintField
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object WITMITM_INDICE: TWideStringField
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object WITMITM_NAME: TWideStringField
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object WITMITM_UNIT: TWideStringField
      FieldName = 'ITM_UNIT'
      Origin = 'ITM_UNIT'
      FixedChar = True
      Size = 4
    end
    object WITMITM_PURCHASE: TCurrencyField
      FieldName = 'ITM_PURCHASE'
      Origin = 'ITM_PURCHASE'
    end
    object WITMITM_SALE: TCurrencyField
      FieldName = 'ITM_SALE'
      Origin = 'ITM_SALE'
    end
    object WITMPUR: TLargeintField
      FieldName = 'PUR'
      Origin = 'PUR'
    end
    object WITMSAL: TLargeintField
      FieldName = 'SAL'
      Origin = 'SAL'
    end
    object WITMLF: TLargeintField
      FieldName = 'LF'
      Origin = 'LF'
    end
    object WITMASM: TLargeintField
      FieldName = 'ASM'
      Origin = 'ASM'
    end
    object WITMUSED: TLargeintField
      FieldName = 'USED'
      Origin = 'USED'
    end
    object WITMStock: TLargeintField
      FieldName = 'Stock'
      Origin = 'Stock'
      ReadOnly = True
    end
    object WITMITM_COMMENT: TWideStringField
      FieldName = 'ITM_COMMENT'
      Origin = 'ITM_COMMENT'
      FixedChar = True
      Size = 150
    end
  end
  object DWITM: TDataSource
    DataSet = WITM
    Left = 314
    Top = 40
  end
end
