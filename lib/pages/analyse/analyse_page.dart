import 'package:flutter/material.dart';
import './analyse_chart_view.dart';
import 'analyse_bar_chart.dart';

class AnalysePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnalysePageState();
  }
}

class AnalysePageState extends State<AnalysePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  final List _tabbars = ['图形分析', '班子分析'];
  @override
  void initState() {
    // 创建Controller
    _tabController = TabController(length: _tabbars.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('数据分析'),
        backgroundColor: Colors.red,
        centerTitle: true,
        bottom: TabBar(
          labelPadding: EdgeInsets.only(top: 10, bottom: 10),
          tabs: _tabbars
              .map((e) => Text(
                    e,style: TextStyle(backgroundColor: Colors.red),
                  ))
              .toList(),
          controller: _tabController,
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          _initTabBarView_1(),
          _initTabBarView_2(),
        ],
      ),
    );
  }

  //图形分析
  SingleChildScrollView _initTabBarView_1() {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _initChart('年龄分析', [
              AChartItemModel(1, Color(0xff0293ee), '40岁以下'),
              AChartItemModel(1, Color(0xfff8b250), '41-45岁'),
              AChartItemModel(1, Color(0xff845bef), '46-50岁'),
              AChartItemModel(1, Color(0xff13d38e), '51-55岁'),
              AChartItemModel(1, Color(0xff225aef), '56岁以上'),
            ]),
            _initChart('学历分析', [
              AChartItemModel(2, Color(0xff0293ee), '大专'),
              AChartItemModel(4, Color(0xfff8b250), '大学本科'),
              AChartItemModel(5, Color(0xff845bef), '研究生(在职、全日制、党校)'),
            ]),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        _initLineChart('人员分布', [
          ABarChartItemModel(
            xValue: '西安',
            yValue: 100,
          ),
          ABarChartItemModel(
            xValue: '咸阳',
            yValue: 75,
          ),
          ABarChartItemModel(
            xValue: '安康',
            yValue: 60,
          ),
          ABarChartItemModel(
            xValue: '铜川',
            yValue: 73,
          ),
          ABarChartItemModel(
            xValue: '渭南',
            yValue: 99,
          ),
          ABarChartItemModel(
            xValue: '商洛',
            yValue: 84,
          ),
          ABarChartItemModel(
            xValue: '延安',
            yValue: 60,
          ),
          ABarChartItemModel(
            xValue: '宝鸡',
            yValue: 75,
          ),
          ABarChartItemModel(
            xValue: '榆林',
            yValue: 90,
          ),
          ABarChartItemModel(
            xValue: '汉中',
            yValue: 68,
          ),
        ]),
      ],
    ));
  }

  //班子分析
  SingleChildScrollView _initTabBarView_2() {
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        _initLineChart('人员分布', [
          ABarChartItemModel(
            xValue: '西安',
            yValue: 100,
          ),
          ABarChartItemModel(
            xValue: '咸阳',
            yValue: 75,
          ),
          ABarChartItemModel(
            xValue: '安康',
            yValue: 80,
          ),
          ABarChartItemModel(
            xValue: '铜川',
            yValue: 38,
          ),
          ABarChartItemModel(
            xValue: '渭南',
            yValue: 99,
          ),
          ABarChartItemModel(
            xValue: '商洛',
            yValue: 54,
          ),
          ABarChartItemModel(
            xValue: '延安',
            yValue: 70,
          ),
          ABarChartItemModel(
            xValue: '宝鸡',
            yValue: 45,
          ),
          ABarChartItemModel(
            xValue: '榆林',
            yValue: 90,
          ),
          ABarChartItemModel(
            xValue: '汉中',
            yValue: 68,
          ),
        ]),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _initChart('男女比例', [
              AChartItemModel(2, Color(0xff0293ee), '男'),
              AChartItemModel(4, Color(0xfff8b250), '女'),
            ]),
            _initChart('学历分布', [
              AChartItemModel(1, Color(0xff0293ee), '大专'),
              AChartItemModel(4, Color(0xfff8b250), '大学本科'),
              AChartItemModel(2, Color(0xff845bef), '研究生(在职、全日制、党校)'),
            ]),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: <Widget>[
            _initChart('单位统计', [
              AChartItemModel(2, Color(0xff0293ee), '水利局'),
              AChartItemModel(4, Color(0xfff8b250), '财政局'),
              AChartItemModel(9, Color(0xff845bef), '国土资源局'),
            ]),
          ],
        ),
      ],
    ));
  }

  //
  Card _initChart(String title, List<AChartItemModel> values) {
    return Card(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Container(
            width: (MediaQuery.of(context).size.width - 80) / 2,
            child: AnalyseChartView(values),
          ),
        ],
      ),
    );
  }

  Card _initLineChart(String title, List<ABarChartItemModel> values) {
    return Card(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width - 40,
            height: 300,
            child: AnalyseBarChart(
              barData: values,
            ),
          ),
        ],
      ),
    );
  }
}
