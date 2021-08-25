import 'package:flutter/material.dart';
import 'package:huan/pages/home/info/info.dart';
import 'package:huan/pages/home/info/info_item_data.dart';
import 'package:huan/pages/home/info/item_widget.dart';
import 'package:huan/widgets/search_bar/search_bar_index.dart';

class News extends StatefulWidget {

  final List<InfoItem> dataList;

  const News({Key key, this.dataList}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: SearchBar(
        onSearch: (){
          Navigator.of(context).pushNamed('search');
        },),backgroundColor: Colors.white,),
      body: ListView(
        children: [
          Padding(padding:  EdgeInsets.only(bottom: 10)),
          Info(),
          Info(),
          Info(),
        ],
      ),
    );
  }
}

