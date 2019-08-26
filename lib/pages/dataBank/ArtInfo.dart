import 'package:flutter/material.dart';
import 'package:flutter_cadre/pages/tools/Toast.dart';

class ArtInfo extends StatefulWidget {
  ArtInfo({Key key}) : super(key: key);

  _ArtInfoState createState() => _ArtInfoState();
}

class _ArtInfoState extends State<ArtInfo> {
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
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Card(
            margin: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
                  child: Text('单位名称: 西安中级人民法院',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                ),
                _initSubCell('成立时间：1955-02-15', '院长：李洪涛'),
                _initSubCell('全院人数：436人', '邮政编码: 710016'),
                _initSubCell('联系电话：029—87658306', '区位: 西安市未央区'),
                _initSubCell('地址：西安市北二环东段139号', ''),
              ],
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
                  child: Text('法院简介:'
                      '1949年5月28日，在西安人民欢庆解放的锣鼓声中，与国民党政府西安西安法院旧址上成立了西安'
                      '市人民法院，开始代表人民行使审判职权。1955年2月15日，依照《宪法》和《人民法院组织法》，西安市人民法院改建为西安市中级人民法院，依法独'
                      '敢于担当，认真落实司法责任制要求，积极投身巡回法庭建设，是推进司法改革的实干家和促进派。他胸怀大局、牢记使命，主动申请到边远艰苦地区接受锻炼，援藏三年期间高效审理各类民事'
                      '立行使审判权；也是自1955年2月，西安市人大一届二次会议开始，西安市中级人民法院院长由市人民代表大会选举产生。'
                    ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
                  child: Text('机构设置:'
                      '西安市中级人民法院现设有刑事审判一庭、刑事审判二庭、民事审判一庭、民事审判二庭、民事审判三庭、民事审判四庭、'
                      '立案一庭、立案二庭、审判监督庭、行政审判庭、审判管理办公室、未成年人案件综合审判庭、高新技术产业开发区综合审判'
                      '庭、执行工作局（下设执行一庭、执行二庭、综合处）等14个审判业务部门；政治部（下设人事处、宣传处、教育培训处、离退'
                      '休干部管理处4个处）、办公室、司法行政装备管理处、法警支队、司法技术室、研究室、监察室（与纪检组合署办公）、机关党委等8个综合部门。'
                    ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
                  child: Text('法院建设:'
                      '近年来，西安市两级法院年受理案件约70000件，约占全省法院受理案件总数的三分之一。其中，西安中院年审结案件约'
                      '13000件。西安中院还承担全省大部分涉外案件和全市知识产权案件的审理任务。2012年至今，全市法院有11个单位受到最高人民法院表彰，50个单位受到省级表彰，119名干警受到省级以上表彰。'
                    ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 15),
                  child: Text('所获荣誉:'
                      '因工作成绩比较突出，近年来，西安市中级人民法院共荣立集体一等功1次，集体二等功1次，个人一等功4人次，集体二等'
                      '功（部门）8个次，个人二等功34人次，先后涌现出全国模范法官1人，全国优秀法官2人、全国法院办案标兵1人，有15个部门'
                      '荣获全国法院民事、刑事、行政、研究、监察、司法警察、宣传工作等先进集体，被省委省政府表彰为省级文明单位标兵、国企'
                      '改革攻坚先进集体并荣记集体一等次。2010年10月，西安市中级人民法院被最高人民法院确定为首批“全国司法公开示范法院”。'
                    ),
                ),
              ],
            ),
          ),
          Container()
        ],
      )),
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
