object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 350
  Width = 728
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=sistema_igreja'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 8
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\lib\libmySQL.dll'
    Left = 184
    Top = 8
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 296
    Top = 8
  end
  object tb_matriz: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'sistema_igreja.matriz'
    TableName = 'sistema_igreja.matriz'
    Left = 64
    Top = 64
    object tb_matrizid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tb_matriznome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object tb_matrizendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 65
    end
    object tb_matriznumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      Required = True
      Size = 5
    end
    object tb_matrizbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Required = True
      Size = 25
    end
    object tb_matrizcidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Required = True
      Size = 25
    end
    object tb_matriztelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
    end
  end
  object DSMatriz: TDataSource
    DataSet = query_matriz
    Left = 88
    Top = 152
  end
  object query_matriz: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from matriz')
    Left = 24
    Top = 152
    object query_matrizid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object query_matriznome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 17
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object query_matrizendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 20
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 65
    end
    object query_matriznumero: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 8
      FieldName = 'numero'
      Origin = 'numero'
      Required = True
      Size = 5
    end
    object query_matrizbairro: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 12
      FieldName = 'bairro'
      Origin = 'bairro'
      Required = True
      Size = 25
    end
    object query_matrizcidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 15
      FieldName = 'cidade'
      Origin = 'cidade'
      Required = True
      Size = 25
    end
    object query_matriztelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
    end
  end
  object tb_filial: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'sistema_igreja.filial'
    TableName = 'sistema_igreja.filial'
    Left = 120
    Top = 64
    object tb_filialid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tb_filialnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 25
    end
    object tb_filialendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 30
    end
    object tb_filialnumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      Required = True
      Size = 5
    end
    object tb_filialbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Required = True
      Size = 25
    end
    object tb_filialcidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Required = True
      Size = 25
    end
    object tb_filialtelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      Size = 15
    end
    object tb_filialmatriz: TStringField
      FieldName = 'matriz'
      Origin = 'matriz'
      Required = True
      Size = 25
    end
  end
  object DSFilial: TDataSource
    DataSet = query_filial
    Left = 224
    Top = 152
  end
  object query_filial: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from filial')
    Left = 160
    Top = 152
    object query_filialid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object query_filialnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 23
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 25
    end
    object query_filialendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 17
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 30
    end
    object query_filialnumero: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 8
      FieldName = 'numero'
      Origin = 'numero'
      Required = True
      Size = 5
    end
    object query_filialbairro: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 13
      FieldName = 'bairro'
      Origin = 'bairro'
      Required = True
      Size = 25
    end
    object query_filialcidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 15
      FieldName = 'cidade'
      Origin = 'cidade'
      Required = True
      Size = 25
    end
    object query_filialtelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      Size = 15
    end
    object query_filialmatriz: TStringField
      DisplayLabel = 'Matriz'
      DisplayWidth = 15
      FieldName = 'matriz'
      Origin = 'matriz'
      Required = True
      Size = 25
    end
  end
  object tb_funcoes: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'sistema_igreja.funcoes'
    TableName = 'sistema_igreja.funcoes'
    Left = 176
    Top = 64
  end
  object query_funcoes: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from funcoes')
    Left = 288
    Top = 152
    object query_funcoesid: TFDAutoIncField
      DisplayLabel = 'Id'
      DisplayWidth = 5
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object query_funcoesnome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
    end
  end
  object DSFuncoes: TDataSource
    DataSet = query_funcoes
    Left = 360
    Top = 152
  end
  object tb_usuarios: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'sistema_igreja.usuarios'
    TableName = 'sistema_igreja.usuarios'
    Left = 240
    Top = 64
    object tb_usuariosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tb_usuariosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object tb_usuariosusuario: TStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Required = True
      Size = 25
    end
    object tb_usuariossenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 25
    end
    object tb_usuariosfuncao: TStringField
      FieldName = 'funcao'
      Origin = 'funcao'
      Required = True
      Size = 25
    end
    object tb_usuariosmatriz: TStringField
      FieldName = 'matriz'
      Origin = 'matriz'
      Required = True
      Size = 25
    end
    object tb_usuariosfilial: TStringField
      FieldName = 'filial'
      Origin = 'filial'
      Required = True
      Size = 25
    end
  end
  object query_usuarios: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from usuarios')
    Left = 432
    Top = 152
    object query_usuariosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object query_usuariosnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 15
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object query_usuariosusuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 12
      FieldName = 'usuario'
      Origin = 'usuario'
      Required = True
      Size = 25
    end
    object query_usuariossenha: TStringField
      DisplayLabel = 'Senha'
      DisplayWidth = 8
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 25
    end
    object query_usuariosfuncao: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      DisplayWidth = 20
      FieldName = 'funcao'
      Origin = 'funcao'
      Required = True
      Size = 25
    end
    object query_usuariosmatriz: TStringField
      DisplayLabel = 'Matriz'
      DisplayWidth = 20
      FieldName = 'matriz'
      Origin = 'matriz'
      Required = True
      Size = 25
    end
    object query_usuariosfilial: TStringField
      DisplayLabel = 'Filial'
      DisplayWidth = 20
      FieldName = 'filial'
      Origin = 'filial'
      Required = True
      Size = 25
    end
  end
  object DSUsuarios: TDataSource
    DataSet = query_usuarios
    Left = 504
    Top = 152
  end
  object tb_pessoas: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'sistema_igreja.pessoas'
    TableName = 'sistema_igreja.pessoas'
    Left = 312
    Top = 64
    object tb_pessoasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tb_pessoasnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 25
    end
    object tb_pessoastelefone: TStringField
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      Size = 15
    end
    object tb_pessoasfuncao: TStringField
      FieldName = 'funcao'
      Origin = 'funcao'
      Required = True
      Size = 25
    end
    object tb_pessoasmatriz: TStringField
      FieldName = 'matriz'
      Origin = 'matriz'
      Required = True
      Size = 25
    end
    object tb_pessoasfilial: TStringField
      FieldName = 'filial'
      Origin = 'filial'
      Required = True
      Size = 25
    end
    object tb_pessoasimagem: TBlobField
      FieldName = 'imagem'
      Origin = 'imagem'
    end
    object tb_pessoasendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 30
    end
  end
  object query_pessoas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from pessoas')
    Left = 576
    Top = 152
    object query_pessoasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      Visible = False
    end
    object query_pessoasnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 13
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 25
    end
    object query_pessoasendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 13
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      Size = 30
    end
    object query_pessoastelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      Size = 15
    end
    object query_pessoasfuncao: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      DisplayWidth = 18
      FieldName = 'funcao'
      Origin = 'funcao'
      Required = True
      Size = 25
    end
    object query_pessoasmatriz: TStringField
      DisplayLabel = 'Matriz'
      DisplayWidth = 17
      FieldName = 'matriz'
      Origin = 'matriz'
      Required = True
      Size = 25
    end
    object query_pessoasfilial: TStringField
      DisplayLabel = 'Filial'
      DisplayWidth = 17
      FieldName = 'filial'
      Origin = 'filial'
      Required = True
      Size = 25
    end
    object query_pessoasimagem: TBlobField
      FieldName = 'imagem'
      Origin = 'imagem'
      Visible = False
    end
  end
  object DSPessoas: TDataSource
    DataSet = query_pessoas
    Left = 640
    Top = 152
  end
  object tb_entradas: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'sistema_igreja.entradas'
    TableName = 'sistema_igreja.entradas'
    Left = 456
    Top = 64
  end
  object query_entradas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from entradas')
    Left = 24
    Top = 224
  end
  object DSEntradas: TDataSource
    DataSet = query_entradas
    Left = 96
    Top = 224
  end
  object tb_movimentacoes: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'sistema_igreja.movimentacoes'
    TableName = 'sistema_igreja.movimentacoes'
    Left = 536
    Top = 56
    object tb_movimentacoesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tb_movimentacoestipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      Size = 10
    end
    object tb_movimentacoesmovimento: TStringField
      FieldName = 'movimento'
      Origin = 'movimento'
      Required = True
    end
    object tb_movimentacoesvalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      Precision = 10
      Size = 2
    end
    object tb_movimentacoespessoa: TStringField
      FieldName = 'pessoa'
      Origin = 'pessoa'
      Required = True
      Size = 25
    end
    object tb_movimentacoesdata: TDateField
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
  end
  object query_movimentacoes: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from movimentacoes')
    Left = 192
    Top = 216
    object query_movimentacoesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object query_movimentacoestipo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      Size = 10
    end
    object query_movimentacoesmovimento: TStringField
      DisplayLabel = 'Movimento'
      FieldName = 'movimento'
      Origin = 'movimento'
      Required = True
    end
    object query_movimentacoesvalor: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      Precision = 10
      Size = 2
    end
    object query_movimentacoespessoa: TStringField
      FieldName = 'pessoa'
      Origin = 'pessoa'
      Required = True
      Size = 25
    end
    object query_movimentacoesdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
  end
  object DSMovimentacoes: TDataSource
    DataSet = query_movimentacoes
    Left = 296
    Top = 224
  end
end
