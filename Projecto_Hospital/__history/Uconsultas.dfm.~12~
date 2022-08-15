object consultas: Tconsultas
  Left = 0
  Top = 0
  Caption = 'Consultas'
  ClientHeight = 374
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 23
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 561
    Height = 297
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btninsertar: TButton
    Left = 8
    Top = 341
    Width = 75
    Height = 25
    Caption = 'Insertar'
    TabOrder = 1
    OnClick = btninsertarClick
  end
  object btnactualizar: TButton
    Left = 168
    Top = 341
    Width = 81
    Height = 25
    Caption = 'Actualizar'
    TabOrder = 2
    OnClick = btnactualizarClick
  end
  object btneliminar: TButton
    Left = 336
    Top = 341
    Width = 75
    Height = 25
    Caption = 'Eliminar'
    TabOrder = 3
    OnClick = btneliminarClick
  end
  object btncerrar: TButton
    Left = 494
    Top = 341
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 4
    OnClick = btncerrarClick
  end
  object query: TFDQuery
    Connection = Datos.FDConnection1
    SQL.Strings = (
      'select * from consultas')
    Left = 104
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = query
    Left = 163
    Top = 78
  end
end
