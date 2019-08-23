import 'package:flutter/material.dart';
import './analyse_chart_view.dart';

class AnalysePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnalysePageState();
  }
}

class AnalysePageState extends State<AnalysePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  final List _tabbars = ['图形分析', '班子分析', '班子配备', '关系图例'];
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
        bottom: TabBar(
          labelPadding: EdgeInsets.only(top: 10, bottom: 10),
          tabs: _tabbars
              .map((e) => Text(
                    e,
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
          Text('data'),
          Text('data'),
        ],
      ),
    );
  }

  //图形分析
  SingleChildScrollView _initTabBarView_1() {
    return SingleChildScrollView(
      child: Row(
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
    );
  }

  //班子分析
  SingleChildScrollView _initTabBarView_2() {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _initChart('人员分布', [
            AChartItemModel(2, Color(0xff0293ee), '办公室'),
            AChartItemModel(4, Color(0xfff8b250), '执法大队'),
            AChartItemModel(5, Color(0xff845bef), '业务'),
          ]),
            _initChart('男女比例', [
            AChartItemModel(2, Color(0xff0293ee), '男'),
            AChartItemModel(4, Color(0xfff8b250), '女'),
          ]),
        ],
      ),
    );
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
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: (MediaQuery.of(context).size.width - 80) / 2,
            child: AnalyseChartView(values),
          ),
        ],
      ),
    );
  }
}
