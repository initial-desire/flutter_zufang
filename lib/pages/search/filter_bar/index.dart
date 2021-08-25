import 'package:flutter/material.dart';
import 'package:huan/pages/search/filter_bar/data.dart';
import 'package:huan/utils/common_picker.dart';

import 'item.dart';

class FilterBar extends StatefulWidget {
  final ValueChanged<FilterBarResult> onChange;

  const FilterBar({Key key, this.onChange}) : super(key: key);

  @override
  _FilterBarState createState() => _FilterBarState();
}

class _FilterBarState extends State<FilterBar> {
  bool isAreaActive = false;
  bool isRentTypeActive = false;
  bool isPriceTypeActive = false;
  bool isFilterActive = false;

  String areaId = '';
  String rentTypeId = '';
  String priceTypeId = '';
  List<String> moreIds = [];

  _onAreaChange(context) {
    setState(() {
      isAreaActive = true;
    });
    var result = CommonPicker.showPicker(context, areaList.map((e) => e.name).toList(), 0, 300);

    result.then((index) {
      if(index == null)return;
      setState(() {
        areaId = areaList[index].id;
      });
      _onChange();
    }).whenComplete(() {
      isAreaActive = false;
    });
  }
  _onRentTypeChange(context) {
    setState(() {
      isRentTypeActive = true;
    });
    var result = CommonPicker.showPicker(context, rentTypeList.map((e) => e.name).toList(), 0, 300);

    result.then((index) {
      if(index == null)return;
      setState(() {
        rentTypeId = rentTypeList[index].id;
      });
      _onChange();
    }).whenComplete(() {
      isRentTypeActive = false;
    });
  }
  _onPriceTypeChange(context) {
    setState(() {
      isPriceTypeActive = true;
    });
    var result = CommonPicker.showPicker(context, priceList.map((e) => e.name).toList(), 0, 300);

    result.then((index) {
      if(index == null)return;
      setState(() {
        priceTypeId = priceList[index].id;
      });
      _onChange();
    }).whenComplete(() {
      isPriceTypeActive = false;
    });
  }
  _onFilterChange(context) {
    Scaffold.of(context).openEndDrawer();
  }

  _onChange(){
    if(widget.onChange!=null){
      widget.onChange(FilterBarResult(
        areaId: areaId,
        rentTypeId: rentTypeId,
        priceId: priceTypeId,
        moreIds: moreIds
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black12, width: 1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Item(title: '区域', isActive: isAreaActive, onTap: _onAreaChange,),
          Item(title: '方式', isActive: isRentTypeActive, onTap: _onRentTypeChange,),
          Item(title: '租金', isActive: isPriceTypeActive, onTap: _onPriceTypeChange,),
          Item(title: '筛选', isActive: isFilterActive, onTap: _onFilterChange,),
        ],
      ),
    );
  }
}
