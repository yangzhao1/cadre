import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SearchPageState();
  }

} 
class SearchPageState extends State<SearchPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('高级查询'),),
      body: SingleChildScrollView(
        child: Column(
          
        ),
      ),
    );
  }
  Row _initType(){
    return Row ();
  }
}