
import 'dart:math';

import '../flutter.dart';
import 'text_element.dart';
import 'text_style.dart' as style;

class CustomCircleSymbolRenderer extends CircleSymbolRenderer {
  @override
  void paint(ChartCanvas canvas, Rectangle<num> bounds, {List<int> dashPattern, Color fillColor, Color strokeColor, double strokeWidthPx}) {
    super.paint(canvas, bounds, dashPattern: dashPattern, fillColor: fillColor, strokeColor: strokeColor, strokeWidthPx: strokeWidthPx);
    canvas.drawRect(
        Rectangle(bounds.left - 5, bounds.top - 30, bounds.width + 10, bounds.height + 10),
        fill: Color.white
    );
    var textStyle = style.TextStyle();
    textStyle.color = Color.black;
    textStyle.fontSize = 15;
    canvas.drawText(
        TextElement("1", style: textStyle),
        (bounds.left).round(),
        (bounds.top - 28).round()
    );
  }
}