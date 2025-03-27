object FormINVITM: TFormINVITM
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'FormINVITM'
  ClientHeight = 217
  ClientWidth = 443
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
  object PanelMain: TPanel
    Left = 8
    Top = 8
    Width = 425
    Height = 200
    TabOrder = 0
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
    object Label6: TLabel
      Left = 376
      Top = 8
      Width = 39
      Height = 13
      Caption = 'Delivery'
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
    object LabelQty: TLabel
      Left = 8
      Top = 41
      Width = 42
      Height = 13
      Caption = 'Quantity'
    end
    object Label2: TLabel
      Left = 8
      Top = 79
      Width = 59
      Height = 13
      Caption = 'Unit Amount'
    end
    object LbDefaultPrice: TLabel
      Left = 237
      Top = 79
      Width = 61
      Height = 13
      Caption = 'Default Price'
    end
    object DBTextDefaultPrice: TDBText
      Left = 304
      Top = 79
      Width = 112
      Height = 17
      Alignment = taRightJustify
      DataField = 'ITM_PURCHASE'
      DataSource = DWITM
    end
    object LabelDiscountUnit: TLabel
      Left = 388
      Top = 98
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
    object LbDiscountUnit: TLabel
      Left = 237
      Top = 98
      Width = 63
      Height = 13
      Caption = 'Discount Unit'
    end
    object LbDiscountTotal: TLabel
      Left = 237
      Top = 117
      Width = 68
      Height = 13
      Caption = 'Discount Total'
    end
    object LabelDiscountTotal: TLabel
      Left = 388
      Top = 117
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
    object LabelTotalPrice: TLabel
      Left = 173
      Top = 108
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = '0 vnd'
    end
    object Label10: TLabel
      Left = 8
      Top = 108
      Width = 50
      Height = 13
      Caption = 'Total Price'
    end
    object Label3: TLabel
      Left = 8
      Top = 141
      Width = 45
      Height = 13
      Caption = 'Comment'
    end
    object DBListBox1: TDBListBox
      Left = 379
      Top = 27
      Width = 36
      Height = 45
      DataField = 'INVITM_DELIVERY'
      DataSource = DWINVITM
      ItemHeight = 13
      Items.Strings = (
        'Yes'
        'No'
        'Lend')
      TabOrder = 0
    end
    object ButtonQtyPlus: TButton
      Left = 197
      Top = 38
      Width = 26
      Height = 21
      Caption = '+1'
      TabOrder = 1
      OnClick = ButtonQtyPlusClick
    end
    object DBEditQty: TDBEdit
      Left = 144
      Top = 38
      Width = 47
      Height = 21
      DataField = 'INVITM_QTY'
      DataSource = DWINVITM
      TabOrder = 2
      OnChange = DBEditCalcChange
    end
    object ButtonQtyMoins: TButton
      Left = 112
      Top = 38
      Width = 26
      Height = 21
      Caption = '-1'
      TabOrder = 3
      OnClick = ButtonQtyMoinsClick
    end
    object DBEditAmount: TDBEdit
      Left = 85
      Top = 76
      Width = 138
      Height = 21
      DataField = 'INVITM_AMOUNT'
      DataSource = DWINVITM
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      StyleElements = [seClient, seBorder]
      OnChange = DBEditCalcChange
    end
    object DBEditEmail: TDBEdit
      Left = 85
      Top = 138
      Width = 331
      Height = 21
      DataField = 'INVITM_COMMENT'
      DataSource = DWINVITM
      TabOrder = 5
    end
    object ButtonCancel: TButton
      Left = 170
      Top = 165
      Width = 100
      Height = 25
      Caption = 'Cancel'
      TabOrder = 6
      OnClick = ButtonCancelClick
    end
    object ButtonOK: TButton
      Left = 285
      Top = 165
      Width = 131
      Height = 25
      Caption = 'OK'
      TabOrder = 7
      OnClick = ButtonOKClick
    end
    object ButtonDelete: TButton
      Left = 8
      Top = 165
      Width = 100
      Height = 25
      Caption = 'Delete'
      TabOrder = 8
      OnClick = ButtonDeleteClick
    end
  end
  object PanelExist: TPanel
    Left = 8
    Top = 8
    Width = 425
    Height = 200
    TabOrder = 1
    object LabelExist: TLabel
      Left = 9
      Top = 8
      Width = 12
      Height = 13
      Caption = '...'
    end
    object ButtonModifySelectedItem: TButton
      Left = 276
      Top = 167
      Width = 142
      Height = 25
      Caption = 'Modify Selected Item'
      TabOrder = 0
      OnClick = ButtonModifySelectedItemClick
    end
    object ButtonCreateTwoSeparateLine: TButton
      Left = 112
      Top = 167
      Width = 158
      Height = 25
      Caption = 'Create a New Separate Line'
      TabOrder = 1
      OnClick = ButtonCreateTwoSeparateLineClick
    end
    object Button2: TButton
      Left = 9
      Top = 167
      Width = 80
      Height = 25
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = ButtonCancelClick
    end
    object DBGrid1: TDBGrid
      Left = 11
      Top = 27
      Width = 406
      Height = 134
      DataSource = DQINVITM
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object WINVITM: TFDQuery
    Connection = DM.Connect
    SQL.Strings = (
      'SELECT * FROM dbo.INVITM'
      'ORDER BY INVITM_ID'
      ''
      ''
      '')
    Left = 39
    Top = 200
    object WINVITMINVITM_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'INVITM_ID'
      Origin = 'INVITM_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object WINVITMINVITM_INV_ID: TLargeintField
      FieldName = 'INVITM_INV_ID'
      Origin = 'INVITM_INV_ID'
      Required = True
    end
    object WINVITMINVITM_ITM_ID: TLargeintField
      FieldName = 'INVITM_ITM_ID'
      Origin = 'INVITM_ITM_ID'
      Required = True
    end
    object WINVITMINVITM_AMOUNT: TCurrencyField
      FieldName = 'INVITM_AMOUNT'
      Origin = 'INVITM_AMOUNT'
      Required = True
    end
    object WINVITMINVITM_QTY: TLargeintField
      FieldName = 'INVITM_QTY'
      Origin = 'INVITM_QTY'
      Required = True
    end
    object WINVITMINVITM_COMMENT: TWideStringField
      FieldName = 'INVITM_COMMENT'
      Origin = 'INVITM_COMMENT'
      FixedChar = True
      Size = 200
    end
    object WINVITMINVITM_DELIVERY: TWideStringField
      FieldName = 'INVITM_DELIVERY'
      Origin = 'INVITM_DELIVERY'
      Required = True
      FixedChar = True
      Size = 10
    end
  end
  object DWINVITM: TDataSource
    DataSet = WINVITM
    Left = 90
    Top = 199
  end
  object WITM: TFDQuery
    Connection = DM.Connect
    SQL.Strings = (
      
        'SELECT ITM_ID, ITM_CP, ITM_CODE, ITM_INDICE, ITM_NAME, ITM_PURCH' +
        'ASE, ITM_SALE, PUR, SAL, ASM, USED, LF, Stock FROM dbo.VITM'
      'WHERE ITM_ID = :ITMID'
      ''
      ''
      '')
    Left = 183
    Top = 200
    ParamData = <
      item
        Name = 'ITMID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object WITMITM_ID: TLargeintField
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
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
    object WITMASM: TLargeintField
      FieldName = 'ASM'
      Origin = 'ASM'
    end
    object WITMUSED: TLargeintField
      FieldName = 'USED'
      Origin = 'USED'
    end
    object WITMLF: TLargeintField
      FieldName = 'LF'
      Origin = 'LF'
    end
    object WITMStock: TLargeintField
      FieldName = 'Stock'
      Origin = 'Stock'
      ReadOnly = True
    end
  end
  object DWITM: TDataSource
    DataSet = WITM
    Left = 226
    Top = 199
  end
  object QINVITM: TFDQuery
    Connection = DM.Connect
    SQL.Strings = (
      'SELECT        '
      'INVITM_ID, '
      'INVITM_INV_ID, '
      'INVITM_ITM_ID, '
      'INVITM_QTY, '
      'INVITM_AMOUNT, '
      'INVITM_DELIVERY'
      ''
      'FROM dbo.INVITM'
      ''
      'WHERE (INVITM_INV_ID = :INVID) AND '
      '(INVITM_ITM_ID = :ITMID)'
      ''
      'ORDER BY INVITM_ID'
      ''
      ''
      '')
    Left = 311
    Top = 204
    ParamData = <
      item
        Name = 'INVID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ITMID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QINVITMINVITM_ID: TLargeintField
      FieldName = 'INVITM_ID'
      Origin = 'INVITM_ID'
      Required = True
      Visible = False
    end
    object QINVITMINVITM_INV_ID: TLargeintField
      FieldName = 'INVITM_INV_ID'
      Origin = 'INVITM_INV_ID'
      Required = True
      Visible = False
    end
    object QINVITMINVITM_ITM_ID: TLargeintField
      FieldName = 'INVITM_ITM_ID'
      Origin = 'INVITM_ITM_ID'
      Required = True
      Visible = False
    end
    object QINVITMINVITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'INVITM_QTY'
      Origin = 'INVITM_QTY'
      Required = True
    end
    object QINVITMINVITM_AMOUNT: TCurrencyField
      DisplayLabel = 'Amount'
      DisplayWidth = 15
      FieldName = 'INVITM_AMOUNT'
      Origin = 'INVITM_AMOUNT'
      Required = True
    end
    object QINVITMINVITM_DELIVERY: TWideStringField
      DisplayLabel = 'Delivery'
      DisplayWidth = 5
      FieldName = 'INVITM_DELIVERY'
      Origin = 'INVITM_DELIVERY'
      Required = True
      FixedChar = True
      Size = 10
    end
  end
  object DQINVITM: TDataSource
    DataSet = QINVITM
    Left = 362
    Top = 204
  end
end
