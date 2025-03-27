object FormINV: TFormINV
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'FormINV'
  ClientHeight = 291
  ClientWidth = 812
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
  object GBINV: TGroupBox
    Left = 8
    Top = 8
    Width = 393
    Height = 275
    Caption = ' Invoice '
    TabOrder = 0
    object Label2: TLabel
      Left = 7
      Top = 216
      Width = 45
      Height = 13
      Caption = 'Comment'
    end
    object MonthCalendar1: TMonthCalendar
      Left = 7
      Top = 16
      Width = 225
      Height = 160
      Date = 42900.591699236110000000
      TabOrder = 0
    end
    object DBGrid2: TDBGrid
      Left = 238
      Top = 16
      Width = 145
      Height = 191
      DataSource = DCNT
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object ButtonNewContact: TButton
      Left = 7
      Top = 182
      Width = 225
      Height = 25
      Caption = 'New Contact'
      TabOrder = 2
      OnClick = ButtonNewContactClick
    end
    object DBEditComment: TDBEdit
      Left = 58
      Top = 213
      Width = 325
      Height = 21
      Color = clBtnFace
      DataField = 'INV_COMMENT'
      DataSource = DINV
      TabOrder = 3
    end
    object ButtonCancel: TButton
      Left = 129
      Top = 240
      Width = 100
      Height = 25
      Caption = 'Exit'
      TabOrder = 4
      OnClick = ButtonCancelClick
    end
    object ButtonOK: TButton
      Left = 252
      Top = 240
      Width = 131
      Height = 25
      Caption = 'OK'
      TabOrder = 5
      OnClick = ButtonOKClick
    end
    object CBAllowModify: TCheckBox
      Left = 7
      Top = 245
      Width = 97
      Height = 17
      Caption = 'Allow Modify'
      TabOrder = 6
      OnClick = CBAllowModifyClick
    end
  end
  object GBINVPAY: TGroupBox
    Left = 422
    Top = 8
    Width = 373
    Height = 275
    Caption = ' Payment '
    TabOrder = 1
    object Label5: TLabel
      Left = 217
      Top = 25
      Width = 19
      Height = 13
      Caption = 'Due'
    end
    object Label1: TLabel
      Left = 18
      Top = 25
      Width = 62
      Height = 13
      Caption = 'Total Invoice'
    end
    object DBText1: TDBText
      Left = 249
      Top = 26
      Width = 111
      Height = 17
      Alignment = taRightJustify
      DataField = 'Due'
      DataSource = DM.DPUR
    end
    object DBText2: TDBText
      Left = 86
      Top = 25
      Width = 110
      Height = 17
      Alignment = taRightJustify
      DataField = 'Total'
      DataSource = DM.DPUR
    end
    object GINVPAY: TDBGrid
      Left = 18
      Top = 85
      Width = 346
      Height = 180
      DataSource = DINVPAY
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object ButtonAddPayment: TButton
      Left = 102
      Top = 54
      Width = 150
      Height = 25
      Caption = 'Add Partial Payment'
      TabOrder = 1
      OnClick = ButtonAddPaymentClick
    end
    object DBNavigator: TDBNavigator
      AlignWithMargins = True
      Left = 18
      Top = 54
      Width = 78
      Height = 25
      DataSource = DINVPAY
      VisibleButtons = [nbPrior, nbNext, nbDelete]
      TabOrder = 2
    end
    object ButtonPayAll: TButton
      Left = 258
      Top = 54
      Width = 103
      Height = 25
      Caption = 'Pay All'
      TabOrder = 3
      OnClick = ButtonPayAllClick
    end
  end
  object DINV: TDataSource
    DataSet = WINV
    Left = 339
    Top = 48
  end
  object WCNT: TFDQuery
    Connection = DM.Connect
    SQL.Strings = (
      'SELECT dbo.CNT.CNT_ID, dbo.CNT.CNT_FIRSTNAME FROM dbo.CNT'
      'ORDER BY dbo.CNT.CNT_FIRSTNAME')
    Left = 272
    Top = 96
    object WCNTCNT_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CNT_ID'
      Origin = 'CNT_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object WCNTCNT_FIRSTNAME: TWideStringField
      DisplayLabel = 'Contact'
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      Required = True
      FixedChar = True
    end
  end
  object DCNT: TDataSource
    DataSet = WCNT
    Left = 339
    Top = 96
  end
  object WINV: TFDQuery
    Connection = DM.Connect
    SQL.Strings = (
      'SELECT '
      'dbo.INV.INV_ID,'
      'dbo.INV.INV_TYPE,'
      'dbo.INV.INV_NUMBER,'
      'dbo.INV.INV_DATE,'
      'dbo.INV.INV_CNT_ID,'
      'dbo.INV.INV_COMMENT,'
      'dbo.INV.INV_STATUS,'
      'dbo.INV.INV_LOCKDATE'
      ''
      'FROM   dbo.INV'
      '')
    Left = 274
    Top = 47
    object WINVINV_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'INV_ID'
      Origin = 'INV_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object WINVINV_TYPE: TWideStringField
      FieldName = 'INV_TYPE'
      Origin = 'INV_TYPE'
      Required = True
      FixedChar = True
      Size = 2
    end
    object WINVINV_NUMBER: TLargeintField
      FieldName = 'INV_NUMBER'
      Origin = 'INV_NUMBER'
      Required = True
    end
    object WINVINV_DATE: TSQLTimeStampField
      FieldName = 'INV_DATE'
      Origin = 'INV_DATE'
      Required = True
    end
    object WINVINV_CNT_ID: TLargeintField
      FieldName = 'INV_CNT_ID'
      Origin = 'INV_CNT_ID'
      Required = True
    end
    object WINVINV_COMMENT: TWideStringField
      FieldName = 'INV_COMMENT'
      Origin = 'INV_COMMENT'
      FixedChar = True
      Size = 50
    end
    object WINVINV_STATUS: TWideStringField
      FieldName = 'INV_STATUS'
      Origin = 'INV_STATUS'
      FixedChar = True
      Size = 10
    end
    object WINVINV_LOCKDATE: TSQLTimeStampField
      FieldName = 'INV_LOCKDATE'
      Origin = 'INV_LOCKDATE'
    end
  end
  object WINVPAY: TFDTable
    BeforeDelete = WINVPAYBeforeDelete
    AfterDelete = WINVPAYAfterDelete
    IndexFieldNames = 'INVPAY_ID'
    Connection = DM.Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.INVPAY'
    TableName = 'BAB.dbo.INVPAY'
    Left = 549
    Top = 137
    object WINVPAYINVPAY_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'INVPAY_ID'
      Origin = 'INVPAY_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object WINVPAYINVPAY_INV_ID: TLargeintField
      FieldName = 'INVPAY_INV_ID'
      Origin = 'INVPAY_INV_ID'
      Required = True
      Visible = False
    end
    object WINVPAYINVPAY_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'INVPAY_DATE'
      Origin = 'INVPAY_DATE'
    end
    object WINVPAYINVPAY_AMOUNT: TCurrencyField
      DisplayLabel = 'Amount'
      DisplayWidth = 15
      FieldName = 'INVPAY_AMOUNT'
      Origin = 'INVPAY_AMOUNT'
    end
    object WINVPAYINVPAY_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 20
      FieldName = 'INVPAY_COMMENT'
      Origin = 'INVPAY_COMMENT'
      FixedChar = True
      Size = 100
    end
  end
  object DINVPAY: TDataSource
    DataSet = WINVPAY
    Left = 612
    Top = 136
  end
end
