import 'package:flutter/material.dart';
import 'package:flutter_cadre/pages/tools/Toast.dart';

class PeopleInfo extends StatefulWidget {
  PeopleInfo({Key key}) : super(key: key);

  _PeopleInfoState createState() => _PeopleInfoState();
}

class _PeopleInfoState extends State<PeopleInfo> {
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
                  onTap: (){
                    Toast.toast(
                      context,msg: '收藏成功'
                    );
                  },
                  child:Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    '收藏',style: TextStyle(color: Colors.white),
                   ),
                  )
                )
              ],
            )
            
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Card(
                child: Container(
                  height: 140,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 50,
                      ),
                      Image(
                        image: AssetImage('images/home_nor.png'),
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
                            child: Text("姓名: 李洪涛",
                                style: TextStyle(color: Colors.black)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text("性别: 男",
                                style: TextStyle(color: Colors.black)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text("出生日期: 1988-05-16",
                                style: TextStyle(color: Colors.black)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.only(left: 0, right: 0, top: 10, bottom: 5),
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          
                          Container(
                            width: 150,
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 5),
                            child: Text('民族：汉'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 5),
                            child: Text('学历：本科'),
                          )
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          
                          Container(
                            width: 150,
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 5),
                            child: Text('学位：北京大学学士'),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 250,
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 5),
                            child: Text('出生地：陕西省西安市雁塔区丈八东路街道15号'),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          
                          Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 5),
                            child: Text('工作单位：陕西省西安市人民法院'),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          
                          Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 5),
                            child: Text('单位职务：审判委员会委员,院长'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 15),
                      child: Text('简介:'
                      '张三，男，汉族，湖南省澧县人，1965年12月出生，中共党员，生前系最高人民法院第四巡回法庭主审法官。2017年10月17日，在第四巡回法庭合议案件时突发疾病，经抢救无效因公殉职。'
                      '张三同志参加人民法院工作以来，始终以合格党员标准严格要求自己，兢兢业业、埋头苦干，在民商事审判、司法改革、审判理论研究、国际司法交流等多个领域作出重要贡献。他锐意进取、'
                      '敢于担当，认真落实司法责任制要求，积极投身巡回法庭建设，是推进司法改革的实干家和促进派。他胸怀大局、牢记使命，主动申请到边远艰苦地区接受锻炼，援藏三年期间高效审理各类民事'
                      '案件110多件，深入基层为当地群众排忧解难。他清正廉洁、勤勉敬业，把毕生精力都投入到司法工作中，对事业、对工作认真较真，受到干部群众'
                      '普遍赞誉。2018年1月，人力资源社会保障部、最高人民法院追授其全国模范法官称号。1月24日，中央政法委发出通知，号召全国政法机关和全体政'
                      '法干警认真学习宣传方金刚同志的先进事迹和崇高精神。新华社、光明日报、人民网等30余家媒体对方金刚先进事迹进行了宣传报道，在社会上引起'
                      '强烈反响。'),
                    ),
                  ],
                ),
              ),
              Card(
                child: Container(
                  padding: EdgeInsets.only(left: 0, right: 0, top: 10, bottom: 5),
                  child: Column(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: 150,
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Text('职业生涯：'),
                          ),
                          Container(
                            width: 250,
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Text('1977.08—1979.09 山西省昔阳县良种繁殖场知青'),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Text('1979.09—1983.07 吉林大学法律系本科学生'),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Text('1983.08—1991.08 最高人民法院刑事审判第一庭书记员（其间：1983.09—1984.08 北京市宣武区人民法院刑事审判庭锻炼'),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Text('1991.08—1992.11 最高人民法院刑事审判第一庭助理审判员（副处级）'),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Text('1993.09—1995.04 最高人民法院人民法院报社总编辑助理（正处级）'),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Text('2005.07—2006.06 最高人民法院刑事审判第四庭庭长'),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Text('2006.06—2014.08 最高人民法院审判委员会委员、刑事审判第四庭庭长（其间：2011.03-2011.07中央党校中青年干部培训班学习）'),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Text('2016.01—2016.01 中共北京市委政法委委员、北京市高级人民法院党组书记、副院长（代院长）、审判委员会委员'),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Text('2016.05—2018.06 中共北京市委政法委委员、北京市高级人民法院党组书记、院长、审判委员会委员、二级大法官'),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, top: 5, bottom: 5),
                            child: Text('2018.06—最高人民法院党组成员、副院长、审判委员会委员、二级大法官。'
'第十三届全国人大代表'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              
              Container()
            ],
          )),
        );
  }
}
