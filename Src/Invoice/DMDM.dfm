object DM: TDM
  OldCreateOrder = False
  Height = 896
  Width = 1167
  object DCNT: TDataSource
    DataSet = TCNT
    OnDataChange = DCNTDataChange
    Left = 88
    Top = 75
  end
  object DGRP: TDataSource
    DataSet = TGRP
    OnDataChange = DGRPDataChange
    Left = 88
    Top = 128
  end
  object DITM: TDataSource
    DataSet = TITM
    OnDataChange = DITMDataChange
    Left = 88
    Top = 184
  end
  object WITM: TFDTable
    IndexFieldNames = 'ITM_ID'
    Connection = Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.ITM'
    TableName = 'BAB.dbo.ITM'
    Left = 175
    Top = 184
    object WITMITM_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
    object WITMITM_COMMENT: TWideStringField
      FieldName = 'ITM_COMMENT'
      Origin = 'ITM_COMMENT'
      FixedChar = True
      Size = 150
    end
  end
  object WGRP: TFDTable
    IndexFieldNames = 'GRP_ID'
    Connection = Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.GRP'
    TableName = 'BAB.dbo.GRP'
    Left = 174
    Top = 128
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
  object WCNT: TFDTable
    IndexFieldNames = 'CNT_FIRSTNAME'
    Connection = Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.CNT'
    TableName = 'BAB.dbo.CNT'
    Left = 175
    Top = 75
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
  object VLF_QTY: TFDTable
    Connection = Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.VLFQTY'
    TableName = 'BAB.dbo.VLFQTY'
    Left = 794
    Top = 834
    object VLF_QTYLF_ITM_ID: TLargeintField
      FieldName = 'LF_ITM_ID'
      Origin = 'LF_ITM_ID'
      Required = True
    end
    object VLF_QTYTotal: TLargeintField
      FieldName = 'Total'
      Origin = 'Total'
    end
  end
  object VITM_NEXT: TFDTable
    Connection = Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.ITMNEXT'
    TableName = 'BAB.dbo.ITMNEXT'
    Left = 942
    Top = 832
    object VITM_NEXTNEXT: TLargeintField
      FieldName = 'NEXT'
      Origin = 'NEXT'
      ReadOnly = True
    end
  end
  object WINVPAY: TFDTable
    IndexFieldNames = 'INVPAY_ID'
    Connection = Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.INVPAY'
    TableName = 'BAB.dbo.INVPAY'
    Left = 247
    Top = 464
    object WINVPAYINVPAY_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'INVPAY_ID'
      Origin = 'INVPAY_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object WINVPAYINVPAY_INV_ID: TLargeintField
      FieldName = 'INVPAY_INV_ID'
      Origin = 'INVPAY_INV_ID'
      Required = True
    end
    object WINVPAYINVPAY_AMOUNT: TCurrencyField
      FieldName = 'INVPAY_AMOUNT'
      Origin = 'INVPAY_AMOUNT'
    end
    object WINVPAYINVPAY_DATE: TSQLTimeStampField
      FieldName = 'INVPAY_DATE'
      Origin = 'INVPAY_DATE'
    end
    object WINVPAYINVPAY_COMMENT: TWideStringField
      FieldName = 'INVPAY_COMMENT'
      Origin = 'INVPAY_COMMENT'
      FixedChar = True
      Size = 100
    end
  end
  object WASMITM: TFDTable
    IndexFieldNames = 'ASMITM_ID'
    Connection = Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.ASMITM'
    TableName = 'BAB.dbo.ASMITM'
    Left = 175
    Top = 776
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
  object DASMITM: TDataSource
    DataSet = TASMITM
    OnDataChange = DASMITMDataChange
    Left = 88
    Top = 778
  end
  object DASM: TDataSource
    DataSet = TASM
    Left = 88
    Top = 712
  end
  object DLFITM: TDataSource
    DataSet = TLFITM
    OnDataChange = DLFITMDataChange
    Left = 88
    Top = 648
  end
  object DPURPAY: TDataSource
    DataSet = TPURPAY
    Left = 88
    Top = 368
  end
  object DPURITM: TDataSource
    DataSet = TPURITM
    OnDataChange = DPURITMDataChange
    Left = 88
    Top = 313
  end
  object DPUR: TDataSource
    DataSet = TPUR
    OnDataChange = DPURDataChange
    Left = 88
    Top = 256
  end
  object DSAL: TDataSource
    DataSet = TSAL
    OnDataChange = DSALDataChange
    Left = 88
    Top = 424
  end
  object TASMITM: TFDTable
    BeforeInsert = TASMITMBeforeInsert
    BeforeEdit = TASMITMBeforeEdit
    BeforeDelete = TASMITMBeforeDelete
    IndexFieldNames = 'ASMITM_ASM_ID'
    MasterSource = DASM
    MasterFields = 'ASM_ID'
    Connection = Connect
    UpdateOptions.UpdateTableName = 'VASMITM'
    TableName = 'VASMITM'
    Left = 22
    Top = 778
    object TASMITMASMITM_ID: TLargeintField
      FieldName = 'ASMITM_ID'
      Origin = 'ASMITM_ID'
      Required = True
      Visible = False
    end
    object TASMITMASMITM_ITM_ID: TLargeintField
      FieldName = 'ASMITM_ITM_ID'
      Origin = 'ASMITM_ITM_ID'
      Required = True
      Visible = False
    end
    object TASMITMASMITM_ASM_ID: TLargeintField
      FieldName = 'ASMITM_ASM_ID'
      Origin = 'ASMITM_ASM_ID'
      Required = True
      Visible = False
    end
    object TASMITMITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object TASMITMITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 9
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object TASMITMITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object TASMITMITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 40
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object TASMITMASMITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'ASMITM_QTY'
      Origin = 'ASMITM_QTY'
      Required = True
    end
    object TASMITMITM_PURCHASE: TCurrencyField
      DisplayLabel = 'Def purchase'
      DisplayWidth = 15
      FieldName = 'ITM_PURCHASE'
      Origin = 'ITM_PURCHASE'
    end
    object TASMITMITM_SALE: TCurrencyField
      DisplayLabel = 'Def Sale'
      DisplayWidth = 15
      FieldName = 'ITM_SALE'
      Origin = 'ITM_SALE'
    end
    object TASMITMASMITM_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 60
      FieldName = 'ASMITM_COMMENT'
      Origin = 'ASMITM_COMMENT'
      FixedChar = True
      Size = 50
    end
    object TASMITMITM_COMMENT: TWideStringField
      FieldName = 'ITM_COMMENT'
      Origin = 'ITM_COMMENT'
      Visible = False
      FixedChar = True
      Size = 150
    end
  end
  object QREP_PUR: TFDQuery
    Connection = Connect
    SQL.Strings = (
      
        'SELECT SUM(PURITM.PURITM_PURCHASE * dbo.PURITM.PURITM_QTY) AS To' +
        'tal, PURITM.PURITM_PUR_ID, CNT.CNT_FIRSTNAME, CNT.CNT_LASTNAME, ' +
        'PUR.PUR_DATE'
      'FROM CNT '
      'INNER JOIN PUR ON CNT.CNT_ID = PUR.PUR_CNT_ID '
      'INNER JOIN PURITM ON PUR.PUR_ID = dbo.PURITM.PURITM_PUR_ID'
      'WHERE PURITM.PURITM_PUR_ID = :PURID'
      
        'GROUP BY PURITM.PURITM_PUR_ID, CNT.CNT_FIRSTNAME, CNT.CNT_LASTNA' +
        'ME, PUR.PUR_DATE')
    Left = 920
    Top = 440
    ParamData = <
      item
        Name = 'PURID'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
    object QREP_PURPURITM_PUR_ID: TLargeintField
      FieldName = 'PURITM_PUR_ID'
      Origin = 'PURITM_PUR_ID'
      Required = True
    end
    object QREP_PURPUR_DATE: TSQLTimeStampField
      FieldName = 'PUR_DATE'
      Origin = 'PUR_DATE'
      Required = True
    end
    object QREP_PURCNT_FIRSTNAME: TWideStringField
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      FixedChar = True
    end
    object QREP_PURCNT_LASTNAME: TWideStringField
      FieldName = 'CNT_LASTNAME'
      Origin = 'CNT_LASTNAME'
      FixedChar = True
      Size = 15
    end
    object QREP_PURTotal: TCurrencyField
      FieldName = 'Total'
      Origin = 'Total'
      ReadOnly = True
    end
  end
  object DREP_PUR: TDataSource
    DataSet = QREP_PUR
    Left = 996
    Top = 440
  end
  object QPAYPURTOT: TFDQuery
    Connection = Connect
    SQL.Strings = (
      'SELECT PUR.PUR_ID, SUM(PAYPUR.PAYPUR_AMOUNT) as Total'
      'FROM   PAYPUR'
      'INNER JOIN PUR ON PAYPUR.PAYPUR_PUR_ID = PUR.PUR_ID'
      'WHERE PUR_ID = :PURID '
      'GROUP BY PUR.PUR_ID')
    Left = 920
    Top = 496
    ParamData = <
      item
        Name = 'PURID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QPAYPURTOTPUR_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'PUR_ID'
      Origin = 'PUR_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
    end
    object QPAYPURTOTTotal: TCurrencyField
      FieldName = 'Total'
      Origin = 'Total'
      ReadOnly = True
    end
  end
  object DPAYPURTOT: TDataSource
    DataSet = QPAYPURTOT
    Left = 1000
    Top = 496
  end
  object QHSTITMPUR: TFDQuery
    Connection = Connect
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'SELECT dbo.INV.INV_NUMBER, dbo.INV.INV_STATUS, dbo.INVITM.INVITM' +
        '_INV_ID, dbo.INVITM.INVITM_AMOUNT, dbo.INVITM.INVITM_QTY, dbo.IT' +
        'M.ITM_ID, dbo.INV.INV_DATE, dbo.CNT.CNT_FIRSTNAME'
      'FROM     dbo.INVITM INNER JOIN'
      
        '                  dbo.ITM ON dbo.INVITM.INVITM_ITM_ID = dbo.ITM.' +
        'ITM_ID INNER JOIN'
      
        '                  dbo.INV ON dbo.INVITM.INVITM_INV_ID = dbo.INV.' +
        'INV_ID INNER JOIN'
      '                  dbo.CNT ON dbo.INV.INV_CNT_ID = dbo.CNT.CNT_ID'
      'WHERE dbo.ITM.ITM_ID = :ITMID AND dbo.INV.INV_TYPE = '#39'P'#39
      '')
    Left = 958
    Top = 10
    ParamData = <
      item
        Name = 'ITMID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QHSTITMPURINVITM_INV_ID: TLargeintField
      FieldName = 'INVITM_INV_ID'
      Origin = 'INVITM_INV_ID'
      Required = True
      Visible = False
    end
    object QHSTITMPURITM_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
    object QHSTITMPURINV_NUMBER: TLargeintField
      DisplayLabel = 'Purchase'
      DisplayWidth = 8
      FieldName = 'INV_NUMBER'
      Origin = 'INV_NUMBER'
      Required = True
    end
    object QHSTITMPURCNT_FIRSTNAME: TWideStringField
      DisplayLabel = 'Supplier'
      DisplayWidth = 15
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      FixedChar = True
    end
    object QHSTITMPURINVITM_AMOUNT: TCurrencyField
      DisplayLabel = 'Amount'
      DisplayWidth = 15
      FieldName = 'INVITM_AMOUNT'
      Origin = 'INVITM_AMOUNT'
      Required = True
    end
    object QHSTITMPURINVITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'INVITM_QTY'
      Origin = 'INVITM_QTY'
      Required = True
    end
    object QHSTITMPURINV_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'INV_DATE'
      Origin = 'INV_DATE'
      Required = True
    end
    object QHSTITMPURINV_STATUS: TWideStringField
      FieldName = 'INV_STATUS'
      Origin = 'INV_STATUS'
      Visible = False
      FixedChar = True
      Size = 10
    end
  end
  object DHSTITMPUR: TDataSource
    DataSet = QHSTITMPUR
    OnDataChange = DHSTITMPURDataChange
    Left = 1062
    Top = 10
  end
  object DHSTITMLF: TDataSource
    DataSet = QHSTITMLF
    Left = 1062
    Top = 162
  end
  object QHSTITMLF: TFDQuery
    Connection = Connect
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'SELECT dbo.LFITM.LFITM_ID, dbo.LF.LF_CATEGORY, dbo.LFITM.LFITM_Q' +
        'TY, dbo.LFITM.LFITM_DATE, dbo.LFITM.LFITM_COMMENT'
      'FROM     dbo.ITM INNER JOIN'
      
        '                  dbo.LFITM ON dbo.ITM.ITM_ID = dbo.LFITM.LFITM_' +
        'ITM_ID INNER JOIN'
      '                  dbo.LF ON dbo.LFITM.LFITM_LF_ID = dbo.LF.LF_ID'
      'WHERE dbo.ITM.ITM_ID = :ITMID'
      '')
    Left = 958
    Top = 162
    ParamData = <
      item
        Name = 'ITMID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QHSTITMLFLFITM_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'LFITM_ID'
      Origin = 'LFITM_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
    object QHSTITMLFLF_CATEGORY: TWideStringField
      DisplayLabel = 'Category'
      DisplayWidth = 17
      FieldName = 'LF_CATEGORY'
      Origin = 'LF_CATEGORY'
      Required = True
      FixedChar = True
    end
    object QHSTITMLFLFITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'LFITM_QTY'
      Origin = 'LFITM_QTY'
      Required = True
    end
    object QHSTITMLFLFITM_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'LFITM_DATE'
      Origin = 'LFITM_DATE'
      Required = True
    end
    object QHSTITMLFLFITM_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 25
      FieldName = 'LFITM_COMMENT'
      Origin = 'LFITM_COMMENT'
      FixedChar = True
      Size = 50
    end
  end
  object QHSTITMASM: TFDQuery
    Connection = Connect
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'SELECT dbo.ASMITM.ASMITM_ID, dbo.ASM.ASM_DATE, dbo.ASM.ASM_COMME' +
        'NT, dbo.ASM.ASM_ITM_QTY * dbo.ASMITM.ASMITM_QTY AS Qty, ITM_1.IT' +
        'M_CP, ITM_1.ITM_CODE, ITM_1.ITM_INDICE, '
      '                  ITM_1.ITM_NAME, dbo.ASMITM.ASMITM_QTY'
      'FROM     dbo.ASM INNER JOIN'
      
        '                  dbo.ASMITM ON dbo.ASM.ASM_ID = dbo.ASMITM.ASMI' +
        'TM_ASM_ID INNER JOIN'
      
        '                  dbo.ITM AS ITM_1 ON dbo.ASMITM.ASMITM_ITM_ID =' +
        ' ITM_1.ITM_ID'
      'WHERE  (dbo.ASM.ASM_ITM_ID = :ITMID)')
    Left = 958
    Top = 112
    ParamData = <
      item
        Name = 'ITMID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QHSTITMASMASMITM_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ASMITM_ID'
      Origin = 'ASMITM_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
    object QHSTITMASMITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object QHSTITMASMITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 10
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object QHSTITMASMITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object QHSTITMASMQty: TLargeintField
      DisplayWidth = 5
      FieldName = 'Qty'
      Origin = 'Qty'
      ReadOnly = True
    end
    object QHSTITMASMITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 30
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object QHSTITMASMASM_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'ASM_DATE'
      Origin = 'ASM_DATE'
    end
    object QHSTITMASMASM_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      FieldName = 'ASM_COMMENT'
      Origin = 'ASM_COMMENT'
      FixedChar = True
      Size = 50
    end
  end
  object DHSTITMASM: TDataSource
    DataSet = QHSTITMASM
    Left = 1062
    Top = 112
  end
  object DHSTPURITM: TDataSource
    DataSet = QHSTPURITM
    Left = 1064
    Top = 272
  end
  object QHSTPURITM: TFDQuery
    Connection = Connect
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'SELECT dbo.INVITM.INVITM_ITM_ID, dbo.INVITM.INVITM_QTY, dbo.INVI' +
        'TM.INVITM_AMOUNT, dbo.ITM.ITM_CP, dbo.ITM.ITM_CODE, dbo.ITM.ITM_' +
        'INDICE, dbo.ITM.ITM_NAME'
      'FROM     dbo.INVITM INNER JOIN'
      
        '                  dbo.ITM ON dbo.INVITM.INVITM_ITM_ID = dbo.ITM.' +
        'ITM_ID'
      'WHERE  dbo.INVITM.INVITM_INV_ID = :INVID')
    Left = 960
    Top = 272
    ParamData = <
      item
        Name = 'INVID'
        ParamType = ptInput
      end>
    object QHSTPURITMINVITM_ITM_ID: TLargeintField
      FieldName = 'INVITM_ITM_ID'
      Origin = 'INVITM_ITM_ID'
      Required = True
      Visible = False
    end
    object QHSTPURITMITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object QHSTPURITMITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 10
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object QHSTPURITMITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object QHSTPURITMITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 20
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object QHSTPURITMINVITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'INVITM_QTY'
      Origin = 'INVITM_QTY'
      Required = True
    end
    object QHSTPURITMINVITM_AMOUNT: TCurrencyField
      DisplayLabel = 'Amount'
      DisplayWidth = 15
      FieldName = 'INVITM_AMOUNT'
      Origin = 'INVITM_AMOUNT'
      Required = True
    end
  end
  object WASM: TFDTable
    IndexFieldNames = 'ASM_ID'
    Connection = Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.ASM'
    TableName = 'BAB.dbo.ASM'
    Left = 176
    Top = 712
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
  object WLFITM: TFDTable
    IndexFieldNames = 'LFITM_ID'
    Connection = Connect
    UpdateOptions.UpdateTableName = 'LFITM'
    TableName = 'LFITM'
    Left = 176
    Top = 648
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
  object Connect: TFDConnection
    Params.Strings = (
      'DriverID=MSSQL')
    ConnectedStoredUsage = []
    LoginPrompt = False
    Left = 160
    Top = 8
  end
  object VPUR_NEXT: TFDTable
    Connection = Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.PURNEXT'
    TableName = 'BAB.dbo.PURNEXT'
    Left = 1008
    Top = 832
    object VPUR_NEXTNEXT: TLargeintField
      FieldName = 'NEXT'
      Origin = 'NEXT'
      Required = True
    end
  end
  object WINV: TFDTable
    IndexFieldNames = 'INV_ID'
    Connection = Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.INV'
    TableName = 'BAB.dbo.INV'
    Left = 248
    Top = 352
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
  object DWGRP: TDataSource
    DataSet = WGRP
    Left = 248
    Top = 128
  end
  object DWITM: TDataSource
    DataSet = WITM
    Left = 248
    Top = 184
  end
  object WPURITM: TFDTable
    IndexFieldNames = 'INVITM_ID'
    Connection = Connect
    UpdateOptions.UpdateTableName = 'VPURITM'
    TableName = 'VPURITM'
    Left = 175
    Top = 312
    object WPURITMINVITM_ID: TLargeintField
      FieldName = 'INVITM_ID'
      Origin = 'INVITM_ID'
      Required = True
    end
    object WPURITMINVITM_INV_ID: TLargeintField
      FieldName = 'INVITM_INV_ID'
      Origin = 'INVITM_INV_ID'
      Required = True
    end
    object WPURITMINVITM_ITM_ID: TLargeintField
      FieldName = 'INVITM_ITM_ID'
      Origin = 'INVITM_ITM_ID'
      Required = True
    end
    object WPURITMITM_CP: TWideStringField
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object WPURITMITM_CODE: TLargeintField
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object WPURITMITM_INDICE: TWideStringField
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object WPURITMITM_NAME: TWideStringField
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object WPURITMINVITM_QTY: TLargeintField
      FieldName = 'INVITM_QTY'
      Origin = 'INVITM_QTY'
    end
    object WPURITMINVITM_AMOUNT: TCurrencyField
      DisplayLabel = 'Amount'
      DisplayWidth = 15
      FieldName = 'INVITM_AMOUNT'
      Origin = 'INVITM_AMOUNT'
      Required = True
    end
    object WPURITMTotal: TCurrencyField
      FieldName = 'Total'
      Origin = 'Total'
      ReadOnly = True
    end
    object WPURITMINVITM_DELIVERY: TWideStringField
      DisplayLabel = 'Delivery'
      DisplayWidth = 5
      FieldName = 'INVITM_DELIVERY'
      Origin = 'INVITM_DELIVERY'
      Required = True
      FixedChar = True
      Size = 10
    end
    object WPURITMINVITM_COMMENT: TWideStringField
      FieldName = 'INVITM_COMMENT'
      Origin = 'INVITM_COMMENT'
      FixedChar = True
      Size = 200
    end
  end
  object WINVITM: TFDTable
    Connection = Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.INVITM'
    TableName = 'BAB.dbo.INVITM'
    Left = 248
    Top = 408
    object WINVITMINVITM_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'INVITM_ID'
      Origin = 'INVITM_ID'
      ProviderFlags = [pfInWhere]
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
    object WINVITMINVITM_QTY: TLargeintField
      FieldName = 'INVITM_QTY'
      Origin = 'INVITM_QTY'
    end
    object WINVITMINVITM_AMOUNT: TCurrencyField
      FieldName = 'INVITM_AMOUNT'
      Origin = 'INVITM_AMOUNT'
    end
    object WINVITMINVITM_DELIVERY: TWideStringField
      FieldName = 'INVITM_DELIVERY'
      Origin = 'INVITM_DELIVERY'
      Required = True
      FixedChar = True
      Size = 10
    end
    object WINVITMINVITM_COMMENT: TWideStringField
      FieldName = 'INVITM_COMMENT'
      Origin = 'INVITM_COMMENT'
      FixedChar = True
      Size = 200
    end
  end
  object QHSTITMFROMASM: TFDQuery
    Connection = Connect
    SQL.Strings = (
      
        'SELECT dbo.ASM.ASM_ID, ITM_1.ITM_CP, ITM_1.ITM_CODE, ITM_1.ITM_I' +
        'NDICE, dbo.ASMITM.ASMITM_QTY, ITM_1.ITM_NAME'
      'FROM     dbo.ITM INNER JOIN'
      
        '                  dbo.ASMITM ON dbo.ITM.ITM_ID = dbo.ASMITM.ASMI' +
        'TM_ITM_ID INNER JOIN'
      
        '                  dbo.ASM ON dbo.ASMITM.ASMITM_ASM_ID = dbo.ASM.' +
        'ASM_ID INNER JOIN'
      
        '                  dbo.ITM AS ITM_1 ON dbo.ASM.ASM_ITM_ID = ITM_1' +
        '.ITM_ID'
      'WHERE  (dbo.ASMITM.ASMITM_ITM_ID = :ITMID)')
    Left = 960
    Top = 216
    ParamData = <
      item
        Name = 'ITMID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QHSTITMFROMASMASM_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ASM_ID'
      Origin = 'ASM_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
    object QHSTITMFROMASMITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object QHSTITMFROMASMITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 9
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object QHSTITMFROMASMITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object QHSTITMFROMASMASMITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'ASMITM_QTY'
      Origin = 'ASMITM_QTY'
      Required = True
    end
    object QHSTITMFROMASMITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 25
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
  end
  object DHSTITMFROMASM: TDataSource
    DataSet = QHSTITMFROMASM
    Left = 1064
    Top = 216
  end
  object QHSTITMSAL: TFDQuery
    Connection = Connect
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      
        'SELECT dbo.INV.INV_NUMBER, dbo.INV.INV_STATUS, dbo.INVITM.INVITM' +
        '_INV_ID, dbo.INVITM.INVITM_AMOUNT, dbo.INVITM.INVITM_QTY, dbo.IT' +
        'M.ITM_ID, dbo.INV.INV_DATE, dbo.CNT.CNT_FIRSTNAME'
      'FROM     dbo.INVITM INNER JOIN'
      
        '                  dbo.ITM ON dbo.INVITM.INVITM_ITM_ID = dbo.ITM.' +
        'ITM_ID INNER JOIN'
      
        '                  dbo.INV ON dbo.INVITM.INVITM_INV_ID = dbo.INV.' +
        'INV_ID INNER JOIN'
      '                  dbo.CNT ON dbo.INV.INV_CNT_ID = dbo.CNT.CNT_ID'
      'WHERE dbo.ITM.ITM_ID = :ITMID AND dbo.INV.INV_TYPE = '#39'S'#39
      '')
    Left = 958
    Top = 58
    ParamData = <
      item
        Name = 'ITMID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QHSTITMSALINV_NUMBER: TLargeintField
      DisplayLabel = 'Sale'
      DisplayWidth = 8
      FieldName = 'INV_NUMBER'
      Origin = 'INV_NUMBER'
      Required = True
    end
    object QHSTITMSALINVITM_INV_ID: TLargeintField
      FieldName = 'INVITM_INV_ID'
      Origin = 'INVITM_INV_ID'
      Required = True
      Visible = False
    end
    object QHSTITMSALCNT_FIRSTNAME: TWideStringField
      DisplayLabel = 'Client'
      DisplayWidth = 15
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      FixedChar = True
    end
    object QHSTITMSALINVITM_AMOUNT: TCurrencyField
      DisplayLabel = 'Amount'
      DisplayWidth = 15
      FieldName = 'INVITM_AMOUNT'
      Origin = 'INVITM_AMOUNT'
      Required = True
    end
    object QHSTITMSALINVITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'INVITM_QTY'
      Origin = 'INVITM_QTY'
      Required = True
    end
    object QHSTITMSALITM_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
    object QHSTITMSALINV_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'INV_DATE'
      Origin = 'INV_DATE'
      Required = True
    end
    object QHSTITMSALINV_STATUS: TWideStringField
      FieldName = 'INV_STATUS'
      Origin = 'INV_STATUS'
      Visible = False
      FixedChar = True
      Size = 10
    end
  end
  object DHSTITMSAL: TDataSource
    DataSet = QHSTITMSAL
    OnDataChange = DHSTITMPURDataChange
    Left = 1062
    Top = 58
  end
  object DSALITM: TDataSource
    DataSet = TSALITM
    OnDataChange = DSALITMDataChange
    Left = 88
    Top = 481
  end
  object TSALPAY: TFDTable
    BeforeDelete = TSALPAYBeforeDelete
    IndexFieldNames = 'INVPAY_INV_ID'
    MasterSource = DSAL
    MasterFields = 'INV_ID'
    Connection = Connect
    UpdateOptions.UpdateTableName = 'VSALPAY'
    TableName = 'VSALPAY'
    Left = 24
    Top = 536
    object TSALPAYINVPAY_ID: TLargeintField
      FieldName = 'INVPAY_ID'
      Origin = 'INVPAY_ID'
      Required = True
      Visible = False
    end
    object TSALPAYINVPAY_INV_ID: TLargeintField
      FieldName = 'INVPAY_INV_ID'
      Origin = 'INVPAY_INV_ID'
      Required = True
      Visible = False
    end
    object CurrencyField4: TCurrencyField
      DisplayLabel = 'Amount'
      DisplayWidth = 15
      FieldName = 'INVPAY_AMOUNT'
    end
    object TSALPAYINVPAY_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'INVPAY_DATE'
      Origin = 'INVPAY_DATE'
    end
    object WideStringField9: TWideStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 50
      FieldName = 'INVPAY_COMMENT'
      FixedChar = True
      Size = 100
    end
  end
  object DSALPAY: TDataSource
    DataSet = TSALPAY
    Left = 88
    Top = 536
  end
  object VSAL_NEXT: TFDTable
    Connection = Connect
    UpdateOptions.UpdateTableName = 'SALNEXT'
    TableName = 'SALNEXT'
    Left = 1072
    Top = 832
    object VSAL_NEXTNEXT: TLargeintField
      FieldName = 'NEXT'
      Required = True
    end
  end
  object Master: TFDConnection
    LoginPrompt = False
    Left = 96
    Top = 8
  end
  object ReportItem: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42866.658518125000000000
    ReportOptions.LastChange = 42879.691071724520000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 824
    Top = 16
    Datasets = <
      item
        DataSet = frxDBITM
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 14211288
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 15790320
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            'Item Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 71.811070000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 1046.929133858270000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Width = 22.763760000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haRight
          Memo.UTF8W = (
            'CP')
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 22.763760000000000000
          Width = 50.322820000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haRight
          Memo.UTF8W = (
            'Code')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 73.086580000000000000
          Width = 23.307050000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Ind')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 100.173160000000000000
          Width = 108.993887280000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Group')
          ParentFont = False
          Style = 'Header'
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 212.946577280000000000
          Width = 239.649703300000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'Item')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 463.934870580000000000
          Width = 134.390024370000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haRight
          Memo.UTF8W = (
            'Purchase unit')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 605.883954950000000000
          Width = 118.966475570000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haRight
          Memo.UTF8W = (
            'Sale Unit')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 736.189020520000000000
          Width = 37.440719510000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haRight
          Memo.UTF8W = (
            'PUR')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 784.968330020000000000
          Width = 36.649768290000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haRight
          Memo.UTF8W = (
            'SAL')
          ParentFont = False
          Style = 'Header'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 829.177158310000000000
          Width = 40.604524390000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          HAlign = haRight
          Memo.UTF8W = (
            'Stock')
          ParentFont = False
          Style = 'Header'
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 881.120272700000000000
          Width = 165.808861160000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 15790320
          Memo.UTF8W = (
            'ITM_COMMENT')
          ParentFont = False
          Style = 'Header'
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBITM
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Width = 22.763760000000000000
          Height = 18.897650000000000000
          DataField = 'ITM_CP'
          DataSet = frxDBITM
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ITM_CP"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 22.763760000000000000
          Width = 50.322820000000000000
          Height = 18.897650000000000000
          DataField = 'ITM_CODE'
          DataSet = frxDBITM
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ITM_CODE"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 73.086580000000000000
          Width = 23.307050000000000000
          Height = 18.897650000000000000
          DataField = 'ITM_INDICE'
          DataSet = frxDBITM
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ITM_INDICE"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 100.173160000000000000
          Width = 108.993887280000000000
          Height = 18.897650000000000000
          DataSet = frxDBITM
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."GRP_NAME"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 212.946577280000000000
          Width = 239.649703300000000000
          Height = 18.897650000000000000
          DataField = 'ITM_NAME'
          DataSet = frxDBITM
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ITM_NAME"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 463.934870580000000000
          Width = 134.390024370000000000
          Height = 18.897650000000000000
          DataSet = frxDBITM
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ITM_PURCHASE"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 605.883954950000000000
          Width = 118.966475570000000000
          Height = 18.897650000000000000
          DataSet = frxDBITM
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ITM_SALE"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 736.189020520000000000
          Width = 37.440719510000000000
          Height = 18.897650000000000000
          DataField = 'PUR'
          DataSet = frxDBITM
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."PUR"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 784.968330020000000000
          Width = 36.649768290000000000
          Height = 18.897650000000000000
          DataField = 'SAL'
          DataSet = frxDBITM
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."SAL"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 829.177158310000000000
          Width = 40.604524390000000000
          Height = 18.897650000000000000
          DataField = 'Stock'
          DataSet = frxDBITM
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."Stock"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 881.120272700000000000
          Width = 165.808861160000000000
          Height = 18.897650000000000000
          DataField = 'ITM_COMMENT'
          DataSet = frxDBITM
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ITM_COMMENT"]')
          ParentFont = False
          Style = 'Data'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 502.677490000000000000
        Width = 1046.929810000000000000
        object Memo25: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo27: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 971.339210000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 245.669450000000000000
        Top = 234.330860000000000000
        Width = 1046.929810000000000000
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 842.835190000000000000
          Top = 86.929190000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDataset1."ITM_PURCHASE"> * <frxDBDataset1."Stock">,Ma' +
              'sterData1)]')
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 86.929190000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Default Purchase Item in Stock')
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 842.835190000000000000
          Top = 109.606370000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDataset1."ITM_SALE"> * <frxDBDataset1."Stock">,Master' +
              'Data1)]')
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 109.606370000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Default Stock to Sale')
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 842.835190000000000000
          Top = 132.283550000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDataset1."ITM_SALE"> * <frxDBDataset1."Stock">,Master' +
              'Data1) - SUM(<frxDBDataset1."ITM_PURCHASE"> * <frxDBDataset1."St' +
              'ock">,MasterData1)]')
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 132.283550000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Default Profit on Stock')
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 83.149660000000000000
          Width = 691.653990000000000000
          Height = 71.811070000000000000
          Frame.Typ = []
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 90.708720000000000000
          Width = 207.874150000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Default Stock Value')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 162.519790000000000000
          Width = 691.653990000000000000
          Height = 71.811070000000000000
          Frame.Typ = []
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 170.078850000000000000
          Width = 207.874150000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Default Transaction')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 842.835190000000000000
          Top = 166.299320000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDataset1."ITM_PURCHASE"> * <frxDBDataset1."SAL">,Mast' +
              'erData1)]')
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 166.299320000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Default Purchase of sold item')
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 842.835190000000000000
          Top = 188.976500000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDataset1."ITM_SALE"> * <frxDBDataset1."SAL">,MasterDa' +
              'ta1)]')
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 188.976500000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Default Sold Item')
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 842.835190000000000000
          Top = 211.653680000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDataset1."ITM_SALE"> * <frxDBDataset1."SAL">,MasterDa' +
              'ta1) - SUM(<frxDBDataset1."ITM_PURCHASE"> * <frxDBDataset1."SAL"' +
              '>,MasterData1)]')
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 211.653680000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Default Profit of sold Item')
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 842.835190000000000000
          Top = 30.236240000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDataset1."ITM_SALE"> * <frxDBDataset1."PUR">,MasterDa' +
              'ta1)]')
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 30.236240000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Default Sale')
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 842.835190000000000000
          Top = 52.913420000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDataset1."ITM_SALE"> * <frxDBDataset1."PUR">,MasterDa' +
              'ta1) - SUM(<frxDBDataset1."ITM_PURCHASE"> * <frxDBDataset1."PUR"' +
              '>,MasterData1)]')
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 52.913420000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Default Profit')
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 15.118120000000000000
          Width = 207.874150000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Default Total Value')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 842.835190000000000000
          Top = 7.559060000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDataset1."ITM_PURCHASE"> * <frxDBDataset1."PUR">,Mast' +
              'erData1)]')
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 7.559060000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Default Purchase')
        end
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 3.779530000000000000
          Width = 691.653990000000000000
          Height = 71.811070000000000000
          Frame.Typ = []
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 52.913420000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '(When all item will be sold)')
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 132.283550000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '(All Item actualy in Stock)')
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 211.653680000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '(Only Item Already sale)')
        end
      end
    end
  end
  object frxDBITM: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ITM_CP=ITM_CP'
      'ITM_CODE=ITM_CODE'
      'ITM_INDICE=ITM_INDICE'
      'GRP_NAME=GRP_NAME'
      'ITM_NAME=ITM_NAME'
      'ITM_UNIT=ITM_UNIT'
      'ITM_PURCHASE=ITM_PURCHASE'
      'ITM_SALE=ITM_SALE'
      'PUR=PUR'
      'SAL=SAL'
      'LF=LF'
      'ASM=ASM'
      'USED=USED'
      'Stock=Stock'
      'ITM_COMMENT=ITM_COMMENT'
      'ITM_ID=ITM_ID'
      'ITM_GRP_ID=ITM_GRP_ID')
    DataSet = TITM
    BCDToCurrency = False
    DataSetOptions = []
    Left = 728
    Top = 16
  end
  object frxDBSAL: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxDBSAL'
    CloseDataSource = False
    DataSet = TSAL
    BCDToCurrency = False
    DataSetOptions = []
    Left = 536
    Top = 72
  end
  object frxDBSALITM: TfrxDBDataset
    UserName = 'frxDBSALITM'
    CloseDataSource = False
    DataSet = TSALITM
    BCDToCurrency = False
    DataSetOptions = []
    Left = 632
    Top = 72
  end
  object ReportSAL: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42867.275821041700000000
    ReportOptions.LastChange = 42867.405743368060000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 824
    Top = 72
    Datasets = <
      item
        DataSet = frxDBSAL
        DataSetName = 'frxDBSAL'
      end
      item
        DataSet = frxDBSALITM
        DataSetName = 'frxDBSALITM'
      end
      item
        DataSet = frxDBSALPAY
        DataSetName = 'frxDBSALPAY'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sale Invoice')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 181.417440000000000000
        ParentFont = False
        Top = 79.370130000000000000
        Width = 718.110700000000000000
        DataSet = frxDBSAL
        DataSetName = 'frxDBSAL'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 15.118120000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Sale Invoice N'#176)
        end
        object frxDBSALINV_NUMBER: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 15.118120000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'INV_NUMBER'
          DataSet = frxDBSAL
          DataSetName = 'frxDBSAL'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSAL."INV_NUMBER"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 49.133890000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Client Name')
        end
        object frxDBSALClient: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 49.133890000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'Client'
          DataSet = frxDBSAL
          DataSetName = 'frxDBSAL'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSAL."Client"]')
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 404.409710000000000000
          Height = 113.385900000000000000
          Frame.Typ = []
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 83.149660000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Date')
        end
        object frxDBSALINV_DATE: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 83.149660000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'INV_DATE'
          DataSet = frxDBSAL
          DataSetName = 'frxDBSAL'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSAL."INV_DATE"]')
        end
        object frxDBSALINV_STATUS: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 15.118120000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'INV_STATUS'
          DataSet = frxDBSAL
          DataSetName = 'frxDBSAL'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSAL."INV_STATUS"]')
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 177.637910000000000000
          Width = 676.535870000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        DataSet = frxDBSALITM
        DataSetName = 'frxDBSALITM'
        RowCount = 0
        object frxDBSALITMITM_CP: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataField = 'ITM_CP'
          DataSet = frxDBSALITM
          DataSetName = 'frxDBSALITM'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSALITM."ITM_CP"]')
        end
        object frxDBSALITMITM_CODE: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'ITM_CODE'
          DataSet = frxDBSALITM
          DataSetName = 'frxDBSALITM'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBSALITM."ITM_CODE"]')
        end
        object frxDBSALITMITM_INDICE: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 3.779530000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataField = 'ITM_INDICE'
          DataSet = frxDBSALITM
          DataSetName = 'frxDBSALITM'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSALITM."ITM_INDICE"]')
        end
        object frxDBSALITMITM_NAME: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataField = 'ITM_NAME'
          DataSet = frxDBSALITM
          DataSetName = 'frxDBSALITM'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSALITM."ITM_NAME"]')
        end
        object frxDBSALITMINVITM_QTY: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'INVITM_QTY'
          DataSet = frxDBSALITM
          DataSetName = 'frxDBSALITM'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBSALITM."INVITM_QTY"]')
        end
        object frxDBSALITMINVITM_AMOUNT: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'INVITM_AMOUNT'
          DataSet = frxDBSALITM
          DataSetName = 'frxDBSALITM'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBSALITM."INVITM_AMOUNT"]')
        end
        object frxDBSALITMTotal: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'Total'
          DataSet = frxDBSALITM
          DataSetName = 'frxDBSALITM'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBSALITM."Total"]')
        end
        object frxDBSALITMINVITM_DELIVERY: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataField = 'INVITM_DELIVERY'
          DataSet = frxDBSALITM
          DataSetName = 'frxDBSALITM'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSALITM."INVITM_DELIVERY"]')
        end
        object frxDBSALITMINVITM_COMMENT: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'INVITM_COMMENT'
          DataSet = frxDBSALITM
          DataSetName = 'frxDBSALITM'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSALITM."INVITM_COMMENT"]')
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Code')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Items')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Qty')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Unit Price')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Price')
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Delivery')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Comment')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 79.370130000000000000
        ParentFont = False
        Top = 374.173470000000000000
        Width = 718.110700000000000000
        object frxDBSALDue: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 41.574830000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'Due'
          DataSet = frxDBSAL
          DataSetName = 'frxDBSAL'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBSAL."Due"]')
        end
        object frxDBSALTotal: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 15.118120000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'Total'
          DataSet = frxDBSAL
          DataSetName = 'frxDBSAL'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBSAL."Total"]')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 676.535870000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Top = 15.118120000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Top = 41.574830000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Remaining')
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 540.472790000000000000
        Width = 718.110700000000000000
        DataSet = frxDBSALPAY
        DataSetName = 'frxDBSALPAY'
        RowCount = 0
        object frxDBSALPAYINVPAY_DATE: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'INVPAY_DATE'
          DataSet = frxDBSALPAY
          DataSetName = 'frxDBSALPAY'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSALPAY."INVPAY_DATE"]')
        end
        object frxDBSALPAYINVPAY_AMOUNT: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'INVPAY_AMOUNT'
          DataSet = frxDBSALPAY
          DataSetName = 'frxDBSALPAY'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBSALPAY."INVPAY_AMOUNT"]')
        end
        object frxDBSALPAYINVPAY_COMMENT: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'INVPAY_COMMENT'
          DataSet = frxDBSALPAY
          DataSetName = 'frxDBSALPAY'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSALPAY."INVPAY_COMMENT"]')
        end
      end
      object Header3: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 476.220780000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Detail Paiement')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Date')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 18.897650000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Amount')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Comment')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 623.622450000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 7.559060000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page]')
        end
        object Date: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
        end
        object Time: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 7.559060000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Page')
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 7.559060000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '/')
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 676.535870000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object TotalPages: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 7.559060000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[TotalPages#]')
        end
      end
    end
  end
  object frxDBSALPAY: TfrxDBDataset
    UserName = 'frxDBSALPAY'
    CloseDataSource = False
    DataSet = TSALPAY
    BCDToCurrency = False
    DataSetOptions = []
    Left = 728
    Top = 72
  end
  object DPROFIT: TDataSource
    DataSet = QDAY_INV_ITM
    Left = 488
    Top = 208
  end
  object QDAY_INV_ITM: TFDQuery
    Connection = Connect
    SQL.Strings = (
      
        'SELECT TOP (100) PERCENT dbo.ITM.ITM_CP, dbo.ITM.ITM_CODE, dbo.I' +
        'TM.ITM_INDICE, dbo.INVITM.INVITM_QTY, dbo.ITM.ITM_PURCHASE, dbo.' +
        'INVITM.INVITM_AMOUNT, '
      
        '                  dbo.ITM.ITM_PURCHASE * dbo.INVITM.INVITM_QTY A' +
        'S Purtotal, dbo.INVITM.INVITM_AMOUNT * dbo.INVITM.INVITM_QTY AS ' +
        'Saltotal, '
      
        '                  dbo.INVITM.INVITM_AMOUNT * dbo.INVITM.INVITM_Q' +
        'TY - dbo.ITM.ITM_PURCHASE * dbo.INVITM.INVITM_QTY AS Profit, dbo' +
        '.INV.INV_DATE, dbo.ITM.ITM_ID, '
      
        '                  dbo.INVITM.INVITM_ID, dbo.INV.INV_ID, dbo.INV.' +
        'INV_NUMBER, dbo.ITM.ITM_NAME, dbo.CNT.CNT_FIRSTNAME, dbo.CNT.CNT' +
        '_ID, YEAR(dbo.INV.INV_DATE) AS YY, MONTH(dbo.INV.INV_DATE) AS MM'
      'FROM     dbo.CNT INNER JOIN'
      
        '                  dbo.INV ON dbo.CNT.CNT_ID = dbo.INV.INV_CNT_ID' +
        ' RIGHT OUTER JOIN'
      '                  dbo.INVITM LEFT OUTER JOIN'
      
        '                  dbo.ITM ON dbo.INVITM.INVITM_ITM_ID = dbo.ITM.' +
        'ITM_ID ON dbo.INV.INV_ID = dbo.INVITM.INVITM_INV_ID'
      
        'WHERE  (dbo.INV.INV_TYPE = '#39'S'#39') AND (dbo.INV.INV_DATE >= :DATE1)' +
        ' AND (dbo.INV.INV_DATE <= :DATE2)'
      'ORDER BY dbo.INV.INV_DATE, dbo.INV.INV_ID')
    Left = 528
    Top = 264
    ParamData = <
      item
        Name = 'DATE1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATE2'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object QDAY_INV_ITMINV_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'INV_DATE'
      Origin = 'INV_DATE'
    end
    object QDAY_INV_ITMINV_NUMBER: TLargeintField
      DisplayLabel = 'Sale'
      DisplayWidth = 5
      FieldName = 'INV_NUMBER'
      Origin = 'INV_NUMBER'
    end
    object QDAY_INV_ITMCNT_FIRSTNAME: TWideStringField
      DisplayLabel = 'Client'
      DisplayWidth = 15
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      FixedChar = True
    end
    object QDAY_INV_ITMITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object QDAY_INV_ITMITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 9
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
    end
    object QDAY_INV_ITMITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object QDAY_INV_ITMITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 25
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object QDAY_INV_ITMINVITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'INVITM_QTY'
      Origin = 'INVITM_QTY'
      Required = True
    end
    object QDAY_INV_ITMITM_PURCHASE: TCurrencyField
      FieldName = 'ITM_PURCHASE'
      Origin = 'ITM_PURCHASE'
      Visible = False
    end
    object QDAY_INV_ITMINVITM_AMOUNT: TCurrencyField
      FieldName = 'INVITM_AMOUNT'
      Origin = 'INVITM_AMOUNT'
      Required = True
      Visible = False
    end
    object QDAY_INV_ITMPurtotal: TCurrencyField
      DisplayWidth = 15
      FieldName = 'Purtotal'
      Origin = 'Purtotal'
      ReadOnly = True
    end
    object QDAY_INV_ITMSaltotal: TCurrencyField
      DisplayWidth = 15
      FieldName = 'Saltotal'
      Origin = 'Saltotal'
      ReadOnly = True
    end
    object QDAY_INV_ITMProfit: TCurrencyField
      DisplayWidth = 15
      FieldName = 'Profit'
      Origin = 'Profit'
      ReadOnly = True
    end
    object QDAY_INV_ITMITM_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
    object QDAY_INV_ITMINVITM_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'INVITM_ID'
      Origin = 'INVITM_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
    object QDAY_INV_ITMINV_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'INV_ID'
      Origin = 'INV_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
    object QDAY_INV_ITMCNT_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CNT_ID'
      Origin = 'CNT_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object QDAY_INV_ITMYY: TIntegerField
      FieldName = 'YY'
      Origin = 'YY'
      ReadOnly = True
    end
    object QDAY_INV_ITMMM: TIntegerField
      FieldName = 'MM'
      Origin = 'MM'
      ReadOnly = True
    end
  end
  object frxDBProfit: TfrxDBDataset
    UserName = 'frxDBPROFIT'
    CloseDataSource = False
    DataSet = QDAY_INV_ITM
    BCDToCurrency = False
    DataSetOptions = []
    Left = 632
    Top = 200
  end
  object Report_DAY_INV_ITM: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42869.625356493100000000
    ReportOptions.LastChange = 42871.829711712960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 728
    Top = 200
    Datasets = <
      item
        DataSet = frxDBProfit
        DataSetName = 'frxDBPROFIT'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 52479
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Profit Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110236220000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Frame.Width = 2.000000000000000000
          ParentFont = False
          Style = 'Header line'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 49.259740000000000000
          Top = 3.779530000000000000
          Width = 83.236240000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Code')
          ParentFont = False
          Style = 'Header'
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 138.094310000000000000
          Top = 3.779530000000000000
          Width = 123.540857620000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'Item')
          ParentFont = False
          Style = 'Header'
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 265.414697620000000000
          Top = 3.779530000000000000
          Width = 34.866110000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haRight
          Memo.UTF8W = (
            'Qty')
          ParentFont = False
          Style = 'Header'
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 304.060337620000000000
          Top = 3.779530000000000000
          Width = 110.907143480000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haRight
          Memo.UTF8W = (
            'Def Purchase')
          ParentFont = False
          Style = 'Header'
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 418.747011100000000000
          Top = 3.779530000000000000
          Width = 116.473343270000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haRight
          Memo.UTF8W = (
            'Real Sale')
          ParentFont = False
          Style = 'Header'
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 538.999884370000000000
          Top = 3.779530000000000000
          Width = 126.196931850000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haRight
          Memo.UTF8W = (
            'Profit')
          ParentFont = False
          Style = 'Header'
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBPROFIT."INV_DATE"'
        object Memo13: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          DataSet = frxDBProfit
          DataSetName = 'frxDBPROFIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = 52479
          Memo.UTF8W = (
            'Date [frxDBPROFIT."INV_DATE"]')
          ParentFont = False
          Style = 'Group header'
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        DataSet = frxDBProfit
        DataSetName = 'frxDBPROFIT'
        RowCount = 0
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 49.259740000000000000
          Width = 15.204700000000000000
          Height = 18.897650000000000000
          DataField = 'ITM_CP'
          DataSet = frxDBProfit
          DataSetName = 'frxDBPROFIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPROFIT."ITM_CP"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 64.464440000000000000
          Width = 54.102350000000000000
          Height = 18.897650000000000000
          DataField = 'ITM_CODE'
          DataSet = frxDBProfit
          DataSetName = 'frxDBPROFIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPROFIT."ITM_CODE"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 118.566790000000000000
          Width = 15.747990000000000000
          Height = 18.897650000000000000
          DataField = 'ITM_INDICE'
          DataSet = frxDBProfit
          DataSetName = 'frxDBPROFIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPROFIT."ITM_INDICE"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 138.094310000000000000
          Width = 123.540857620000000000
          Height = 18.897650000000000000
          DataField = 'ITM_NAME'
          DataSet = frxDBProfit
          DataSetName = 'frxDBPROFIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPROFIT."ITM_NAME"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 265.414697620000000000
          Width = 34.866110000000000000
          Height = 18.897650000000000000
          DataField = 'INVITM_QTY'
          DataSet = frxDBProfit
          DataSetName = 'frxDBPROFIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPROFIT."INVITM_QTY"]')
          ParentFont = False
          Style = 'Data'
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 304.060337620000000000
          Width = 110.907143480000000000
          Height = 18.897650000000000000
          DataSet = frxDBProfit
          DataSetName = 'frxDBPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPROFIT."Purtotal"] vnd')
          ParentFont = False
          Style = 'Data'
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 418.747011100000000000
          Width = 116.473343270000000000
          Height = 18.897650000000000000
          DataSet = frxDBProfit
          DataSetName = 'frxDBPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPROFIT."Saltotal"] vnd')
          ParentFont = False
          Style = 'Data'
        end
        object frxDBPROFITProfit: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataSet = frxDBProfit
          DataSetName = 'frxDBPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPROFIT."Profit"] vnd')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 26.456710000000000000
        ParentFont = False
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPROFIT."Purtotal">,MasterData1)] vnd')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Width = 366.614410000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPROFIT."Saltotal">,MasterData1)] vnd')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPROFIT."Profit">,MasterData1)] vnd')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Invoice total')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 468.661720000000000000
        Width = 718.110700000000000000
        object Memo24: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo26: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 26.456710000000000000
        ParentFont = False
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBPROFIT."INV_NUMBER"'
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 95.779530000000000000
          Top = 3.779530000000000000
          Width = 187.811070000000000000
          Height = 18.897650000000000000
          DataSet = frxDBProfit
          DataSetName = 'frxDBPROFIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Client [frxDBPROFIT."CNT_FIRSTNAME"]')
          ParentFont = False
          Style = 'Data'
        end
        object frxDBPROFITINV_NUMBER: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataSet = frxDBProfit
          DataSetName = 'frxDBPROFIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clSkyBlue
          Memo.UTF8W = (
            'Sale N'#176' [frxDBPROFIT."INV_NUMBER"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Fill.BackColor = 16774348
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 60.472480000000000000
        ParentFont = False
        Top = 385.512060000000000000
        Width = 718.110700000000000000
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 298.582870000000000000
          Top = 22.677180000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPROFIT."Purtotal">,MasterData1)] vnd')
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 22.677180000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPROFIT."Saltotal">,MasterData1)] vnd')
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 22.677180000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPROFIT."Profit">,MasterData1)] vnd')
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 15.118120000000000000
          Width = 381.732530000000000000
          Height = 34.015770000000000000
          Frame.Typ = []
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total Period')
        end
      end
    end
  end
  object Report_YY_MM_INV: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42871.649445127300000000
    ReportOptions.LastChange = 42871.828116331010000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 728
    Top = 264
    Datasets = <
      item
        DataSet = frxDBSUMPROFIT
        DataSetName = 'frxDBSUMPROFIT'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 52479
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 33.834570000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          Memo.UTF8W = (
            'N'#176)
          ParentFont = False
          Style = 'Header'
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 324.858380000000000000
          Width = 112.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haRight
          Memo.UTF8W = (
            'Default PUR')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 444.433210000000000000
          Width = 108.236240000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haRight
          Memo.UTF8W = (
            'Real SAL')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 560.228510000000000000
          Width = 123.354360000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haRight
          Memo.UTF8W = (
            'Profit')
          ParentFont = False
          Style = 'Header'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 438.425480000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo16: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        DataSet = frxDBSUMPROFIT
        DataSetName = 'frxDBSUMPROFIT'
        RowCount = 0
        object frxDBSUMPROFITPUR: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBSUMPROFIT."PUR"] vnd')
        end
        object frxDBSUMPROFITSAL: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBSUMPROFIT."SAL"] vnd')
        end
        object frxDBSUMPROFITPRO: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBSUMPROFIT."PRO"] vnd')
        end
        object frxDBSUMPROFITINV_NUMBER: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 3.779530000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          DataField = 'INV_NUMBER'
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSUMPROFIT."INV_NUMBER"]')
        end
        object frxDBSUMPROFITINV_DATE: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'INV_DATE'
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSUMPROFIT."INV_DATE"]')
        end
        object frxDBSUMPROFITCNT_FIRSTNAME: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'CNT_FIRSTNAME'
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBSUMPROFIT."CNT_FIRSTNAME"]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBSUMPROFIT."YY"'
        StartNewPage = True
        object frxDBSUMPROFITYY: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          Frame.Typ = []
          Fill.BackColor = 52479
          Memo.UTF8W = (
            'Year [frxDBSUMPROFIT."YY"]')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBSUMPROFIT."MM"'
        StartNewPage = True
        object frxDBSUMPROFITMM: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          Frame.Typ = []
          Fill.BackColor = clActiveCaption
          Memo.UTF8W = (
            'Month [frxDBSUMPROFIT."MM"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 11.338590000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBSUMPROFIT."PUR">,MasterData1)] vnd')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 11.338590000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBSUMPROFIT."SAL">,MasterData1)] vnd')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 11.338590000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBSUMPROFIT."PRO">,MasterData1)] vnd')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 3.779530000000000000
          Width = 616.063390000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 347.716760000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 11.338590000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBSUMPROFIT."PUR">,MasterData1)] vnd')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 11.338590000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBSUMPROFIT."SAL">,MasterData1)] vnd')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 11.338590000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBSUMPROFIT."PRO">,MasterData1)] vnd')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object QYY_MM_INV: TFDQuery
    Connection = Connect
    SQL.Strings = (
      
        'SELECT INV_NUMBER, CNT_FIRSTNAME, SUM(Purtotal) AS PUR, SUM(Salt' +
        'otal) AS SAL, SUM(Profit) AS PRO, INV_ID, INV_DATE, YEAR(INV_DAT' +
        'E) AS YY, MONTH(INV_DATE) '
      '                  AS MM'
      'FROM     dbo.VPROFIT'
      'WHERE (INV_DATE >= :DATE1) AND (INV_DATE <= :DATE2)'
      'GROUP BY INV_ID, INV_NUMBER, CNT_FIRSTNAME, INV_DATE'
      'ORDER BY INV_DATE')
    Left = 440
    Top = 264
    ParamData = <
      item
        Name = 'DATE1'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATE2'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object QYY_MM_INVINV_DATE: TSQLTimeStampField
      FieldName = 'INV_DATE'
      Origin = 'INV_DATE'
    end
    object QYY_MM_INVINV_NUMBER: TLargeintField
      FieldName = 'INV_NUMBER'
      Origin = 'INV_NUMBER'
    end
    object QYY_MM_INVCNT_FIRSTNAME: TWideStringField
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      FixedChar = True
    end
    object QYY_MM_INVPUR: TCurrencyField
      FieldName = 'PUR'
      Origin = 'PUR'
      ReadOnly = True
    end
    object QYY_MM_INVSAL: TCurrencyField
      FieldName = 'SAL'
      Origin = 'SAL'
      ReadOnly = True
    end
    object QYY_MM_INVPRO: TCurrencyField
      FieldName = 'PRO'
      Origin = 'PRO'
      ReadOnly = True
    end
    object QYY_MM_INVINV_ID: TLargeintField
      FieldName = 'INV_ID'
      Origin = 'INV_ID'
    end
    object QYY_MM_INVYY: TIntegerField
      FieldName = 'YY'
      Origin = 'YY'
      ReadOnly = True
    end
    object QYY_MM_INVMM: TIntegerField
      FieldName = 'MM'
      Origin = 'MM'
      ReadOnly = True
    end
  end
  object frxDBSUMPROFIT: TfrxDBDataset
    UserName = 'frxDBSUMPROFIT'
    CloseDataSource = False
    DataSet = QYY_MM_INV
    BCDToCurrency = False
    DataSetOptions = []
    Left = 632
    Top = 264
  end
  object Report_YY_MM: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42871.649445127300000000
    ReportOptions.LastChange = 42871.827648101850000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 824
    Top = 264
    Datasets = <
      item
        DataSet = frxDBSUMPROFIT
        DataSetName = 'frxDBSUMPROFIT'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = clBlack
      end
      item
        Name = 'Group header'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
        Fill.BackColor = 52479
      end
      item
        Name = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
      end
      item
        Name = 'Group footer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Frame.Typ = []
      end
      item
        Name = 'Header line'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haCenter
          Memo.UTF8W = (
            'Report')
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 324.858380000000000000
          Width = 112.015770000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haRight
          Memo.UTF8W = (
            'Default PUR')
          ParentFont = False
          Style = 'Header'
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 444.433210000000000000
          Width = 108.236240000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haRight
          Memo.UTF8W = (
            'Real SAL')
          ParentFont = False
          Style = 'Header'
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 560.228510000000000000
          Width = 123.354360000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Fill.BackColor = clBlack
          HAlign = haRight
          Memo.UTF8W = (
            'Profit')
          ParentFont = False
          Style = 'Header'
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 404.409710000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 718.110700000000000000
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Top = 1.000000000000000000
          Height = 22.677180000000000000
          AutoWidth = True
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        object Memo16: TfrxMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 1.000000000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        DataSet = frxDBSUMPROFIT
        DataSetName = 'frxDBSUMPROFIT'
        RowCount = 0
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBSUMPROFIT."YY"'
        StartNewPage = True
        object frxDBSUMPROFITYY: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 702.992580000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          Frame.Typ = []
          Fill.BackColor = 52479
          Memo.UTF8W = (
            'Year [frxDBSUMPROFIT."YY"]')
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBSUMPROFIT."MM"'
        object frxDBSUMPROFITMM: TfrxMemoView
          AllowVectorExport = True
          Left = 241.889920000000000000
          Width = 445.984540000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          Frame.Typ = []
          Fill.BackColor = clActiveCaption
          Memo.UTF8W = (
            'Month [frxDBSUMPROFIT."MM"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 268.346630000000000000
        Width = 718.110700000000000000
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBSUMPROFIT."PUR">,MasterData1)] vnd')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBSUMPROFIT."SAL">,MasterData1)] vnd')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBSUMPROFIT."PRO">,MasterData1)] vnd')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 313.700990000000000000
        Width = 718.110700000000000000
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 328.819110000000000000
          Top = 11.338590000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBSUMPROFIT."PUR">,MasterData1)] vnd')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 11.338590000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBSUMPROFIT."SAL">,MasterData1)] vnd')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Top = 11.338590000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSUMPROFIT
          DataSetName = 'frxDBSUMPROFIT'
          DisplayFormat.DecimalSeparator = ' '
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBSUMPROFIT."PRO">,MasterData1)] vnd')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 680.315400000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object FDManager1: TFDManager
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 24
    Top = 8
  end
  object ReportPUR: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42867.275821041700000000
    ReportOptions.LastChange = 42876.950879039350000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 824
    Top = 128
    Datasets = <
      item
        DataSet = frxDBPUR
        DataSetName = 'frxDBPUR'
      end
      item
        DataSet = frxDBPURITM
        DataSetName = 'frxDBPURITM'
      end
      item
        DataSet = frxDBPURPAY
        DataSetName = 'frxDBPURPAY'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Purchase Invoice')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 181.417440000000000000
        ParentFont = False
        Top = 79.370130000000000000
        Width = 718.110700000000000000
        DataSet = frxDBPUR
        DataSetName = 'frxDBPUR'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 15.118120000000000000
          Width = 162.519790000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Purchase Invoice N'#176)
        end
        object frxDBSALINV_NUMBER: TfrxMemoView
          AllowVectorExport = True
          Left = 188.976500000000000000
          Top = 15.118120000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSAL
          DataSetName = 'frxDBSAL'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPUR."INV_NUMBER"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 49.133890000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Supplier')
        end
        object frxDBSALClient: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 49.133890000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'Supplier'
          DataSet = frxDBPUR
          DataSetName = 'frxDBPUR'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPUR."Supplier"]')
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 404.409710000000000000
          Height = 113.385900000000000000
          Frame.Typ = []
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 18.897650000000000000
          Top = 83.149660000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Date')
        end
        object frxDBSALINV_DATE: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 83.149660000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSAL
          DataSetName = 'frxDBSAL'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPUR."INV_DATE"]')
        end
        object frxDBSALINV_STATUS: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Top = 15.118120000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSAL
          DataSetName = 'frxDBSAL'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPUR."INV_STATUS"]')
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 177.637910000000000000
          Width = 676.535870000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        DataSet = frxDBPURITM
        DataSetName = 'frxDBPURITM'
        RowCount = 0
        object frxDBSALITMITM_CP: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataField = 'ITM_CP'
          DataSet = frxDBPURITM
          DataSetName = 'frxDBPURITM'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPURITM."ITM_CP"]')
        end
        object frxDBSALITMITM_CODE: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 3.779530000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataField = 'ITM_CODE'
          DataSet = frxDBPURITM
          DataSetName = 'frxDBPURITM'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPURITM."ITM_CODE"]')
        end
        object frxDBSALITMITM_INDICE: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Top = 3.779530000000000000
          Width = 15.118120000000000000
          Height = 18.897650000000000000
          DataField = 'ITM_INDICE'
          DataSet = frxDBPURITM
          DataSetName = 'frxDBPURITM'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPURITM."ITM_INDICE"]')
        end
        object frxDBSALITMITM_NAME: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSALITM
          DataSetName = 'frxDBSALITM'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPURITM."ITM_NAME"]')
        end
        object frxDBSALITMINVITM_QTY: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSALITM
          DataSetName = 'frxDBSALITM'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPURITM."INVITM_QTY"]')
        end
        object frxDBSALITMINVITM_AMOUNT: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSALITM
          DataSetName = 'frxDBSALITM'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPURITM."INVITM_AMOUNT"]')
        end
        object frxDBSALITMTotal: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSALITM
          DataSetName = 'frxDBSALITM'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPURITM."Total"]')
        end
        object frxDBSALITMINVITM_DELIVERY: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSALITM
          DataSetName = 'frxDBSALITM'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPURITM."INVITM_DELIVERY"]')
        end
        object frxDBSALITMINVITM_COMMENT: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Top = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSALITM
          DataSetName = 'frxDBSALITM'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPURITM."INVITM_COMMENT"]')
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Code')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Items')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 313.700990000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Qty')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Unit Price')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Price')
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Delivery')
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Comment')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 79.370130000000000000
        ParentFont = False
        Top = 374.173470000000000000
        Width = 718.110700000000000000
        object frxDBSALDue: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 41.574830000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSAL
          DataSetName = 'frxDBSAL'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPUR."Due"]')
        end
        object frxDBSALTotal: TfrxMemoView
          AllowVectorExport = True
          Left = 461.102660000000000000
          Top = 15.118120000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSAL
          DataSetName = 'frxDBSAL'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPUR."Total"]')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 676.535870000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Top = 15.118120000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 370.393940000000000000
          Top = 41.574830000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Remaining')
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 540.472790000000000000
        Width = 718.110700000000000000
        DataSet = frxDBPURPAY
        DataSetName = 'frxDBPURPAY'
        RowCount = 0
        object frxDBSALPAYINVPAY_DATE: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSALPAY
          DataSetName = 'frxDBSALPAY'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPURPAY."INVPAY_DATE"]')
        end
        object frxDBSALPAYINVPAY_AMOUNT: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSALPAY
          DataSetName = 'frxDBSALPAY'
          DisplayFormat.FormatStr = '%2.0m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPURPAY."INVPAY_AMOUNT"]')
        end
        object frxDBSALPAYINVPAY_COMMENT: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 3.779530000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSet = frxDBSALPAY
          DataSetName = 'frxDBSALPAY'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPURPAY."INVPAY_COMMENT"]')
        end
      end
      object Header3: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 476.220780000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Detail Paiement')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 52.913420000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Date')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 18.897650000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Amount')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Comment')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 623.622450000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 7.559060000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page]')
        end
        object Date: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Date]')
        end
        object Time: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Time]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 7.559060000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Page')
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 661.417750000000000000
          Top = 7.559060000000000000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '/')
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 676.535870000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object TotalPages: TfrxMemoView
          AllowVectorExport = True
          Left = 668.976810000000000000
          Top = 7.559060000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[TotalPages#]')
        end
      end
    end
  end
  object QTODO_NEG: TFDQuery
    Connection = Connect
    SQL.Strings = (
      'SELECT *'
      'FROM   dbo.VTODONEG')
    Left = 640
    Top = 360
    object QTODO_NEGITM_ID: TLargeintField
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      Required = True
      Visible = False
    end
    object QTODO_NEGITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object QTODO_NEGITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 9
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object QTODO_NEGITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object QTODO_NEGITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 25
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object QTODO_NEGQty: TLargeintField
      DisplayWidth = 5
      FieldName = 'Qty'
      Origin = 'Qty'
      ReadOnly = True
    end
    object QTODO_NEGTotDefPur: TCurrencyField
      DisplayWidth = 15
      FieldName = 'TotDefPur'
      Origin = 'TotDefPur'
      ReadOnly = True
    end
    object QTODO_NEGTotDefSal: TCurrencyField
      DisplayWidth = 15
      FieldName = 'TotDefSal'
      Origin = 'TotDefSal'
      ReadOnly = True
    end
  end
  object QTODO_UNK: TFDQuery
    Connection = Connect
    SQL.Strings = (
      'SELECT * FROM VTODOUNK')
    Left = 640
    Top = 416
    object QTODO_UNKITM_ID: TLargeintField
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      Required = True
      Visible = False
    end
    object QTODO_UNKITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object QTODO_UNKITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 9
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object QTODO_UNKITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object QTODO_UNKITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 25
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object QTODO_UNKQty: TLargeintField
      DisplayWidth = 5
      FieldName = 'Qty'
      Origin = 'Qty'
      ReadOnly = True
    end
    object QTODO_UNKTotDefPur: TCurrencyField
      DisplayWidth = 15
      FieldName = 'TotDefPur'
      Origin = 'TotDefPur'
      ReadOnly = True
    end
    object QTODO_UNKTotDefSal: TCurrencyField
      DisplayWidth = 15
      FieldName = 'TotDefSal'
      Origin = 'TotDefSal'
      ReadOnly = True
    end
  end
  object QTODO_SALDLV: TFDQuery
    Connection = Connect
    SQL.Strings = (
      'SELECT'
      'dbo.INV.INV_ID, '
      'dbo.VSALITM.ITM_ID, '
      'dbo.INV.INV_NUMBER, '
      'dbo.INV.INV_DATE, '
      'dbo.VSALITM.ITM_CP, '
      'dbo.VSALITM.ITM_CODE, '
      'dbo.VSALITM.ITM_INDICE, '
      'dbo.VSALITM.ITM_NAME, '
      'dbo.VSALITM.INVITM_QTY, '
      'dbo.CNT.CNT_FIRSTNAME, '
      'dbo.CNT.CNT_PHONE, '
      'dbo.CNT.CNT_ADDRESS'
      ''
      'FROM   dbo.CNT INNER JOIN'
      'dbo.INV ON dbo.CNT.CNT_ID = dbo.INV.INV_CNT_ID INNER JOIN'
      'dbo.VSALITM ON dbo.INV.INV_ID = dbo.VSALITM.INVITM_INV_ID'
      ''
      'WHERE (dbo.VSALITM.INVITM_DELIVERY <> '#39'Yes'#39')')
    Left = 640
    Top = 528
    object QTODO_SALDLVINV_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'INV_ID'
      Origin = 'INV_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
    object QTODO_SALDLVITM_ID: TLargeintField
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      Required = True
      Visible = False
    end
    object QTODO_SALDLVINV_NUMBER: TLargeintField
      DisplayLabel = 'Sal N'#176
      DisplayWidth = 5
      FieldName = 'INV_NUMBER'
      Origin = 'INV_NUMBER'
      Required = True
    end
    object QTODO_SALDLVINV_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'INV_DATE'
      Origin = 'INV_DATE'
      Required = True
    end
    object QTODO_SALDLVITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object QTODO_SALDLVITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 9
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object QTODO_SALDLVITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object QTODO_SALDLVITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 15
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object QTODO_SALDLVINVITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'INVITM_QTY'
      Origin = 'INVITM_QTY'
      Required = True
    end
    object QTODO_SALDLVCNT_FIRSTNAME: TWideStringField
      DisplayLabel = 'Delivery to'
      DisplayWidth = 10
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      FixedChar = True
    end
    object QTODO_SALDLVCNT_PHONE: TWideStringField
      DisplayLabel = 'Phone'
      DisplayWidth = 15
      FieldName = 'CNT_PHONE'
      Origin = 'CNT_PHONE'
      FixedChar = True
    end
    object QTODO_SALDLVCNT_ADDRESS: TWideStringField
      DisplayLabel = 'Address'
      DisplayWidth = 70
      FieldName = 'CNT_ADDRESS'
      Origin = 'CNT_ADDRESS'
      FixedChar = True
      Size = 100
    end
  end
  object DSTODO_NEG: TDataSource
    DataSet = QTODO_NEG
    OnDataChange = DSTODO_NEGDataChange
    Left = 736
    Top = 360
  end
  object DSTODO_UNK: TDataSource
    DataSet = QTODO_UNK
    OnDataChange = DSTODO_UNKDataChange
    Left = 736
    Top = 416
  end
  object DSTODO_SALDLV: TDataSource
    DataSet = QTODO_SALDLV
    Left = 728
    Top = 528
  end
  object QTODO_PURDLV: TFDQuery
    Connection = Connect
    SQL.Strings = (
      'SELECT '
      'dbo.INV.INV_ID,'
      'dbo.VPURITM.ITM_ID, '
      'dbo.INV.INV_NUMBER, '
      'dbo.INV.INV_DATE, '
      'dbo.VPURITM.ITM_CP, '
      'dbo.VPURITM.ITM_CODE, '
      'dbo.VPURITM.ITM_INDICE, '
      'dbo.VPURITM.ITM_NAME, '
      'dbo.VPURITM.INVITM_QTY, '
      'dbo.CNT.CNT_FIRSTNAME,'
      'dbo.CNT.CNT_PHONE, '
      'dbo.CNT.CNT_ADDRESS'
      ''
      'FROM   dbo.CNT INNER JOIN'
      'dbo.INV ON dbo.CNT.CNT_ID = dbo.INV.INV_CNT_ID INNER JOIN'
      'dbo.VPURITM ON dbo.INV.INV_ID = dbo.VPURITM.INVITM_INV_ID'
      ''
      'WHERE (dbo.VPURITM.INVITM_DELIVERY = '#39'No'#39')')
    Left = 640
    Top = 472
    object QTODO_PURDLVINV_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'INV_ID'
      Origin = 'INV_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
    object QTODO_PURDLVITM_ID: TLargeintField
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      Required = True
      Visible = False
    end
    object QTODO_PURDLVINV_NUMBER: TLargeintField
      DisplayLabel = 'PUR N'#176
      DisplayWidth = 5
      FieldName = 'INV_NUMBER'
      Origin = 'INV_NUMBER'
      Required = True
    end
    object QTODO_PURDLVINV_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'INV_DATE'
      Origin = 'INV_DATE'
      Required = True
    end
    object QTODO_PURDLVITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object QTODO_PURDLVITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 9
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object QTODO_PURDLVITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object QTODO_PURDLVITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 15
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object QTODO_PURDLVINVITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'INVITM_QTY'
      Origin = 'INVITM_QTY'
      Required = True
    end
    object QTODO_PURDLVCNT_FIRSTNAME: TWideStringField
      DisplayLabel = 'Delivery from'
      DisplayWidth = 10
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      FixedChar = True
    end
    object QTODO_PURDLVCNT_PHONE: TWideStringField
      DisplayLabel = 'Phone'
      DisplayWidth = 15
      FieldName = 'CNT_PHONE'
      Origin = 'CNT_PHONE'
      FixedChar = True
    end
    object QTODO_PURDLVCNT_ADDRESS: TWideStringField
      DisplayLabel = 'Address'
      DisplayWidth = 70
      FieldName = 'CNT_ADDRESS'
      Origin = 'CNT_ADDRESS'
      FixedChar = True
      Size = 100
    end
  end
  object DSTODO_PURDLV: TDataSource
    DataSet = QTODO_PURDLV
    Left = 728
    Top = 472
  end
  object QTODO_SALPAY: TFDQuery
    Connection = Connect
    SQL.Strings = (
      'SELECT '
      'dbo.VSAL.INV_ID, '
      'dbo.VSAL.INV_NUMBER, '
      'dbo.CNT.CNT_FIRSTNAME, '
      'dbo.VSAL.INV_DATE, '
      'dbo.VSAL.Due, '
      'dbo.CNT.CNT_PHONE, '
      'dbo.CNT.CNT_ADDRESS'
      ''
      'FROM dbo.VSAL INNER JOIN'
      'dbo.CNT ON dbo.VSAL.INV_CNT_ID = dbo.CNT.CNT_ID'
      ''
      'WHERE (dbo.VSAL.Due <> 0)'
      ''
      'ORDER BY dbo.VSAL.INV_NUMBER')
    Left = 640
    Top = 640
    object QTODO_SALPAYINV_ID: TLargeintField
      FieldName = 'INV_ID'
      Origin = 'INV_ID'
      Required = True
      Visible = False
    end
    object QTODO_SALPAYINV_NUMBER: TLargeintField
      DisplayLabel = 'Sale N'#176
      DisplayWidth = 7
      FieldName = 'INV_NUMBER'
      Origin = 'INV_NUMBER'
      Required = True
    end
    object QTODO_SALPAYCNT_FIRSTNAME: TWideStringField
      DisplayLabel = 'Client'
      DisplayWidth = 10
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      FixedChar = True
    end
    object QTODO_SALPAYDue: TCurrencyField
      DisplayWidth = 15
      FieldName = 'Due'
      Origin = 'Due'
      ReadOnly = True
    end
    object QTODO_SALPAYINV_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'INV_DATE'
      Origin = 'INV_DATE'
      Required = True
    end
    object QTODO_SALPAYCNT_PHONE: TWideStringField
      DisplayLabel = 'Phone'
      DisplayWidth = 15
      FieldName = 'CNT_PHONE'
      Origin = 'CNT_PHONE'
      FixedChar = True
    end
  end
  object DSTODO_SALPAY: TDataSource
    DataSet = QTODO_SALPAY
    Left = 728
    Top = 640
  end
  object DSTODO_PURPAY: TDataSource
    DataSet = QTODO_PURPAY
    Left = 728
    Top = 584
  end
  object QTODO_PURPAY: TFDQuery
    Connection = Connect
    SQL.Strings = (
      'SELECT '
      'dbo.VPUR.INV_ID, '
      'dbo.VPUR.INV_NUMBER, '
      'dbo.CNT.CNT_FIRSTNAME, '
      'dbo.VPUR.INV_DATE, '
      'dbo.VPUR.Due, '
      'dbo.CNT.CNT_PHONE, '
      'dbo.CNT.CNT_ADDRESS'
      ''
      'FROM dbo.VPUR INNER JOIN'
      'dbo.CNT ON dbo.VPUR.INV_CNT_ID = dbo.CNT.CNT_ID'
      ''
      'WHERE (dbo.VPUR.Due <> 0)'
      ''
      'ORDER BY dbo.VPUR.INV_NUMBER')
    Left = 640
    Top = 584
    object QTODO_PURPAYINV_ID: TLargeintField
      FieldName = 'INV_ID'
      Origin = 'INV_ID'
      Required = True
      Visible = False
    end
    object QTODO_PURPAYINV_NUMBER: TLargeintField
      DisplayLabel = 'Pur N'#176
      DisplayWidth = 8
      FieldName = 'INV_NUMBER'
      Origin = 'INV_NUMBER'
      Required = True
    end
    object QTODO_PURPAYCNT_FIRSTNAME: TWideStringField
      DisplayLabel = 'Supplier'
      DisplayWidth = 10
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      FixedChar = True
    end
    object QTODO_PURPAYDue: TCurrencyField
      DisplayWidth = 15
      FieldName = 'Due'
      Origin = 'Due'
      ReadOnly = True
    end
    object QTODO_PURPAYINV_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'INV_DATE'
      Origin = 'INV_DATE'
      Required = True
    end
    object QTODO_PURPAYCNT_PHONE: TWideStringField
      DisplayLabel = 'Phone'
      DisplayWidth = 15
      FieldName = 'CNT_PHONE'
      Origin = 'CNT_PHONE'
      FixedChar = True
    end
  end
  object frxDBPUR: TfrxDBDataset
    RangeBegin = rbCurrent
    RangeEnd = reCurrent
    UserName = 'frxDBPUR'
    CloseDataSource = False
    DataSet = TPUR
    BCDToCurrency = False
    DataSetOptions = []
    Left = 536
    Top = 128
  end
  object frxDBPURITM: TfrxDBDataset
    UserName = 'frxDBPURITM'
    CloseDataSource = False
    DataSet = TPURITM
    BCDToCurrency = False
    DataSetOptions = []
    Left = 632
    Top = 128
  end
  object frxDBPURPAY: TfrxDBDataset
    UserName = 'frxDBPURPAY'
    CloseDataSource = False
    DataSet = TPURPAY
    BCDToCurrency = False
    DataSetOptions = []
    Left = 728
    Top = 128
  end
  object TITM: TFDQuery
    BeforeEdit = TITMBeforeEdit
    BeforeDelete = TITMBeforeDelete
    Connection = Connect
    FormatOptions.AssignedValues = [fvSortOptions]
    SQL.Strings = (
      'SELECT '
      'dbo.VITM.ITM_CP, '
      'dbo.VITM.ITM_CODE, '
      'dbo.VITM.ITM_INDICE, '
      'dbo.GRP.GRP_NAME, '
      'dbo.VITM.ITM_NAME, '
      'dbo.VITM.ITM_UNIT, '
      'dbo.VITM.ITM_PURCHASE, '
      'dbo.VITM.ITM_SALE, '
      'dbo.VITM.PUR, '
      'dbo.VITM.SAL, '
      'dbo.VITM.LF, '
      'dbo.VITM.ASM, '
      'dbo.VITM.USED, '
      'dbo.VITM.Stock, '
      'dbo.VITM.ITM_COMMENT, '
      'dbo.VITM.ITM_ID, '
      'dbo.VITM.ITM_GRP_ID'
      
        'FROM dbo.VITM INNER JOIN dbo.GRP ON dbo.VITM.ITM_GRP_ID = dbo.GR' +
        'P.GRP_ID'
      'ORDER BY ITM_CODE, ITM_ID')
    Left = 24
    Top = 184
    object TITMITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object TITMITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 9
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object TITMITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object TITMGRP_NAME: TWideStringField
      DisplayLabel = 'Group'
      DisplayWidth = 14
      FieldName = 'GRP_NAME'
      Origin = 'GRP_NAME'
      FixedChar = True
    end
    object TITMITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 30
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object TITMITM_UNIT: TWideStringField
      DisplayLabel = 'Unit'
      FieldName = 'ITM_UNIT'
      Origin = 'ITM_UNIT'
      FixedChar = True
      Size = 4
    end
    object TITMITM_PURCHASE: TCurrencyField
      DisplayLabel = 'Default purchase'
      DisplayWidth = 15
      FieldName = 'ITM_PURCHASE'
      Origin = 'ITM_PURCHASE'
    end
    object TITMITM_SALE: TCurrencyField
      DisplayLabel = 'Default Sale'
      DisplayWidth = 15
      FieldName = 'ITM_SALE'
      Origin = 'ITM_SALE'
    end
    object TITMPUR: TLargeintField
      DisplayWidth = 5
      FieldName = 'PUR'
      Origin = 'PUR'
    end
    object TITMSAL: TLargeintField
      DisplayWidth = 5
      FieldName = 'SAL'
      Origin = 'SAL'
    end
    object TITMLF: TLargeintField
      DisplayWidth = 5
      FieldName = 'LF'
      Origin = 'LF'
    end
    object TITMASM: TLargeintField
      DisplayWidth = 5
      FieldName = 'ASM'
      Origin = 'ASM'
    end
    object TITMUSED: TLargeintField
      DisplayWidth = 5
      FieldName = 'USED'
      Origin = 'USED'
    end
    object TITMStock: TLargeintField
      DisplayWidth = 5
      FieldName = 'Stock'
      Origin = 'Stock'
      ReadOnly = True
    end
    object TITMITM_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 30
      FieldName = 'ITM_COMMENT'
      Origin = 'ITM_COMMENT'
      FixedChar = True
      Size = 150
    end
    object TITMITM_ID: TLargeintField
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      Required = True
      Visible = False
    end
    object TITMITM_GRP_ID: TLargeintField
      FieldName = 'ITM_GRP_ID'
      Origin = 'ITM_GRP_ID'
      Required = True
      Visible = False
    end
  end
  object TLFITM: TFDQuery
    BeforeInsert = TLFITMBeforeInsert
    BeforeEdit = TLFITMBeforeEdit
    BeforeDelete = TLFITMBeforeDelete
    AfterDelete = TLFITMAfterDelete
    Connection = Connect
    SQL.Strings = (
      'SELECT        '
      'dbo.LF.LF_CATEGORY, '
      'dbo.LFITM.LFITM_QTY, '
      'dbo.LFITM.LFITM_COMMENT, '
      'dbo.LFITM.LFITM_DATE, '
      'dbo.LFITM.LFITM_ID, '
      'dbo.LFITM.LFITM_ITM_ID, '
      'dbo.GRP.GRP_NAME, '
      'dbo.VITM.ITM_CP, '
      'dbo.VITM.ITM_CODE, '
      'dbo.VITM.ITM_INDICE, '
      'dbo.VITM.ITM_NAME, '
      'dbo.VITM.ITM_PURCHASE, '
      'dbo.VITM.ITM_SALE, '
      'dbo.VITM.PUR, '
      'dbo.VITM.SAL, '
      'dbo.VITM.LF, '
      'dbo.VITM.ASM, '
      'dbo.VITM.USED, '
      'dbo.VITM.Stock, '
      'dbo.GRP.GRP_ID, '
      'dbo.LF.LF_ID '
      ''
      'FROM dbo.LFITM '
      'INNER JOIN dbo.VITM ON dbo.LFITM.LFITM_ITM_ID = dbo.VITM.ITM_ID '
      'INNER JOIN dbo.GRP ON dbo.VITM.ITM_GRP_ID = dbo.GRP.GRP_ID '
      'INNER JOIN dbo.LF ON dbo.LFITM.LFITM_LF_ID = dbo.LF.LF_ID'
      ''
      'ORDER BY dbo.VITM.ITM_CODE')
    Left = 24
    Top = 648
    object TLFITMLF_CATEGORY: TWideStringField
      DisplayLabel = 'Category'
      FieldName = 'LF_CATEGORY'
      Origin = 'LF_CATEGORY'
      Required = True
      FixedChar = True
    end
    object TLFITMITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object TLFITMITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 9
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      ReadOnly = True
      Required = True
    end
    object TLFITMITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object TLFITMGRP_NAME: TWideStringField
      DisplayLabel = 'Group'
      DisplayWidth = 15
      FieldName = 'GRP_NAME'
      Origin = 'GRP_NAME'
      ReadOnly = True
      FixedChar = True
    end
    object TLFITMITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 35
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      ReadOnly = True
      FixedChar = True
      Size = 60
    end
    object TLFITMLFITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'LFITM_QTY'
      Origin = 'LFITM_QTY'
      Required = True
    end
    object TLFITMITM_PURCHASE: TCurrencyField
      DisplayLabel = 'Default Purchase'
      DisplayWidth = 15
      FieldName = 'ITM_PURCHASE'
      Origin = 'ITM_PURCHASE'
      ReadOnly = True
    end
    object TLFITMITM_SALE: TCurrencyField
      DisplayLabel = 'Default Sale'
      DisplayWidth = 15
      FieldName = 'ITM_SALE'
      Origin = 'ITM_SALE'
      ReadOnly = True
    end
    object TLFITMPUR: TLargeintField
      DisplayWidth = 5
      FieldName = 'PUR'
      Origin = 'PUR'
      ReadOnly = True
    end
    object TLFITMSAL: TLargeintField
      DisplayWidth = 5
      FieldName = 'SAL'
      Origin = 'SAL'
      ReadOnly = True
    end
    object TLFITMASM: TLargeintField
      DisplayWidth = 5
      FieldName = 'ASM'
      Origin = 'ASM'
      ReadOnly = True
    end
    object TLFITMUSED: TLargeintField
      DisplayWidth = 5
      FieldName = 'USED'
      Origin = 'USED'
      ReadOnly = True
    end
    object TLFITMLF: TLargeintField
      DisplayWidth = 5
      FieldName = 'LF'
      Origin = 'LF'
    end
    object TLFITMStock: TLargeintField
      DisplayWidth = 5
      FieldName = 'Stock'
      Origin = 'Stock'
      ReadOnly = True
    end
    object TLFITMLFITM_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'LFITM_DATE'
      Origin = 'LFITM_DATE'
      Required = True
    end
    object TLFITMLFITM_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 25
      FieldName = 'LFITM_COMMENT'
      Origin = 'LFITM_COMMENT'
      FixedChar = True
      Size = 50
    end
    object TLFITMGRP_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'GRP_ID'
      Origin = 'GRP_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
    object TLFITMLFITM_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'LFITM_ID'
      Origin = 'LFITM_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object TLFITMLFITM_ITM_ID: TLargeintField
      FieldName = 'LFITM_ITM_ID'
      Origin = 'LFITM_ITM_ID'
      Required = True
      Visible = False
    end
    object TLFITMLF_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'LF_ID'
      Origin = 'LF_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
  end
  object TSALITM: TFDQuery
    BeforeInsert = TSALITMBeforeInsert
    BeforeEdit = TSALITMBeforeEdit
    BeforeDelete = TSALITMBeforeDelete
    Connection = Connect
    SQL.Strings = (
      
        'SELECT        INVITM_ID, INVITM_INV_ID, INVITM_ITM_ID, ITM_GRP_I' +
        'D, GRP_NAME, ITM_CP, ITM_CODE, ITM_INDICE, ITM_NAME, INVITM_AMOU' +
        'NT, INVITM_QTY, Total, INVITM_COMMENT, INVITM_DELIVERY, '
      
        '                         ITM_PURCHASE, ITM_SALE, PUR, SAL, LF, A' +
        'SM, USED, Stock, Profit, {fn IF (ITM_CP='#39'V'#39',0,Total - (INVITM_QT' +
        'Y * ITM_SALE)) } AS Total_Discount'
      'FROM            dbo.VSALITM'
      'WHERE INVITM_INV_ID = :INVID'
      'ORDER BY INVITM_ID')
    Left = 24
    Top = 480
    ParamData = <
      item
        Name = 'INVID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TSALITMINVITM_ID: TLargeintField
      FieldName = 'INVITM_ID'
      Origin = 'INVITM_ID'
      Required = True
      Visible = False
    end
    object TSALITMINVITM_INV_ID: TLargeintField
      FieldName = 'INVITM_INV_ID'
      Origin = 'INVITM_INV_ID'
      Required = True
      Visible = False
    end
    object TSALITMINVITM_ITM_ID: TLargeintField
      FieldName = 'INVITM_ITM_ID'
      Origin = 'INVITM_ITM_ID'
      Required = True
      Visible = False
    end
    object TSALITMITM_GRP_ID: TLargeintField
      FieldName = 'ITM_GRP_ID'
      Origin = 'ITM_GRP_ID'
      Required = True
      Visible = False
    end
    object TSALITMITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object TSALITMITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 9
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      ReadOnly = True
      Required = True
    end
    object TSALITMITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object TSALITMGRP_NAME: TWideStringField
      DisplayLabel = 'Group'
      DisplayWidth = 15
      FieldName = 'GRP_NAME'
      Origin = 'GRP_NAME'
      FixedChar = True
    end
    object TSALITMITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 25
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      ReadOnly = True
      FixedChar = True
      Size = 60
    end
    object TSALITMINVITM_AMOUNT: TCurrencyField
      DisplayLabel = 'Amount'
      DisplayWidth = 15
      FieldName = 'INVITM_AMOUNT'
      Origin = 'INVITM_AMOUNT'
      Required = True
    end
    object TSALITMINVITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'INVITM_QTY'
      Origin = 'INVITM_QTY'
      Required = True
    end
    object TSALITMTotal: TCurrencyField
      DisplayWidth = 15
      FieldName = 'Total'
      Origin = 'Total'
      ReadOnly = True
    end
    object TSALITMTotal_Discount: TCurrencyField
      DisplayLabel = 'Total Discount'
      DisplayWidth = 15
      FieldName = 'Total_Discount'
      Origin = 'Total_Discount'
      ReadOnly = True
    end
    object TSALITMINVITM_DELIVERY: TWideStringField
      DisplayLabel = 'Delivery'
      DisplayWidth = 6
      FieldName = 'INVITM_DELIVERY'
      Origin = 'INVITM_DELIVERY'
      Required = True
      FixedChar = True
      Size = 10
    end
    object TSALITMProfit: TCurrencyField
      DisplayWidth = 15
      FieldName = 'Profit'
      Origin = 'Profit'
      ReadOnly = True
    end
    object TSALITMPUR: TLargeintField
      DisplayWidth = 5
      FieldName = 'PUR'
      Origin = 'PUR'
    end
    object TSALITMSAL: TLargeintField
      DisplayWidth = 5
      FieldName = 'SAL'
      Origin = 'SAL'
    end
    object TSALITMLF: TLargeintField
      DisplayWidth = 5
      FieldName = 'LF'
      Origin = 'LF'
    end
    object TSALITMASM: TLargeintField
      DisplayWidth = 5
      FieldName = 'ASM'
      Origin = 'ASM'
    end
    object TSALITMUSED: TLargeintField
      DisplayWidth = 5
      FieldName = 'USED'
      Origin = 'USED'
    end
    object TSALITMStock: TLargeintField
      DisplayWidth = 5
      FieldName = 'Stock'
      Origin = 'Stock'
      ReadOnly = True
    end
    object TSALITMITM_PURCHASE: TCurrencyField
      DisplayLabel = 'Default Purchase'
      DisplayWidth = 15
      FieldName = 'ITM_PURCHASE'
      Origin = 'ITM_PURCHASE'
      ReadOnly = True
    end
    object TSALITMITM_SALE: TCurrencyField
      DisplayLabel = 'Default Sale'
      DisplayWidth = 15
      FieldName = 'ITM_SALE'
      Origin = 'ITM_SALE'
      ReadOnly = True
    end
    object TSALITMINVITM_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 20
      FieldName = 'INVITM_COMMENT'
      Origin = 'INVITM_COMMENT'
      FixedChar = True
      Size = 200
    end
  end
  object TPURITM: TFDQuery
    BeforeInsert = TPURITMBeforeInsert
    BeforeEdit = TPURITMBeforeEdit
    BeforeDelete = TPURITMBeforeDelete
    Connection = Connect
    SQL.Strings = (
      
        'SELECT        INVITM_ID, INVITM_INV_ID, INVITM_ITM_ID, ITM_GRP_I' +
        'D, GRP_NAME, ITM_CP, ITM_CODE, ITM_INDICE, ITM_NAME, INVITM_AMOU' +
        'NT, INVITM_QTY, Total, INVITM_COMMENT, INVITM_DELIVERY, '
      
        '                         ITM_PURCHASE, ITM_SALE, PUR, SAL, LF, A' +
        'SM, USED, Stock, Profit, {fn IF ( ITM_CP = '#39'V'#39', 0, Total - (INVI' +
        'TM_QTY * ITM_PURCHASE)) } AS Total_Gap'
      'FROM            dbo.VPURITM'
      'WHERE INVITM_INV_ID = :INVID'
      'ORDER BY INVITM_ID'
      '')
    Left = 24
    Top = 312
    ParamData = <
      item
        Name = 'INVID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TPURITMINVITM_ID: TLargeintField
      FieldName = 'INVITM_ID'
      Origin = 'INVITM_ID'
      Required = True
      Visible = False
    end
    object TPURITMINVITM_INV_ID: TLargeintField
      FieldName = 'INVITM_INV_ID'
      Origin = 'INVITM_INV_ID'
      Required = True
      Visible = False
    end
    object TPURITMINVITM_ITM_ID: TLargeintField
      FieldName = 'INVITM_ITM_ID'
      Origin = 'INVITM_ITM_ID'
      Required = True
      Visible = False
    end
    object TPURITMITM_GRP_ID: TLargeintField
      FieldName = 'ITM_GRP_ID'
      Origin = 'ITM_GRP_ID'
      Required = True
      Visible = False
    end
    object TPURITMITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object TPURITMITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 9
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      ReadOnly = True
      Required = True
    end
    object TPURITMITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object TPURITMGRP_NAME: TWideStringField
      DisplayLabel = 'Group'
      DisplayWidth = 15
      FieldName = 'GRP_NAME'
      Origin = 'GRP_NAME'
      FixedChar = True
    end
    object TPURITMITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 25
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      ReadOnly = True
      FixedChar = True
      Size = 60
    end
    object TPURITMINVITM_AMOUNT: TCurrencyField
      DisplayLabel = 'Amount'
      DisplayWidth = 15
      FieldName = 'INVITM_AMOUNT'
      Origin = 'INVITM_AMOUNT'
      Required = True
    end
    object TPURITMINVITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'INVITM_QTY'
      Origin = 'INVITM_QTY'
      Required = True
    end
    object TPURITMTotal: TCurrencyField
      DisplayWidth = 15
      FieldName = 'Total'
      Origin = 'Total'
      ReadOnly = True
    end
    object TPURITMTotal_Gap: TCurrencyField
      DisplayLabel = 'Total Gap'
      DisplayWidth = 15
      FieldName = 'Total_Gap'
      Origin = 'Total_Gap'
      ReadOnly = True
    end
    object TPURITMINVITM_DELIVERY: TWideStringField
      DisplayLabel = 'Delivery'
      DisplayWidth = 6
      FieldName = 'INVITM_DELIVERY'
      Origin = 'INVITM_DELIVERY'
      Required = True
      FixedChar = True
      Size = 10
    end
    object TPURITMProfit: TCurrencyField
      DisplayWidth = 15
      FieldName = 'Profit'
      Origin = 'Profit'
      ReadOnly = True
    end
    object TPURITMPUR: TLargeintField
      DisplayWidth = 5
      FieldName = 'PUR'
      Origin = 'PUR'
    end
    object TPURITMSAL: TLargeintField
      DisplayWidth = 5
      FieldName = 'SAL'
      Origin = 'SAL'
    end
    object TPURITMLF: TLargeintField
      DisplayWidth = 5
      FieldName = 'LF'
      Origin = 'LF'
    end
    object TPURITMASM: TLargeintField
      DisplayWidth = 5
      FieldName = 'ASM'
      Origin = 'ASM'
    end
    object TPURITMUSED: TLargeintField
      DisplayWidth = 5
      FieldName = 'USED'
      Origin = 'USED'
    end
    object TPURITMStock: TLargeintField
      DisplayWidth = 5
      FieldName = 'Stock'
      Origin = 'Stock'
      ReadOnly = True
    end
    object TPURITMITM_PURCHASE: TCurrencyField
      DisplayLabel = 'Default Purchase'
      DisplayWidth = 15
      FieldName = 'ITM_PURCHASE'
      Origin = 'ITM_PURCHASE'
      ReadOnly = True
    end
    object TPURITMITM_SALE: TCurrencyField
      DisplayLabel = 'Default Sale'
      DisplayWidth = 15
      FieldName = 'ITM_SALE'
      Origin = 'ITM_SALE'
    end
    object TPURITMINVITM_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 20
      FieldName = 'INVITM_COMMENT'
      Origin = 'INVITM_COMMENT'
      FixedChar = True
      Size = 200
    end
  end
  object WITM_NEXTIND: TFDQuery
    Connection = Connect
    SQL.Strings = (
      
        'SELECT        TOP(1) dbo.ITM.ITM_CP, dbo.ITM.ITM_CODE, dbo.ITM.I' +
        'TM_INDICE'
      'FROM            dbo.INVITM INNER JOIN'
      
        '                         dbo.ITM ON dbo.INVITM.INVITM_ITM_ID = d' +
        'bo.ITM.ITM_ID'
      'WHERE dbo.ITM.ITM_CODE like :CODE'
      'ORDER BY dbo.ITM.ITM_INDICE DESC')
    Left = 872
    Top = 832
    ParamData = <
      item
        Name = 'CODE'
        ParamType = ptInput
      end>
    object WITM_NEXTINDITM_CP: TWideStringField
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object WITM_NEXTINDITM_CODE: TLargeintField
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object WITM_NEXTINDITM_INDICE: TWideStringField
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
  end
  object VITM: TFDQuery
    BeforeEdit = TITMBeforeEdit
    BeforeDelete = TITMBeforeDelete
    Connection = Connect
    FormatOptions.AssignedValues = [fvSortOptions]
    SQL.Strings = (
      
        'SELECT dbo.VITM.ITM_CP, dbo.VITM.ITM_CODE, dbo.VITM.ITM_INDICE, ' +
        'dbo.VITM.ITM_NAME, dbo.VITM.ITM_UNIT, '
      '                  dbo.VITM.Stock, dbo.VITM.ITM_COMMENT, '
      '                  dbo.VITM.ITM_ID'
      'FROM     dbo.VITM '
      
        'WHERE  (dbo.VITM.PUR IS NULL) AND (dbo.VITM.SAL IS NULL) AND (db' +
        'o.VITM.ASM IS NULL) AND (dbo.VITM.LF IS NULL) AND (dbo.VITM.USED' +
        ' IS NULL)'
      'ORDER BY ITM_CODE'
      '')
    Left = 312
    Top = 184
    object VITMITM_CP: TWideStringField
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object VITMITM_CODE: TLargeintField
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object VITMITM_INDICE: TWideStringField
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object VITMITM_NAME: TWideStringField
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object VITMITM_UNIT: TWideStringField
      FieldName = 'ITM_UNIT'
      Origin = 'ITM_UNIT'
      FixedChar = True
      Size = 4
    end
    object VITMStock: TLargeintField
      FieldName = 'Stock'
      Origin = 'Stock'
      ReadOnly = True
    end
    object VITMITM_COMMENT: TWideStringField
      FieldName = 'ITM_COMMENT'
      Origin = 'ITM_COMMENT'
      FixedChar = True
      Size = 150
    end
    object VITMITM_ID: TLargeintField
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      Required = True
    end
  end
  object DWINV: TDataSource
    DataSet = WINV
    Left = 304
    Top = 352
  end
  object QMOVPUR: TFDQuery
    Connection = Connect
    SQL.Strings = (
      'SELECT '
      'INV_DATE,'
      'INV_NUMBER,'
      'CNT_FIRSTNAME,'
      'ITM_CP,'
      'ITM_CODE,'
      'ITM_INDICE,'
      'GRP_NAME,'
      'ITM_NAME,'
      'INVITM_QTY,'
      'INVITM_AMOUNT,'
      
        '{fn IF( ITM_CP = '#39'V'#39' , 0, (INVITM_QTY * INVITM_AMOUNT) - (INVITM' +
        '_QTY * ITM_PURCHASE) ) } AS Total_Gap,'
      'ITM_PURCHASE,'
      'ITM_SALE,'
      'PUR,'
      'SAL,'
      'LF,'
      'ASM,'
      'USED,'
      'Stock,'
      'ITM_COMMENT,'
      'INV_COMMENT,'
      'INVITM_COMMENT,'
      'ITM_GRP_ID,'
      'INV_CNT_ID,'
      'ITM_ID,'
      'INV_ID,'
      'INVITM_ID'
      ''
      'FROM dbo.VMOVPUR')
    Left = 344
    Top = 408
    object QMOVPURINV_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'INV_DATE'
      Origin = 'INV_DATE'
      Required = True
    end
    object QMOVPURINV_NUMBER: TLargeintField
      DisplayLabel = 'PUR N'#176
      DisplayWidth = 5
      FieldName = 'INV_NUMBER'
      Origin = 'INV_NUMBER'
      Required = True
    end
    object QMOVPURCNT_FIRSTNAME: TWideStringField
      DisplayLabel = 'Supplier'
      DisplayWidth = 15
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      Required = True
      FixedChar = True
    end
    object QMOVPURITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object QMOVPURITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 9
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object QMOVPURITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object QMOVPURGRP_NAME: TWideStringField
      DisplayLabel = 'Group'
      DisplayWidth = 15
      FieldName = 'GRP_NAME'
      Origin = 'GRP_NAME'
      FixedChar = True
    end
    object QMOVPURITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 25
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object QMOVPURINVITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'INVITM_QTY'
      Origin = 'INVITM_QTY'
      Required = True
    end
    object QMOVPURINVITM_AMOUNT: TCurrencyField
      DisplayLabel = 'Amount'
      DisplayWidth = 15
      FieldName = 'INVITM_AMOUNT'
      Origin = 'INVITM_AMOUNT'
      Required = True
    end
    object QMOVPURTotal_Gap: TCurrencyField
      DisplayWidth = 15
      FieldName = 'Total_Gap'
      Origin = 'Total_Gap'
      ReadOnly = True
    end
    object QMOVPURITM_PURCHASE: TCurrencyField
      DisplayLabel = 'Default Purchase'
      DisplayWidth = 15
      FieldName = 'ITM_PURCHASE'
      Origin = 'ITM_PURCHASE'
    end
    object QMOVPURITM_SALE: TCurrencyField
      DisplayLabel = 'Default Sale'
      DisplayWidth = 15
      FieldName = 'ITM_SALE'
      Origin = 'ITM_SALE'
    end
    object QMOVPURPUR: TLargeintField
      DisplayWidth = 5
      FieldName = 'PUR'
      Origin = 'PUR'
    end
    object QMOVPURSAL: TLargeintField
      DisplayWidth = 5
      FieldName = 'SAL'
      Origin = 'SAL'
    end
    object QMOVPURLF: TLargeintField
      DisplayWidth = 5
      FieldName = 'LF'
      Origin = 'LF'
    end
    object QMOVPURASM: TLargeintField
      DisplayWidth = 5
      FieldName = 'ASM'
      Origin = 'ASM'
    end
    object QMOVPURUSED: TLargeintField
      DisplayWidth = 5
      FieldName = 'USED'
      Origin = 'USED'
    end
    object QMOVPURStock: TLargeintField
      DisplayWidth = 5
      FieldName = 'Stock'
      Origin = 'Stock'
      ReadOnly = True
    end
    object QMOVPURITM_COMMENT: TWideStringField
      DisplayLabel = 'Item Comment'
      DisplayWidth = 20
      FieldName = 'ITM_COMMENT'
      Origin = 'ITM_COMMENT'
      FixedChar = True
      Size = 150
    end
    object QMOVPURINV_COMMENT: TWideStringField
      DisplayLabel = 'Purchase Comment'
      DisplayWidth = 20
      FieldName = 'INV_COMMENT'
      Origin = 'INV_COMMENT'
      FixedChar = True
      Size = 50
    end
    object QMOVPURINVITM_COMMENT: TWideStringField
      DisplayLabel = 'Item Purchase Comment'
      DisplayWidth = 20
      FieldName = 'INVITM_COMMENT'
      Origin = 'INVITM_COMMENT'
      FixedChar = True
      Size = 200
    end
    object QMOVPURITM_GRP_ID: TLargeintField
      FieldName = 'ITM_GRP_ID'
      Origin = 'ITM_GRP_ID'
      Required = True
      Visible = False
    end
    object QMOVPURINV_CNT_ID: TLargeintField
      FieldName = 'INV_CNT_ID'
      Origin = 'INV_CNT_ID'
      Required = True
      Visible = False
    end
    object QMOVPURITM_ID: TLargeintField
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      Required = True
      Visible = False
    end
    object QMOVPURINV_ID: TLargeintField
      FieldName = 'INV_ID'
      Origin = 'INV_ID'
      Required = True
      Visible = False
    end
    object QMOVPURINVITM_ID: TLargeintField
      FieldName = 'INVITM_ID'
      Origin = 'INVITM_ID'
      Required = True
      Visible = False
    end
  end
  object DMOVPUR: TDataSource
    DataSet = QMOVPUR
    OnDataChange = DMOVPURDataChange
    Left = 408
    Top = 408
  end
  object QMOVSAL: TFDQuery
    Connection = Connect
    SQL.Strings = (
      
        'SELECT *, { fn IF ( ITM_CP = '#39'V'#39', 0, (INVITM_QTY * INVITM_AMOUNT' +
        ') - (INVITM_QTY * ITM_SALE)) } AS Total_Discount  FROM dbo.VMOVS' +
        'AL')
    Left = 344
    Top = 464
    object QMOVSALINV_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'INV_DATE'
      Origin = 'INV_DATE'
      Required = True
    end
    object QMOVSALINV_NUMBER: TLargeintField
      DisplayLabel = 'SAL N'#176
      DisplayWidth = 5
      FieldName = 'INV_NUMBER'
      Origin = 'INV_NUMBER'
      Required = True
    end
    object QMOVSALCNT_FIRSTNAME: TWideStringField
      DisplayLabel = 'Client'
      DisplayWidth = 15
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      FixedChar = True
    end
    object QMOVSALITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object QMOVSALITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 9
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object QMOVSALITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object QMOVSALGRP_NAME: TWideStringField
      DisplayLabel = 'Group'
      DisplayWidth = 15
      FieldName = 'GRP_NAME'
      Origin = 'GRP_NAME'
      FixedChar = True
    end
    object QMOVSALITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 25
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object QMOVSALINVITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'INVITM_QTY'
      Origin = 'INVITM_QTY'
      Required = True
    end
    object QMOVSALINVITM_AMOUNT: TCurrencyField
      DisplayLabel = 'Amount'
      DisplayWidth = 15
      FieldName = 'INVITM_AMOUNT'
      Origin = 'INVITM_AMOUNT'
      Required = True
    end
    object QMOVSALTotal_Discount: TCurrencyField
      DisplayLabel = 'Total Discount'
      DisplayWidth = 15
      FieldName = 'Total_Discount'
      Origin = 'Total Discount'
      ReadOnly = True
    end
    object QMOVSALITM_PURCHASE: TCurrencyField
      DisplayLabel = 'Default Purchase'
      DisplayWidth = 15
      FieldName = 'ITM_PURCHASE'
      Origin = 'ITM_PURCHASE'
    end
    object QMOVSALITM_SALE: TCurrencyField
      DisplayLabel = 'Default Sale'
      DisplayWidth = 15
      FieldName = 'ITM_SALE'
      Origin = 'ITM_SALE'
    end
    object QMOVSALPUR: TLargeintField
      DisplayWidth = 5
      FieldName = 'PUR'
      Origin = 'PUR'
    end
    object QMOVSALSAL: TLargeintField
      DisplayWidth = 5
      FieldName = 'SAL'
      Origin = 'SAL'
    end
    object QMOVSALLF: TLargeintField
      DisplayWidth = 5
      FieldName = 'LF'
      Origin = 'LF'
    end
    object QMOVSALASM: TLargeintField
      DisplayWidth = 5
      FieldName = 'ASM'
      Origin = 'ASM'
    end
    object QMOVSALUSED: TLargeintField
      DisplayWidth = 5
      FieldName = 'USED'
      Origin = 'USED'
    end
    object QMOVSALStock: TLargeintField
      DisplayWidth = 5
      FieldName = 'Stock'
      Origin = 'Stock'
      ReadOnly = True
    end
    object QMOVSALITM_COMMENT: TWideStringField
      DisplayLabel = 'Item Comment'
      DisplayWidth = 20
      FieldName = 'ITM_COMMENT'
      Origin = 'ITM_COMMENT'
      FixedChar = True
      Size = 150
    end
    object QMOVSALINV_COMMENT: TWideStringField
      DisplayLabel = 'Sale Comment'
      DisplayWidth = 20
      FieldName = 'INV_COMMENT'
      Origin = 'INV_COMMENT'
      FixedChar = True
      Size = 50
    end
    object QMOVSALINVITM_COMMENT: TWideStringField
      DisplayLabel = 'Item Sale Comment'
      DisplayWidth = 20
      FieldName = 'INVITM_COMMENT'
      Origin = 'INVITM_COMMENT'
      FixedChar = True
      Size = 200
    end
    object QMOVSALITM_GRP_ID: TLargeintField
      FieldName = 'ITM_GRP_ID'
      Origin = 'ITM_GRP_ID'
      Required = True
      Visible = False
    end
    object QMOVSALINV_CNT_ID: TLargeintField
      FieldName = 'INV_CNT_ID'
      Origin = 'INV_CNT_ID'
      Required = True
      Visible = False
    end
    object QMOVSALITM_ID: TLargeintField
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      Required = True
      Visible = False
    end
    object QMOVSALINV_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'INV_ID'
      Origin = 'INV_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object QMOVSALINVITM_ID: TLargeintField
      FieldName = 'INVITM_ID'
      Origin = 'INVITM_ID'
      Required = True
      Visible = False
    end
  end
  object DMOVSAL: TDataSource
    DataSet = QMOVSAL
    OnDataChange = DMOVSALDataChange
    Left = 408
    Top = 464
  end
  object TASM: TFDQuery
    BeforeInsert = TASMBeforeInsert
    BeforeEdit = TASMBeforeEdit
    BeforeDelete = TASMBeforeDelete
    Connection = Connect
    SQL.Strings = (
      
        'SELECT        dbo.ASM.ASM_ID, dbo.ASM.ASM_ITM_ID, dbo.ASM.ASM_IT' +
        'M_QTY, dbo.ASM.ASM_DATE, dbo.ASM.ASM_COMMENT, dbo.ITM.ITM_CP, db' +
        'o.ITM.ITM_CODE, dbo.ITM.ITM_INDICE, '
      
        '                         dbo.ITM.ITM_NAME, dbo.ITM.ITM_SALE, dbo' +
        '.GRP.GRP_ID, dbo.GRP.GRP_NAME'
      'FROM            dbo.ASM INNER JOIN'
      
        '                         dbo.ITM ON dbo.ASM.ASM_ITM_ID = dbo.ITM' +
        '.ITM_ID INNER JOIN'
      
        '                         dbo.GRP ON dbo.ITM.ITM_GRP_ID = dbo.GRP' +
        '.GRP_ID')
    Left = 24
    Top = 712
    object TASMASM_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ASM_ID'
      Origin = 'ASM_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object TASMASM_ITM_ID: TLargeintField
      FieldName = 'ASM_ITM_ID'
      Origin = 'ASM_ITM_ID'
      Required = True
      Visible = False
    end
    object TASMGRP_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'GRP_ID'
      Origin = 'GRP_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
    object TASMGRP_NAME: TWideStringField
      DisplayLabel = 'Group'
      DisplayWidth = 15
      FieldName = 'GRP_NAME'
      Origin = 'GRP_NAME'
      FixedChar = True
    end
    object TASMITM_CP: TWideStringField
      DisplayLabel = 'CP'
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object TASMITM_CODE: TLargeintField
      DisplayLabel = 'Code'
      DisplayWidth = 9
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object TASMITM_INDICE: TWideStringField
      DisplayLabel = 'Ind'
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object TASMITM_NAME: TWideStringField
      DisplayLabel = 'Item'
      DisplayWidth = 25
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object TASMASM_ITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'ASM_ITM_QTY'
      Origin = 'ASM_ITM_QTY'
    end
    object TASMITM_SALE: TCurrencyField
      DisplayLabel = 'Default Sale'
      DisplayWidth = 15
      FieldName = 'ITM_SALE'
      Origin = 'ITM_SALE'
    end
    object TASMASM_DATE: TDateField
      DisplayLabel = 'Date'
      FieldName = 'ASM_DATE'
      Origin = 'ASM_DATE'
    end
    object TASMASM_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      FieldName = 'ASM_COMMENT'
      Origin = 'ASM_COMMENT'
      FixedChar = True
      Size = 50
    end
  end
  object CheckBAB: TFDQuery
    Connection = Master
    SQL.Strings = (
      'SELECT * FROM master.sys.databases WHERE name='#39'BAB'#39)
    Left = 976
    Top = 776
  end
  object PARAM: TFDQuery
    Connection = Connect
    SQL.Strings = (
      'Select * FROM PARAM')
    Left = 512
    Top = 784
    object PARAMNAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Required = True
      FixedChar = True
    end
    object PARAMValue: TWideStringField
      FieldName = 'Value'
      Origin = 'Value'
      FixedChar = True
      Size = 100
    end
  end
  object DLF: TDataSource
    DataSet = TLF
    OnDataChange = DLFDataChange
    Left = 88
    Top = 600
  end
  object TLF: TFDQuery
    BeforeInsert = TLFBeforeInsert
    BeforeEdit = TLFBeforeEdit
    BeforeDelete = TLFBeforeDelete
    Connection = Connect
    SQL.Strings = (
      'SELECT dbo.LF.* FROM dbo.LF'
      'ORDER BY LF_ID')
    Left = 24
    Top = 600
    object TLFLF_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'LF_ID'
      Origin = 'LF_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object TLFLF_CATEGORY: TWideStringField
      DisplayLabel = 'Category'
      FieldName = 'LF_CATEGORY'
      Origin = 'LF_CATEGORY'
      Required = True
      FixedChar = True
    end
    object TLFLF_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      FieldName = 'LF_COMMENT'
      Origin = 'LF_COMMENT'
      FixedChar = True
      Size = 50
    end
  end
  object WLF: TFDTable
    IndexFieldNames = 'LF_ID'
    Connection = Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.LF'
    TableName = 'BAB.dbo.LF'
    Left = 176
    Top = 600
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
  object WITMS: TFDQuery
    Connection = Connect
    SQL.Strings = (
      
        'SELECT dbo.VITM.ITM_ID, dbo.VITM.ITM_CP, dbo.VITM.ITM_CODE, dbo.' +
        'VITM.Stock, dbo.VITM.PUR, dbo.VITM.SAL, dbo.VITM.LF, dbo.VITM.AS' +
        'M, dbo.VITM.USED'
      'FROM     dbo.VITM ')
    Left = 368
    Top = 184
    object WITMSITM_ID: TLargeintField
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      Required = True
    end
    object WITMSITM_CP: TWideStringField
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object WITMSITM_CODE: TLargeintField
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object WITMSStock: TLargeintField
      FieldName = 'Stock'
      Origin = 'Stock'
      ReadOnly = True
    end
    object WITMSPUR: TLargeintField
      FieldName = 'PUR'
      Origin = 'PUR'
    end
    object WITMSSAL: TLargeintField
      FieldName = 'SAL'
      Origin = 'SAL'
    end
    object WITMSLF: TLargeintField
      FieldName = 'LF'
      Origin = 'LF'
    end
    object WITMSASM: TLargeintField
      FieldName = 'ASM'
      Origin = 'ASM'
    end
    object WITMSUSED: TLargeintField
      FieldName = 'USED'
      Origin = 'USED'
    end
  end
  object TCNT: TFDQuery
    BeforeInsert = TCNTBeforeInsert
    BeforeEdit = TCNTBeforeEdit
    BeforeDelete = TCNTBeforeDelete
    Connection = Connect
    SQL.Strings = (
      'SELECT dbo.CNT.* FROM dbo.CNT')
    Left = 24
    Top = 72
    object TCNTCNT_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'CNT_ID'
      Origin = 'CNT_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object TCNTCNT_FIRSTNAME: TWideStringField
      DisplayLabel = 'Contact'
      DisplayWidth = 15
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      Required = True
      FixedChar = True
    end
    object TCNTCNT_PHONE: TWideStringField
      DisplayLabel = 'Phone'
      DisplayWidth = 15
      FieldName = 'CNT_PHONE'
      Origin = 'CNT_PHONE'
      FixedChar = True
    end
    object TCNTCNT_EMAIL: TWideStringField
      DisplayLabel = 'Email'
      DisplayWidth = 30
      FieldName = 'CNT_EMAIL'
      Origin = 'CNT_EMAIL'
      FixedChar = True
      Size = 40
    end
    object TCNTCNT_ADDRESS: TWideStringField
      DisplayLabel = 'Address'
      DisplayWidth = 40
      FieldName = 'CNT_ADDRESS'
      Origin = 'CNT_ADDRESS'
      FixedChar = True
      Size = 100
    end
    object TCNTCNT_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      FieldName = 'CNT_COMMENT'
      Origin = 'CNT_COMMENT'
      FixedChar = True
      Size = 100
    end
  end
  object TGRP: TFDQuery
    BeforeInsert = TGRPBeforeInsert
    BeforeEdit = TGRPBeforeEdit
    BeforeDelete = TGRPBeforeDelete
    Connection = Connect
    SQL.Strings = (
      'SELECT dbo.GRP.* FROM dbo.GRP')
    Left = 24
    Top = 128
    object TGRPGRP_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'GRP_ID'
      Origin = 'GRP_ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object TGRPGRP_NAME: TWideStringField
      DisplayLabel = 'Group'
      DisplayWidth = 15
      FieldName = 'GRP_NAME'
      Origin = 'GRP_NAME'
      FixedChar = True
    end
    object TGRPGRP_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 50
      FieldName = 'GRP_COMMENT'
      Origin = 'GRP_COMMENT'
      FixedChar = True
      Size = 200
    end
  end
  object TPUR: TFDQuery
    BeforeInsert = TPURBeforeInsert
    BeforeEdit = TPURBeforeEdit
    BeforeDelete = TPURBeforeDelete
    Connection = Connect
    SQL.Strings = (
      'SELECT dbo.VPUR.* FROM dbo.VPUR')
    Left = 24
    Top = 256
    object TPURINV_ID: TLargeintField
      FieldName = 'INV_ID'
      Origin = 'INV_ID'
      Required = True
      Visible = False
    end
    object TPURINV_CNT_ID: TLargeintField
      FieldName = 'INV_CNT_ID'
      Origin = 'INV_CNT_ID'
      Required = True
      Visible = False
    end
    object TPURINV_TYPE: TWideStringField
      FieldName = 'INV_TYPE'
      Origin = 'INV_TYPE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 2
    end
    object TPURINV_NUMBER: TLargeintField
      DisplayLabel = 'PUR'
      DisplayWidth = 5
      FieldName = 'INV_NUMBER'
      Origin = 'INV_NUMBER'
      Required = True
    end
    object TPURSupplier: TWideStringField
      DisplayWidth = 10
      FieldName = 'Supplier'
      Origin = 'Supplier'
      FixedChar = True
    end
    object TPURINV_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'INV_DATE'
      Origin = 'INV_DATE'
      Required = True
    end
    object TPURTotal: TCurrencyField
      DisplayWidth = 15
      FieldName = 'Total'
      Origin = 'Total'
    end
    object TPURDue: TCurrencyField
      DisplayWidth = 15
      FieldName = 'Due'
      Origin = 'Due'
      ReadOnly = True
    end
    object TPURINV_STATUS: TWideStringField
      DisplayLabel = 'Status'
      DisplayWidth = 5
      FieldName = 'INV_STATUS'
      Origin = 'INV_STATUS'
      FixedChar = True
      Size = 10
    end
    object TPURINV_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      FieldName = 'INV_COMMENT'
      Origin = 'INV_COMMENT'
      FixedChar = True
      Size = 50
    end
    object TPURINV_LOCKDATE: TSQLTimeStampField
      FieldName = 'INV_LOCKDATE'
      Origin = 'INV_LOCKDATE'
      Visible = False
    end
  end
  object TSAL: TFDQuery
    BeforeInsert = TSALBeforeInsert
    BeforeEdit = TSALBeforeEdit
    BeforeDelete = TSALBeforeDelete
    Connection = Connect
    SQL.Strings = (
      'SELECT dbo.VSAL.* FROM dbo.VSAL')
    Left = 24
    Top = 424
    object TSALINV_ID: TLargeintField
      FieldName = 'INV_ID'
      Origin = 'INV_ID'
      Required = True
      Visible = False
    end
    object TSALINV_CNT_ID: TLargeintField
      FieldName = 'INV_CNT_ID'
      Origin = 'INV_CNT_ID'
      Required = True
      Visible = False
    end
    object TSALINV_TYPE: TWideStringField
      FieldName = 'INV_TYPE'
      Origin = 'INV_TYPE'
      Required = True
      Visible = False
      FixedChar = True
      Size = 2
    end
    object TSALINV_NUMBER: TLargeintField
      DisplayLabel = 'SAL'
      DisplayWidth = 5
      FieldName = 'INV_NUMBER'
      Origin = 'INV_NUMBER'
      Required = True
    end
    object TSALClient: TWideStringField
      DisplayWidth = 10
      FieldName = 'Client'
      Origin = 'Client'
      FixedChar = True
    end
    object TSALINV_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'INV_DATE'
      Origin = 'INV_DATE'
      Required = True
    end
    object TSALTotal: TCurrencyField
      DisplayWidth = 15
      FieldName = 'Total'
      Origin = 'Total'
    end
    object TSALDue: TCurrencyField
      DisplayWidth = 15
      FieldName = 'Due'
      Origin = 'Due'
      ReadOnly = True
    end
    object TSALINV_STATUS: TWideStringField
      DisplayLabel = 'Status'
      DisplayWidth = 5
      FieldName = 'INV_STATUS'
      Origin = 'INV_STATUS'
      FixedChar = True
      Size = 10
    end
    object TSALINV_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      FieldName = 'INV_COMMENT'
      Origin = 'INV_COMMENT'
      FixedChar = True
      Size = 50
    end
    object TSALINV_LOCKDATE: TSQLTimeStampField
      FieldName = 'INV_LOCKDATE'
      Origin = 'INV_LOCKDATE'
      Visible = False
    end
  end
  object DPARAM: TDataSource
    DataSet = PARAM
    Left = 512
    Top = 832
  end
  object WSALITM: TFDTable
    Connection = Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.VSALITM'
    TableName = 'BAB.dbo.VSALITM'
    Left = 176
    Top = 480
    object WSALITMINVITM_ID: TLargeintField
      FieldName = 'INVITM_ID'
      Origin = 'INVITM_ID'
      Required = True
    end
    object WSALITMINVITM_INV_ID: TLargeintField
      FieldName = 'INVITM_INV_ID'
      Origin = 'INVITM_INV_ID'
      Required = True
    end
    object WSALITMINVITM_ITM_ID: TLargeintField
      FieldName = 'INVITM_ITM_ID'
      Origin = 'INVITM_ITM_ID'
      Required = True
    end
    object WSALITMITM_GRP_ID: TLargeintField
      FieldName = 'ITM_GRP_ID'
      Origin = 'ITM_GRP_ID'
      Required = True
    end
    object WSALITMGRP_NAME: TWideStringField
      FieldName = 'GRP_NAME'
      Origin = 'GRP_NAME'
      FixedChar = True
    end
    object WSALITMITM_CP: TWideStringField
      FieldName = 'ITM_CP'
      Origin = 'ITM_CP'
      FixedChar = True
      Size = 1
    end
    object WSALITMITM_CODE: TLargeintField
      FieldName = 'ITM_CODE'
      Origin = 'ITM_CODE'
      Required = True
    end
    object WSALITMITM_INDICE: TWideStringField
      FieldName = 'ITM_INDICE'
      Origin = 'ITM_INDICE'
      FixedChar = True
      Size = 1
    end
    object WSALITMINVITM_AMOUNT: TCurrencyField
      FieldName = 'INVITM_AMOUNT'
      Origin = 'INVITM_AMOUNT'
      Required = True
    end
    object WSALITMINVITM_QTY: TLargeintField
      FieldName = 'INVITM_QTY'
      Origin = 'INVITM_QTY'
      Required = True
    end
    object WSALITMTotal: TCurrencyField
      FieldName = 'Total'
      Origin = 'Total'
      ReadOnly = True
    end
    object WSALITMINVITM_COMMENT: TWideStringField
      FieldName = 'INVITM_COMMENT'
      Origin = 'INVITM_COMMENT'
      FixedChar = True
      Size = 200
    end
    object WSALITMINVITM_DELIVERY: TWideStringField
      FieldName = 'INVITM_DELIVERY'
      Origin = 'INVITM_DELIVERY'
      Required = True
      FixedChar = True
      Size = 10
    end
    object WSALITMITM_PURCHASE: TCurrencyField
      FieldName = 'ITM_PURCHASE'
      Origin = 'ITM_PURCHASE'
    end
    object WSALITMITM_NAME: TWideStringField
      FieldName = 'ITM_NAME'
      Origin = 'ITM_NAME'
      FixedChar = True
      Size = 60
    end
    object WSALITMITM_SALE: TCurrencyField
      FieldName = 'ITM_SALE'
      Origin = 'ITM_SALE'
    end
    object WSALITMPUR: TLargeintField
      FieldName = 'PUR'
      Origin = 'PUR'
    end
    object WSALITMSAL: TLargeintField
      FieldName = 'SAL'
      Origin = 'SAL'
    end
    object WSALITMLF: TLargeintField
      FieldName = 'LF'
      Origin = 'LF'
    end
    object WSALITMASM: TLargeintField
      FieldName = 'ASM'
      Origin = 'ASM'
    end
    object WSALITMUSED: TLargeintField
      FieldName = 'USED'
      Origin = 'USED'
    end
    object WSALITMStock: TLargeintField
      FieldName = 'Stock'
      Origin = 'Stock'
      ReadOnly = True
    end
    object WSALITMProfit: TCurrencyField
      FieldName = 'Profit'
      Origin = 'Profit'
      ReadOnly = True
    end
    object WSALITMITM_COMMENT: TWideStringField
      FieldName = 'ITM_COMMENT'
      Origin = 'ITM_COMMENT'
      FixedChar = True
      Size = 150
    end
  end
  object DMEMOINFO: TDataSource
    DataSet = MEMOINFO
    Left = 440
    Top = 832
  end
  object MEMOINFO: TFDTable
    Connection = Connect
    UpdateOptions.UpdateTableName = 'BAB.dbo.MEMO'
    TableName = 'BAB.dbo.MEMO'
    Left = 440
    Top = 784
    object MEMOINFOMemoName: TWideStringField
      FieldName = 'MemoName'
      FixedChar = True
    end
    object MEMOINFOMemo: TMemoField
      FieldName = 'Memo'
      BlobType = ftMemo
    end
  end
  object DMEMOLOG: TDataSource
    DataSet = MEMOLOG
    Left = 368
    Top = 832
  end
  object MEMOLOG: TFDQuery
    Connection = Connect
    SQL.Strings = (
      'SELECT * FROM MEMO'
      'WHERE MemoName = '#39'LOG'#39)
    Left = 368
    Top = 784
    object MEMOLOGMemo: TMemoField
      FieldName = 'Memo'
      Origin = 'Memo'
      BlobType = ftMemo
    end
  end
  object DQLFITMPUR: TDataSource
    DataSet = QLFITMPUR
    OnDataChange = DHSTITMPURDataChange
    Left = 310
    Top = 650
  end
  object QLFITMPUR: TFDQuery
    Connection = Connect
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT '
      'dbo.INVITM.INVITM_INV_ID, '
      'dbo.ITM.ITM_ID, '
      'dbo.INV.INV_NUMBER, '
      'dbo.CNT.CNT_FIRSTNAME,'
      'dbo.INVITM.INVITM_AMOUNT, '
      'dbo.INVITM.INVITM_QTY, '
      'dbo.INV.INV_DATE, '
      'dbo.INV.INV_STATUS '
      ''
      'FROM     dbo.INVITM INNER JOIN'
      'dbo.ITM ON dbo.INVITM.INVITM_ITM_ID = dbo.ITM.ITM_ID INNER JOIN'
      'dbo.INV ON dbo.INVITM.INVITM_INV_ID = dbo.INV.INV_ID INNER JOIN'
      'dbo.CNT ON dbo.INV.INV_CNT_ID = dbo.CNT.CNT_ID'
      ''
      'WHERE dbo.ITM.ITM_ID = :ITMID AND dbo.INV.INV_TYPE = '#39'P'#39
      '')
    Left = 246
    Top = 650
    ParamData = <
      item
        Name = 'ITMID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QLFITMPURINVITM_INV_ID: TLargeintField
      FieldName = 'INVITM_INV_ID'
      Origin = 'INVITM_INV_ID'
      Required = True
      Visible = False
    end
    object QLFITMPURITM_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
    object QLFITMPURINV_NUMBER: TLargeintField
      DisplayLabel = 'Purchase'
      DisplayWidth = 8
      FieldName = 'INV_NUMBER'
      Origin = 'INV_NUMBER'
      Required = True
    end
    object QLFITMPURCNT_FIRSTNAME: TWideStringField
      DisplayLabel = 'Supplier'
      DisplayWidth = 15
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      Required = True
      FixedChar = True
    end
    object QLFITMPURINVITM_AMOUNT: TCurrencyField
      DisplayLabel = 'Amount'
      DisplayWidth = 15
      FieldName = 'INVITM_AMOUNT'
      Origin = 'INVITM_AMOUNT'
      Required = True
    end
    object QLFITMPURINVITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'INVITM_QTY'
      Origin = 'INVITM_QTY'
      Required = True
    end
    object QLFITMPURINV_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'INV_DATE'
      Origin = 'INV_DATE'
      Required = True
    end
    object QLFITMPURINV_STATUS: TWideStringField
      FieldName = 'INV_STATUS'
      Origin = 'INV_STATUS'
      Visible = False
      FixedChar = True
      Size = 10
    end
  end
  object QLFITMSAL: TFDQuery
    Connection = Connect
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'SELECT '
      'dbo.INVITM.INVITM_INV_ID, '
      'dbo.ITM.ITM_ID, '
      'dbo.INV.INV_NUMBER, '
      'dbo.CNT.CNT_FIRSTNAME,'
      'dbo.INVITM.INVITM_AMOUNT, '
      'dbo.INVITM.INVITM_QTY, '
      'dbo.INV.INV_DATE, '
      'dbo.INV.INV_STATUS '
      ''
      'FROM     dbo.INVITM INNER JOIN'
      'dbo.ITM ON dbo.INVITM.INVITM_ITM_ID = dbo.ITM.ITM_ID INNER JOIN'
      'dbo.INV ON dbo.INVITM.INVITM_INV_ID = dbo.INV.INV_ID INNER JOIN'
      'dbo.CNT ON dbo.INV.INV_CNT_ID = dbo.CNT.CNT_ID'
      ''
      'WHERE dbo.ITM.ITM_ID = :ITMID AND dbo.INV.INV_TYPE = '#39'S'#39
      '')
    Left = 382
    Top = 650
    ParamData = <
      item
        Name = 'ITMID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QLFITMSALINVITM_INV_ID: TLargeintField
      FieldName = 'INVITM_INV_ID'
      Origin = 'INVITM_INV_ID'
      Required = True
      Visible = False
    end
    object QLFITMSALITM_ID: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      ProviderFlags = [pfInWhere]
      ReadOnly = True
      Visible = False
    end
    object QLFITMSALINV_NUMBER: TLargeintField
      DisplayLabel = 'Number'
      DisplayWidth = 8
      FieldName = 'INV_NUMBER'
      Origin = 'INV_NUMBER'
      Required = True
    end
    object QLFITMSALCNT_FIRSTNAME: TWideStringField
      DisplayLabel = 'Client'
      DisplayWidth = 15
      FieldName = 'CNT_FIRSTNAME'
      Origin = 'CNT_FIRSTNAME'
      Required = True
      FixedChar = True
    end
    object QLFITMSALINVITM_AMOUNT: TCurrencyField
      DisplayLabel = 'Amount'
      DisplayWidth = 15
      FieldName = 'INVITM_AMOUNT'
      Origin = 'INVITM_AMOUNT'
      Required = True
    end
    object QLFITMSALINVITM_QTY: TLargeintField
      DisplayLabel = 'Qty'
      DisplayWidth = 5
      FieldName = 'INVITM_QTY'
      Origin = 'INVITM_QTY'
      Required = True
    end
    object QLFITMSALINV_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'INV_DATE'
      Origin = 'INV_DATE'
      Required = True
    end
    object QLFITMSALINV_STATUS: TWideStringField
      FieldName = 'INV_STATUS'
      Origin = 'INV_STATUS'
      Visible = False
      FixedChar = True
      Size = 10
    end
  end
  object DQLFITMSAL: TDataSource
    DataSet = QLFITMSAL
    OnDataChange = DHSTITMPURDataChange
    Left = 454
    Top = 650
  end
  object QTODONEGERR: TFDQuery
    Connection = Connect
    SQL.Strings = (
      'SELECT SUM(TotDefPur) AS ErrDefPur, SUM(TotDefSal) AS ErrDefSal'
      'FROM   dbo.VTODONEG')
    Left = 640
    Top = 696
    object QTODONEGERRErrDefPur: TCurrencyField
      FieldName = 'ErrDefPur'
      Origin = 'ErrDefPur'
      ReadOnly = True
    end
    object QTODONEGERRErrDefSal: TCurrencyField
      FieldName = 'ErrDefSal'
      Origin = 'ErrDefSal'
      ReadOnly = True
    end
  end
  object DTODONEGERR: TDataSource
    DataSet = QTODONEGERR
    Left = 728
    Top = 696
  end
  object QTODOUNKERR: TFDQuery
    Connection = Connect
    SQL.Strings = (
      'SELECT SUM(TotDefPur) AS ErrDefPur, SUM(TotDefSal) AS ErrDefSal'
      'FROM   dbo.VTODOUNK')
    Left = 640
    Top = 744
    object CurrencyField1: TCurrencyField
      FieldName = 'ErrDefPur'
      Origin = 'ErrDefPur'
      ReadOnly = True
    end
    object CurrencyField2: TCurrencyField
      FieldName = 'ErrDefSal'
      Origin = 'ErrDefSal'
      ReadOnly = True
    end
  end
  object TODOUNKERR: TDataSource
    DataSet = QTODOUNKERR
    Left = 728
    Top = 744
  end
  object MEMOTODO: TFDQuery
    Connection = Connect
    SQL.Strings = (
      'SELECT * FROM MEMO'
      'WHERE MemoName = '#39'TODO'#39)
    Left = 304
    Top = 784
    object MemoField1: TMemoField
      FieldName = 'Memo'
      Origin = 'Memo'
      BlobType = ftMemo
    end
  end
  object DMEMOTODO: TDataSource
    DataSet = MEMOTODO
    Left = 304
    Top = 832
  end
  object TPURPAY: TFDQuery
    IndexFieldNames = 'INVPAY_ID'
    Connection = Connect
    SQL.Strings = (
      'SELECT * FROM dbo.VPURPAY'
      'WHERE INVPAY_INV_ID = :INVID'
      'ORDER BY INVPAY_ID')
    Left = 24
    Top = 368
    ParamData = <
      item
        Name = 'INVID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object TPURPAYINVPAY_ID: TLargeintField
      FieldName = 'INVPAY_ID'
      Origin = 'INVPAY_ID'
      Required = True
      Visible = False
    end
    object TPURPAYINVPAY_AMOUNT: TCurrencyField
      DisplayLabel = 'Amount'
      DisplayWidth = 15
      FieldName = 'INVPAY_AMOUNT'
      Origin = 'INVPAY_AMOUNT'
    end
    object TPURPAYINVPAY_DATE: TSQLTimeStampField
      DisplayLabel = 'Date'
      DisplayWidth = 10
      FieldName = 'INVPAY_DATE'
      Origin = 'INVPAY_DATE'
    end
    object TPURPAYINVPAY_COMMENT: TWideStringField
      DisplayLabel = 'Comment'
      DisplayWidth = 25
      FieldName = 'INVPAY_COMMENT'
      Origin = 'INVPAY_COMMENT'
      FixedChar = True
      Size = 100
    end
    object TPURPAYINVPAY_INV_ID: TLargeintField
      FieldName = 'INVPAY_INV_ID'
      Origin = 'INVPAY_INV_ID'
      Required = True
      Visible = False
    end
  end
end
