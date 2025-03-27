object FormASMITM: TFormASMITM
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'FormASMITM'
  ClientHeight = 145
  ClientWidth = 363
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 363
    Height = 145
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 88
    ExplicitTop = 48
    ExplicitWidth = 353
    ExplicitHeight = 137
    object Label3: TLabel
      Left = 8
      Top = 77
      Width = 45
      Height = 13
      Caption = 'Comment'
    end
    object Label7: TLabel
      Left = 239
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
      Left = 313
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
    object DBText2: TDBText
      Left = 311
      Top = 27
      Width = 29
      Height = 17
      Alignment = taRightJustify
      DataField = 'Stock'
      DataSource = DWITM
    end
    object Label12: TLabel
      Left = 239
      Top = 27
      Width = 66
      Height = 13
      Caption = 'Current Stock'
    end
    object LabelQty: TLabel
      Left = 8
      Top = 41
      Width = 42
      Height = 13
      Caption = 'Quantity'
    end
    object LabelItem: TLabel
      Left = 8
      Top = 8
      Width = 29
      Height = 13
      Caption = 'Item: '
    end
    object DBText3: TDBText
      Left = 77
      Top = 8
      Width = 283
      Height = 13
      DataField = 'ITM_NAME'
      DataSource = DWITM
    end
    object ButtonDelete: TButton
      Left = 8
      Top = 101
      Width = 100
      Height = 25
      Caption = 'Delete'
      TabOrder = 0
      OnClick = ButtonDeleteClick
    end
    object ButtonCancel: TButton
      Left = 114
      Top = 101
      Width = 100
      Height = 25
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = ButtonCancelClick
    end
    object ButtonOK: TButton
      Left = 220
      Top = 101
      Width = 120
      Height = 25
      Caption = 'OK'
      TabOrder = 2
      OnClick = ButtonOKClick
    end
    object DBEditEmail: TDBEdit
      Left = 85
      Top = 74
      Width = 255
      Height = 21
      DataField = 'ASMITM_COMMENT'
      DataSource = DWASMITM
      TabOrder = 3
    end
    object ButtonQtyPlus: TButton
      Left = 197
      Top = 38
      Width = 26
      Height = 21
      Caption = '+1'
      TabOrder = 4
      OnClick = ButtonQtyPlusClick
    end
    object DBEditQty: TDBEdit
      Left = 144
      Top = 38
      Width = 47
      Height = 21
      DataField = 'ASMITM_QTY'
      DataSource = DWASMITM
      TabOrder = 5
      OnChange = DBEditQtyChange
    end
    object ButtonQtyMoins: TButton
      Left = 112
      Top = 38
      Width = 26
      Height = 21
      Caption = '-1'
      TabOrder = 6
      OnClick = ButtonQtyMoinsClick
    end
  end
  object WASM: TFDQuery
    Connection = DM.Connect
    SQL.Strings = (
      'SELECT * FROM dbo.ASM')
    Left = 43
    Top = 88
    object WASMASM_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ASM_ID'
      Origin = 'ASM_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object WASMASM_ITM_ID: TLargeintField
      FieldName = 'ASM_ITM_ID'
      Origin = 'ASM_ITM_ID'
      Required = True
    end
    object WASMASM_ITM_QTY: TLargeintField
      FieldName = 'ASM_ITM_QTY'
      Origin = 'ASM_ITM_QTY'
    end
    object WASMASM_DATE: TDateField
      FieldName = 'ASM_DATE'
      Origin = 'ASM_DATE'
    end
    object WASMASM_COMMENT: TWideStringField
      FieldName = 'ASM_COMMENT'
      Origin = 'ASM_COMMENT'
      FixedChar = True
      Size = 50
    end
  end
  object DWASM: TDataSource
    DataSet = WASM
    Left = 83
    Top = 88
  end
  object WASMITM: TFDQuery
    Connection = DM.Connect
    SQL.Strings = (
      'SELECT * FROM dbo.ASMITM'
      'ORDER BY ASMITM_ID'
      ''
      ''
      '')
    Left = 127
    Top = 88
    object WASMITMASMITM_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ASMITM_ID'
      Origin = 'ASMITM_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object WASMITMASMITM_ASM_ID: TLargeintField
      FieldName = 'ASMITM_ASM_ID'
      Origin = 'ASMITM_ASM_ID'
      Required = True
    end
    object WASMITMASMITM_ITM_ID: TLargeintField
      FieldName = 'ASMITM_ITM_ID'
      Origin = 'ASMITM_ITM_ID'
      Required = True
    end
    object WASMITMASMITM_QTY: TLargeintField
      FieldName = 'ASMITM_QTY'
      Origin = 'ASMITM_QTY'
      Required = True
    end
    object WASMITMASMITM_COMMENT: TWideStringField
      FieldName = 'ASMITM_COMMENT'
      Origin = 'ASMITM_COMMENT'
      FixedChar = True
      Size = 50
    end
  end
  object DWASMITM: TDataSource
    DataSet = WASMITM
    Left = 178
    Top = 88
  end
  object WITM: TFDQuery
    Connection = DM.Connect
    SQL.Strings = (
      'SELECT * FROM dbo.VITM'
      ''
      ''
      '')
    Left = 247
    Top = 88
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
    Left = 298
    Top = 88
  end
end
