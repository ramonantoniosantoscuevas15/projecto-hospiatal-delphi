object Medicos: TMedicos
  Left = 0
  Top = 0
  Caption = 'Medicos'
  ClientHeight = 338
  ClientWidth = 853
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
    Width = 833
    Height = 233
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -17
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object btninsertar: TButton
    Left = 16
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Insertar'
    TabOrder = 1
    OnClick = btninsertarClick
  end
  object btnactualizar: TButton
    Left = 248
    Top = 304
    Width = 89
    Height = 25
    Caption = 'Actualizar'
    TabOrder = 2
    OnClick = btnactualizarClick
  end
  object btneliminar: TButton
    Left = 504
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Eliminar'
    TabOrder = 3
    OnClick = btneliminarClick
  end
  object btncerrar: TButton
    Left = 766
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 4
    OnClick = btncerrarClick
  end
  object query: TFDQuery
    Connection = Datos.FDConnection1
    Left = 208
    Top = 144
  end
  object DataSource1: TDataSource
    DataSet = query
    Left = 336
    Top = 128
  end
end
