import 'package:flutter/material.dart';
import 'package:huan/pages/home/tab_index.dart';
import 'package:huan/pages/info/index.dart';
import 'package:huan/pages/search/searcn_index.dart';
import 'package:huan/widgets/page_content.dart';

// 四个tab内容区
List<Widget> tabViewList = [
  TableIndex(), //首页
  TabSearch(),  //搜索
  News(), // 资讯
  PageContent(name: '我的',),
];

// 四个BottomNavigationBarItem
List<BottomNavigationBarItem> barItemList = [
  BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
  BottomNavigationBarItem(icon: Icon(Icons.search), label: '搜索'),
  BottomNavigationBarItem(icon: Icon(Icons.info), label: '咨询'),
  BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: '我的'),
];

class HomePage extends StatefulWidget {

  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: barItemList,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}


