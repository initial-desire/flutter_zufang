import 'package:flutter/material.dart';
import 'package:huan/widgets/common_image.dart';

class SearchBar extends StatefulWidget {

  final bool showLocation;  //展示位置按钮
  final Function goBackCallback;  //回退按钮函数
  final String inputValue;  //搜索框输入值
  final String defaultInputValue; //搜索框默认值
  final Function onCancel;  //取消按钮
  final bool showMap; //展示地图按钮
  final Function onSearch;  //用户点击搜索框触发
  final ValueChanged<String> onSearchSubmit;

  const SearchBar({Key key, this.showLocation, this.goBackCallback, this.inputValue, this.defaultInputValue = '请输入搜索词', this.onCancel, this.showMap, this.onSearch, this.onSearchSubmit}) : super(key: key);  //用户输入搜索词后点击触发

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String _searchWord = '';
  TextEditingController _controller;
  FocusNode _focus;
  _onCleanSearch(){
    this._searchWord = '';
    _controller.clear();
  }
  @override
  void initState() {
    _controller = TextEditingController(text: widget.inputValue);
    _focus = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          if(widget.showLocation != null)GestureDetector(
            onTap: null,
            child: Container(
              padding: EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Icon(Icons.room, color: Colors.green, size: 16,),
                  Text('北京', style: TextStyle(color: Colors.black, fontSize: 14),)
                ],
              ),
            ),
          ),
          if(widget.goBackCallback != null)GestureDetector(
            onTap: widget.goBackCallback,
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.chevron_left, color: Colors.black,),
            ),
          ),
          Expanded(child: Container(
            height: 34,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: Colors.grey[200],
            ),
            margin: EdgeInsets.only(right: 10),
            child: TextField(
              focusNode: _focus,
              controller: _controller,
              onChanged: (String value){
                setState(() {
                  _searchWord = value;
                });
              },
              onTap: (){
                if(null == widget.onSearchSubmit){
                  _focus.unfocus();
                }
                widget.onSearch();
              },
              onSubmitted: widget.onSearchSubmit,
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(top: 1, left: 8),
                  child: Icon(Icons.search, size: 18, color: Colors.grey,),
                ),
                border: InputBorder.none,
                hintText: '请输入搜索内容',
                hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                contentPadding: EdgeInsets.only(top: -1, left: -10),
                suffixIcon: GestureDetector(
                  onTap: (){
                    _onCleanSearch();
                  },
                  child: Icon(Icons.clear, size: 18, color: _searchWord==''?Colors.grey[200]:Colors.grey,), //如果搜索词为空，让图表和背景色一直，达到隐藏效果
                ),
              ),
            ),
          )),
          if(widget.onCancel != null)GestureDetector(
            onTap: widget.onCancel,
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text('取消', style: TextStyle(fontSize: 14, color: Colors.black),),
            )
          ),
          if(widget.showMap != null)
            CommonImage('static/icon/map.png', width: 23, height: 23,)
        ],
      ),
    );
  }
}
