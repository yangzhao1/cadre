import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AnalyseBarChart extends StatefulWidget {
  AnalyseBarChart({Key key, this.barData}) : super(key: key);

  final List<ABarChartItemModel> barData;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AnalyseBarChartState();
  }
}

class _AnalyseBarChartState extends State<AnalyseBarChart> {
  List<BarChartGroupData> _barGroupDatas = [];
  int yMax = 20;
  final leftTitleCount = 5.0;

  @override
  void initState() {
    for (int i = 0; i < widget.barData.length; i++) {
      ABarChartItemModel item = widget.barData[i];
      //
      if (item.yValue > yMax) {
        yMax = item.yValue.toInt();
      }
      //
      BarChartGroupData groupD = BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            y: item.yValue,
            color: item.barColor,
            width: 20,
            isRound: true,
          ),
        ],
      );
      if (groupD == null) {
      } else {
        _barGroupDatas.add(groupD);
      }
    }
    yMax = yMax % leftTitleCount == 0
        ? yMax + 20
        : yMax + (leftTitleCount - yMax % leftTitleCount) + 20;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FlChart(
      chart: BarChart(
        BarChartData(
          maxY: yMax.toDouble(),
          titlesData: FlTitlesData(
            show: true,
            bottomTitles: SideTitles(
              showTitles: true,
              textStyle: TextStyle(
                  color: const Color(0xff7589a2),
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
              margin: 20,
              getTitles: (double value) {
                return widget.barData[value.toInt()].xValue;
              },
            ),
            leftTitles: SideTitles(
              showTitles: true,
              textStyle: TextStyle(
                  color: const Color(0xff7589a2),
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
              margin: 32,
              reservedSize: 14,
              getTitles: (value) {
                double averageValue = yMax / leftTitleCount;
                if (value % averageValue == 0) {
                  return value.toInt().toString();
                } else {
                  return '';
                }
              },
            ),
          ),
          borderData: FlBorderData(
            show: false,
            border: Border(
                top: BorderSide(
                  color: Colors.white10,
                ),
                right: BorderSide(color: Colors.white10),),
          ),
          barGroups: _barGroupDatas,
        ),
      ),
    );
  }
}

class ABarChartItemModel {
  ABarChartItemModel({this.yValue, this.xValue, this.barColor = Colors.blue});
  double yValue;
  String xValue;
  Color barColor;
}
