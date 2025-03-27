object FormITMMerge: TFormITMMerge
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Merge 2 Items'
  ClientHeight = 677
  ClientWidth = 943
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 119
    Width = 937
    Height = 16
    Align = alTop
    Caption = 'Item to Keep'
    ExplicitWidth = 73
  end
  object Label2: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 267
    Width = 937
    Height = 16
    Align = alTop
    Caption = 'Item to Destroy'
    ExplicitWidth = 88
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 141
    Width = 937
    Height = 120
    Align = alTop
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 289
    Width = 937
    Height = 222
    Align = alClient
    DataSource = DataSource2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 517
    Width = 937
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object Button1: TButton
      AlignWithMargins = True
      Left = 279
      Top = 4
      Width = 654
      Height = 33
      Align = alClient
      Caption = 'Merge Item'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 269
      Height = 33
      Align = alLeft
      Caption = 'Cancel'
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object Memo1: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 937
    Height = 110
    Align = alTop
    Enabled = False
    Lines.Strings = (
      
        'Purpose of this function: Replace Item to Destroy by Item To Kee' +
        'p, and Delete Item to Destroy from Item List.'
      ''
      
        '  - All Item to destroy used in Assembly will be replace by Item' +
        ' to Keep.'
      
        '  - All Lost or Found Item to destroy will be replace by Item to' +
        ' Keep.'
      
        '  - All Item to destroy used in Invoice will be replace by Item ' +
        'to Keep. Amount in Invoice is not modified. Only Item Code is mo' +
        'dified in Invoice.'
      '  - All Item to Keep Count are updated.')
    TabOrder = 3
  end
  object Memo2: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 564
    Width = 937
    Height = 110
    Align = alBottom
    Lines.Strings = (
      '')
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 272
    Top = 88
  end
  object DataSource2: TDataSource
    DataSet = FDTable2
    Left = 272
    Top = 232
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'ITM_CODE'
    Connection = DM.Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.VITM'
    TableName = 'BAB.dbo.VITM'
    Left = 272
    Top = 32
    object FDTable1ITM_ID: TLargeintField
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      Required = True
      Visible = False
    end
    object FDTable1ITM_GRP_ID: TLargeintField
      FieldName = 'ITM_GRP_ID'
      Origin = 'ITM_GRP_ID'
      Required = True
      Visible = False
    end
    object FDTable1ITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object FDTable1ITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 9
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object FDTable1ITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object FDTable1ITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 20
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object FDTable1ITM_UNIT: TWideStringField
      DisplayLabel = 'Unit'
      FieldName = 'ITM_UNIT'
      Origin = 'ITM_UNIT'
      FixedChar = True
      Size = 4
    end
    object FDTable1ITM_PURCHASE: TCurrencyField
      DisplayLabel = 'Default Purchase'
      DisplayWidth = 15
      FieldName = 'ITM_PURCHASE'
      Origin = 'ITM_PURCHASE'
    end
    object FDTable1ITM_SALE: TCurrencyField
      DisplayLabel = 'Default Sale'
      DisplayWidth = 15
      FieldName = 'ITM_SALE'
      Origin = 'ITM_SALE'
    end
    object FDTable1PUR: TLargeintField
      DisplayWidth = 5
      FieldName = 'PUR'
      Origin = 'PUR'
    end
    object FDTable1SAL: TLargeintField
      DisplayWidth = 5
      FieldName = 'SAL'
      Origin = 'SAL'
    end
    object FDTable1LF: TLargeintField
      DisplayWidth = 5
      FieldName = 'LF'
      Origin = 'LF'
    end
    object FDTable1ASM: TLargeintField
      DisplayWidth = 5
      FieldName = 'ASM'
      Origin = 'ASM'
    end
    object FDTable1USED: TLargeintField
      DisplayWidth = 5
      FieldName = 'USED'
      Origin = 'USED'
    end
    object FDTable1Stock: TLargeintField
      DisplayWidth = 5
      FieldName = 'Stock'
      Origin = 'Stock'
      ReadOnly = True
    end
    object FDTable1ITM_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 20
      FieldName = 'ITM_COMMENT'
      Origin = 'ITM_COMMENT'
      FixedChar = True
      Size = 150
    end
  end
  object FDTable2: TFDTable
    IndexFieldNames = 'ITM_CODE'
    Connection = DM.Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.VITM'
    TableName = 'BAB.dbo.VITM'
    Left = 272
    Top = 176
    object FDTable2ITM_ID: TLargeintField
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      Required = True
      Visible = False
    end
    object FDTable2ITM_GRP_ID: TLargeintField
      FieldName = 'ITM_GRP_ID'
      Origin = 'ITM_GRP_ID'
      Required = True
      Visible = False
    end
    object FDTable2ITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object FDTable2ITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 9
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object FDTable2ITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object FDTable2ITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 20
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object FDTable2ITM_UNIT: TWideStringField
      DisplayLabel = 'Unit'
      FieldName = 'ITM_UNIT'
      Origin = 'ITM_UNIT'
      FixedChar = True
      Size = 4
    end
    object FDTable2ITM_PURCHASE: TCurrencyField
      DisplayLabel = 'Default Purchase'
      DisplayWidth = 15
      FieldName = 'ITM_PURCHASE'
      Origin = 'ITM_PURCHASE'
    end
    object FDTable2ITM_SALE: TCurrencyField
      DisplayLabel = 'Default Sale'
      DisplayWidth = 15
      FieldName = 'ITM_SALE'
      Origin = 'ITM_SALE'
    end
    object FDTable2PUR: TLargeintField
      DisplayWidth = 5
      FieldName = 'PUR'
      Origin = 'PUR'
    end
    object FDTable2SAL: TLargeintField
      DisplayWidth = 5
      FieldName = 'SAL'
      Origin = 'SAL'
    end
    object FDTable2LF: TLargeintField
      DisplayWidth = 5
      FieldName = 'LF'
      Origin = 'LF'
    end
    object FDTable2ASM: TLargeintField
      DisplayWidth = 5
      FieldName = 'ASM'
      Origin = 'ASM'
    end
    object FDTable2USED: TLargeintField
      DisplayWidth = 5
      FieldName = 'USED'
      Origin = 'USED'
    end
    object FDTable2Stock: TLargeintField
      DisplayWidth = 5
      FieldName = 'Stock'
      Origin = 'Stock'
      ReadOnly = True
    end
    object FDTable2ITM_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 20
      FieldName = 'ITM_COMMENT'
      Origin = 'ITM_COMMENT'
      FixedChar = True
      Size = 150
    end
  end
end
