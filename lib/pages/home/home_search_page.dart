import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SearchPageState();
  }
}

class SearchPageState extends State<SearchPage> {
  String _type = '';
  String _education = '';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('高级查询'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _initTypeRow(),
            _initNameRow(),
            _initHomeTownRow(),
            _initAgeRow(),
            _initTakeOfficeRow(),
            _initEdeRow(),
            _initWorkYearRow(),
            SizedBox(
              height: 20,
            ),
            _initSubmitRow(),
          ],
        ),
      ),
    );
  }

  Row _initTypeRow() {
    return _initBaseRow(
      '干部类别',
      GestureDetector(
        child: Container(
          alignment: Alignment.centerLeft,
          height: 50,
          margin: EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 40),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Text(_type.length == 0 ? '请选择' : _type),
        ),
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return _showTypeList();
              });
        },
      ),
    );
  }

  Row _initNameRow() {
    return _initBaseRow(
      '姓名',
      Container(
        alignment: Alignment.centerLeft,
        height: 50,
        margin: EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 40),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Row _initHomeTownRow() {
    return _initBaseRow(
      '籍贯',
      Container(
        alignment: Alignment.centerLeft,
        height: 50,
        margin: EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 40),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Row _initAgeRow() {
    return _initBaseRow(
      '年龄段',
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            width: 80,
            margin: EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 40),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            height: 1,
            width: 100,
            color: Colors.grey,
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            width: 80,
            margin: EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 40),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _initTakeOfficeRow() {
    return _initBaseRow(
      '任职职级年限',
      Container(
        alignment: Alignment.centerLeft,
        height: 50,
        margin: EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 40),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Row _initEdeRow() {
    return _initBaseRow(
      '学历',
      GestureDetector(
        child: Container(
          alignment: Alignment.centerLeft,
          height: 50,
          margin: EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 40),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: Text(_education.length == 0 ? '请选择' : _education),
        ),
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return _showEduList();
              });
        },
      ),
    );
  }

  Row _initWorkYearRow() {
    return _initBaseRow(
      '参加工作年限',
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            width: 80,
            margin: EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 40),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            height: 1,
            width: 100,
            color: Colors.grey,
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            width: 80,
            margin: EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 40),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row _initSubmitRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        GestureDetector(
          child: Container(
            width: MediaQuery.of(context).size.width / 4,
            height: 60,
            color: Colors.blue,
            child: Center(
              child: Text(
                '查询',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        GestureDetector(
          child: Container(
            width: MediaQuery.of(context).size.width / 4,
            height: 60,
            color: Colors.blue,
            child: Center(
              child: Text(
                '重置',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          onTap: (){
            setState(() {
              _type = '';
              _education = '';
            });
          },
        ),
      ],
    );
  }

  SimpleDialog _showTypeList() {
    final _types = ['审判员', '书记员', '审判长', '副院长', '院长'];
    return SimpleDialog(
      title: Text('请选择干部类型'),
      children: _types
          .map(
            (e) => SimpleDialogOption(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Text(e),
              ),
              onPressed: () {
                setState(() {
                  _type = e;
                });
                Navigator.pop(context);
              },
            ),
          )
          .toList(),
    );
  }

  SimpleDialog _showEduList() {
    final _types = ['大专', '本科', '硕士', '博士', '博士后'];
    return SimpleDialog(
      title: Text('请选择学历类型'),
      children: _types
          .map(
            (e) => SimpleDialogOption(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: Text(e),
              ),
              onPressed: () {
                setState(() {
                  _education = e;
                });
                Navigator.pop(context);
              },
            ),
          )
          .toList(),
    );
  }

  Row _initBaseRow(String title, Widget w) {
    return Row(children: <Widget>[
      SizedBox(
        width: 40,
      ),
      Container(
        width: 80,
        child: Text(
          title,
          style: TextStyle(fontSize: 16),
        ),
      ),
      Expanded(
        child: w,
      ),
    ]);
  }
}
