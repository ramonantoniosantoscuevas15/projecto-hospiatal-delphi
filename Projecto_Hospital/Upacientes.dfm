object pacientes: Tpacientes
  Left = 0
  Top = 0
  Caption = 'Pacientes'
  ClientHeight = 387
  ClientWidth = 1063
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 23
  object DBGrid1: TDBGrid
    Left = 16
    Top = 48
    Width = 1025
    Height = 306
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
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Insertar'
    TabOrder = 1
    OnClick = btninsertarClick
  end
  object btnactualizar: TButton
    Left = 312
    Top = 360
    Width = 89
    Height = 25
    Caption = 'Actualizar'
    TabOrder = 2
    OnClick = btnactualizarClick
  end
  object btneliminar: TButton
    Left = 688
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Eliminar'
    TabOrder = 3
    OnClick = btneliminarClick
  end
  object btncerrar: TButton
    Left = 966
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 4
    OnClick = btncerrarClick
  end
  object query: TFDQuery
    Connection = Datos.FDConnection1
    SQL.Strings = (
      'select * from pacientes where id =2')
    Left = 264
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = query
    Left = 424
    Top = 176
  end
end
