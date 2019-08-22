import 'package:flutter/material.dart';

class AnalysePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnalysePageState();
  }
}

class AnalysePageState extends State<AnalysePage>   with SingleTickerProviderStateMixin{
  TabController _tabController;
  final List _tabbars = ['图形分析', '班子分析', '班子配备', '关系图例'];
@override
  void initState() {
    // 创建Controller  
    _tabController = TabController(length: _tabbars.length, vsync:this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('数据分析'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 40,
            child: TabBar(
              tabs: _tabbars.map((e) => Text(e,style: TextStyle(color: Colors.black),)).toList(),
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}
