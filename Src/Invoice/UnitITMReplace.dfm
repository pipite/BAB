object FormITMReplace: TFormITMReplace
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Replace Item in Sale Invoice'
  ClientHeight = 621
  ClientWidth = 826
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
  object LabelReplace: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 71
    Width = 820
    Height = 13
    Align = alTop
    Caption = 'Replace by'
    ExplicitWidth = 53
  end
  object Memo1: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 820
    Height = 62
    Align = alTop
    Enabled = False
    Lines.Strings = (
      
        'Purpose of this function: Replace Item in Sale Invoice by anothe' +
        'r Item.'
      ''
      
        '  - Amount and Qty in Invoice are not modified. Only Item Code i' +
        's modified in Invoice.'
      '  - All Item Count are updated.')
    ParentColor = True
    TabOrder = 0
  end
  object Memo2: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 508
    Width = 820
    Height = 110
    Align = alBottom
    Lines.Strings = (
      '')
    ParentColor = True
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 461
    Width = 820
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object Button1: TButton
      AlignWithMargins = True
      Left = 279
      Top = 4
      Width = 537
      Height = 33
      Align = alClient
      Caption = 'Replace Item'
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
  object GITM2: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 90
    Width = 820
    Height = 365
    Align = alClient
    DataSource = DataSource2
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentColor = True
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = GITM2DrawColumnCell
  end
  object VReplaceBy: TFDTable
    IndexFieldNames = 'ITM_CODE'
    Connection = DM.Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.VITM'
    TableName = 'BAB.dbo.VITM'
    Left = 664
    Top = 128
    object VReplaceByITM_ID: TLargeintField
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      Required = True
      Visible = False
    end
    object VReplaceByITM_GRP_ID: TLargeintField
      FieldName = 'ITM_GRP_ID'
      Origin = 'ITM_GRP_ID'
      Required = True
      Visible = False
    end
    object VReplaceByITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object VReplaceByITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 9
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object VReplaceByITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object VReplaceByITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 20
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object VReplaceByITM_UNIT: TWideStringField
      DisplayLabel = 'Unit'
      FieldName = 'ITM_UNIT'
      Origin = 'ITM_UNIT'
      FixedChar = True
      Size = 4
    end
    object VReplaceByITM_PURCHASE: TCurrencyField
      DisplayLabel = 'Default Purchase'
      DisplayWidth = 15
      FieldName = 'ITM_PURCHASE'
      Origin = 'ITM_PURCHASE'
    end
    object VReplaceByITM_SALE: TCurrencyField
      DisplayLabel = 'Default Sale'
      DisplayWidth = 15
      FieldName = 'ITM_SALE'
      Origin = 'ITM_SALE'
    end
    object VReplaceByPUR: TLargeintField
      DisplayWidth = 5
      FieldName = 'PUR'
      Origin = 'PUR'
    end
    object VReplaceBySAL: TLargeintField
      DisplayWidth = 5
      FieldName = 'SAL'
      Origin = 'SAL'
    end
    object VReplaceByLF: TLargeintField
      DisplayWidth = 5
      FieldName = 'LF'
      Origin = 'LF'
    end
    object VReplaceByASM: TLargeintField
      DisplayWidth = 5
      FieldName = 'ASM'
      Origin = 'ASM'
    end
    object VReplaceByUSED: TLargeintField
      DisplayWidth = 5
      FieldName = 'USED'
      Origin = 'USED'
    end
    object VReplaceByStock: TLargeintField
      DisplayWidth = 5
      FieldName = 'Stock'
      Origin = 'Stock'
      ReadOnly = True
    end
    object VReplaceByITM_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 20
      FieldName = 'ITM_COMMENT'
      Origin = 'ITM_COMMENT'
      FixedChar = True
      Size = 150
    end
  end
  object DataSource2: TDataSource
    DataSet = VReplaceBy
    Left = 664
    Top = 184
  end
end
