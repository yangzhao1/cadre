import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AnalyseChartView extends StatefulWidget {
  AnalyseChartView(this.values);
  final List<AChartItemModel> values;
  @override
  State<StatefulWidget> createState() {
    return AnalyseChartViewPage();
  }
}

class AnalyseChartViewPage extends State<AnalyseChartView> {
  //chart 数据
  List<PieChartSectionData> _initChartSectionData() {
    //总数
    double _sum = 0;
    for (AChartItemModel item in widget.values) {
      _sum += item.value;
    }
    //
    return widget.values
        .map((item) => (PieChartSectionData(
              color: item.color,
              value: item.value,
              title: (((item.value / _sum) * 100).toInt()).toString() + '%',
              radius: (MediaQuery.of(context).size.width - 80) / 4 - 40,
              titleStyle: TextStyle(
                  fontSize: 16,
                  color: Color(0xffffffff)),
            )))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1,
          child: FlChart(
            chart: PieChart(
              PieChartData(
                borderData: FlBorderData(
                  show: false,
                ),
                sectionsSpace: 0,
                centerSpaceRadius: 0,
                sections: _initChartSectionData(),
              ),
            ),
          ),
        ),
        Container(
          height: 50,
          child: Wrap(
            spacing: 8.0, // 主轴(水平)方向间距
            runSpacing: 4.0, // 纵轴（垂直）方向间距
            children: widget.values
                .map(
                  (item) => Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: <Widget>[
                      Container(
                        color: item.color,
                        width: 10,
                        height: 10,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(item.title),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}

class AChartItemModel {
  AChartItemModel(this.value, this.color, this.title);
  double value;
  Color color;
  String title;
}
