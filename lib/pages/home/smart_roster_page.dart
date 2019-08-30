import 'package:azlistview/azlistview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cadre/pages/home/RollList.dart';
import 'package:flutter_cadre/pages/peopleInfo/PeopleInfo.dart';

class SmartRosterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SmartRosterPageState();
  }
}

class _SmartRosterPageState extends State<SmartRosterPage> {
  final List<SmartRosterItem> _rosterList = [
    SmartRosterItem(
        count: '196', name: '全部', indexTag: '', isShowSection: false,index: 0),
    //
    SmartRosterItem(
        count: '21', name: '处级名册', indexTag: '处级分册', isShowSection: false,index: 1),
    SmartRosterItem(
        count: '21', name: '科级名册', indexTag: '处级分册', isShowSection: true,index: 2),
    SmartRosterItem(
        count: '19', name: '科员及以下名册', indexTag: '处级分册', isShowSection: true,index: 3),
    //
    SmartRosterItem(
        count: '25', name: '西安地区名册', indexTag: '地区分册', isShowSection: false,index: 4),
    SmartRosterItem(
        count: '22', name: '咸阳地区名册', indexTag: '地区分册', isShowSection: true,index: 5),
    SmartRosterItem(
        count: '21', name: '宝鸡地区名册', indexTag: '地区分册', isShowSection: true,index: 6),
  ];

  String _suspensionTag = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('智能名册'),
        centerTitle: true,
      ),
      body: AzListView(
        data: _rosterList,
        itemHeight:60,
        // isUseRealIndex: true,
        itemBuilder: (context, model) {
          return  GestureDetector(child: _cell(model),onTap: (){
            // int index = (model as SmartRosterItem).index;
            // print('我点击了什么?~~~~~$index');
            Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => RollList()));
          },) ;
        },
        showIndexHint: false,
        isUseRealIndex: true,
        suspensionHeight: 40,
        suspensionWidget: _section(_suspensionTag),
        onSusTagChanged: (tage) {
          setState(() {
            _suspensionTag = tage;
          });
        },
      ),
    );
  }

  Widget _cell(SmartRosterItem item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Offstage(
          offstage: item.isShowSuspension,
          child: _section(item.indexTag),
        ),
        SizedBox(
          height: 60,
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Text(
                    item.name + '(' + item.count + ')',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Icon(Icons.keyboard_arrow_right),
              ],
            ),
          ),
        ),
        SizedBox(height: 0.5,child: Container(color:Colors.grey ,),)
      ],
    );
  }

  Container _section(String section) {
    return Container(
      height: section.length == 0 ? 20 : 60,
      padding: const EdgeInsets.only(left: 15.0),
      color: Color(0xfff3f4f5),
      alignment: Alignment.centerLeft,
      child: Text(
        section,
        softWrap: false,
        style: TextStyle(
          fontSize: 19.0,
          color: Color(0xff999999),
        ),
      ),
    );
  }
}

class SmartRosterItem extends ISuspensionBean {
  SmartRosterItem({this.count, this.name, this.indexTag, this.isShowSection,this.index});
  final String count;
  final String name;
  final String indexTag;
  final bool isShowSection;
  final int index;
  @override
  String getSuspensionTag() {
    // TODO: implement getSuspensionTag
    return indexTag;
  }

  @override
  // TODO: implement isShowSuspension
  bool get isShowSuspension => this.isShowSection;
}
