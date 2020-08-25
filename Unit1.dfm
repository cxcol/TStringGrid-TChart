object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 507
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 17
    Top = 35
    Width = 272
    Height = 118
    ColCount = 4
    DrawingStyle = gdsClassic
    FixedCols = 0
    RowCount = 4
    FixedRows = 0
    TabOrder = 0
    RowHeights = (
      24
      24
      24
      24)
  end
  object Chart1: TChart
    Left = 336
    Top = 120
    Width = 400
    Height = 250
    Title.Text.Strings = (
      'TChart')
    TabOrder = 1
    PrintMargins = (
      15
      19
      15
      19)
    ColorPaletteIndex = 13
    object Series1: TBarSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = True
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
end
