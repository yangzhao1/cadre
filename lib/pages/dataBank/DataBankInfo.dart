import 'package:flutter/material.dart';
import 'package:flutter_cadre/pages/analyse/analyse_chart_view.dart';
import 'package:flutter_cadre/pages/tools/Toast.dart';

class DataBankInfo extends StatefulWidget {
  DataBankInfo({Key key}) : super(key: key);

  _DataBankInfoState createState() => _DataBankInfoState();
}

class _DataBankInfoState extends State<DataBankInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("详情"),
        centerTitle: true,
        actions: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    Toast.toast(context, msg: '收藏成功');
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      '收藏',
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
            ],
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    // Toast.toast(context, msg: '收藏成功');
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      '添加批注',
                      style: TextStyle(color: Colors.white),
                    ),
                  ))
              ])
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              height: 140,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 50,
                  ),
                  Image(
                    image: AssetImage('images/mrtx_icon.png'),
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text("单位名称: 西安中级人民法院",
                            style: TextStyle(color: Colors.black)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text("级别: 中级",
                            style: TextStyle(color: Colors.black)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text("单位编制: 156人",
                            style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
                  child: Text('单位内设机构: 院领导,民一庭,民二庭,刑庭,行政庭,告申庭,研究室,执行局',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                ),
                _initSubCell('职数：在职人员85人', '运行情况：正常运行'),
                _initSubCell('即将超龄人员：13人', '本年度即将退休人员: 5人'),
              ],
            ),
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
          Card(
            margin: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  child: Text('单位荣誉：'),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  child: Text('1977.08—1979.09 山西省昔阳县良种繁殖场知青'),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  child: Text('1979.09—1983.07 吉林大学法律系本科学生'),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  child: Text(
                      '1983.08—1991.08 最高人民法院刑事审判第一庭书记员（其间：1983.09—1984.08 北京市宣武区人民法院刑事审判庭锻炼'),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  child: Text('1991.08—1992.11 最高人民法院刑事审判第一庭助理审判员（副处级）'),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  child: Text('1993.09—1995.04 最高人民法院人民法院报社总编辑助理（正处级）'),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  child: Text('2005.07—2006.06 最高人民法院刑事审判第四庭庭长'),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  child: Text(
                      '2006.06—2014.08 最高人民法院审判委员会委员、刑事审判第四庭庭长（其间：2011.03-2011.07中央党校中青年干部培训班学习）'),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  child: Text(
                      '2016.01—2016.01 中共北京市委政法委委员、北京市高级人民法院党组书记、副院长（代院长）、审判委员会委员'),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  child: Text(
                      '2016.05—2018.06 中共北京市委政法委委员、北京市高级人民法院党组书记、院长、审判委员会委员、二级大法官'),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  child: Text('2018.06—最高人民法院党组成员、副院长、审判委员会委员、二级大法官。'
                      '第十三届全国人大代表'),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

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

  Container _initSubCell(String beforeString, String afterString) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              beforeString,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
            child: Text(afterString, style: TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}
