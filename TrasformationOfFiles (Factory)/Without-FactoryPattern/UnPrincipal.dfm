object PrincipalConversor: TPrincipalConversor
  Left = 0
  Top = 0
  Caption = 'PrincipalConversor'
  ClientHeight = 585
  ClientWidth = 1054
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGridShow: TDBGrid
    Left = 199
    Top = 8
    Width = 408
    Height = 569
    DataSource = DsConversor
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object GroupBoxCarregarArquivos: TGroupBox
    Left = 8
    Top = 8
    Width = 167
    Height = 145
    Caption = 'Selecione:'
    TabOrder = 1
  end
  object BtnCarregarXML: TBitBtn
    Left = 31
    Top = 32
    Width = 121
    Height = 25
    Caption = 'Carregar Arquivo XML'
    TabOrder = 2
    OnClick = BtnCarregarXMLClick
  end
  object Btn2CarregarCSV: TBitBtn
    Left = 31
    Top = 72
    Width = 121
    Height = 25
    Caption = 'Carregar Arquivo CSV'
    TabOrder = 3
    OnClick = Btn2CarregarCSVClick
  end
  object BtnCarregarJSON: TBitBtn
    Left = 31
    Top = 112
    Width = 121
    Height = 25
    Caption = 'Carregar Arquivo JSON'
    TabOrder = 4
    OnClick = BtnCarregarJSONClick
  end
  object MemoConversorTeste: TMemo
    Left = 631
    Top = 8
    Width = 409
    Height = 569
    TabOrder = 5
  end
  object DsConversor: TDataSource
    DataSet = CdsConversor
    Left = 48
    Top = 176
  end
  object CdsConversor: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 176
  end
  object XMLTransformProvider: TXMLTransformProvider
    TransformRead.TransformationFile = 
      'C:\Users\Edward Nascimento\Dev\Design-Patterns-\TrasformationOfF' +
      'iles (Factory)\mockdata\ToDp.xtr'
    XMLDataFile = 
      'C:\Users\Edward Nascimento\Dev\Design-Patterns-\TrasformationOfF' +
      'iles (Factory)\mockdata\data.xml'
    Left = 40
    Top = 240
  end
end
