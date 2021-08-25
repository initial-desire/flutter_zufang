import 'package:flutter/material.dart';

class InfoItem {
  final String id;
  final String title;
  final String imageUri;
  final String source;
  final String time;
  final String navigateUri;

  const InfoItem(this.id, this.title, this.imageUri, this.source, this.time, this.navigateUri);
}

const List<InfoItem> infoData = [
  const InfoItem('1','置业选中 | 安贞西里 三室一厅 河间的箍牙别院', 'https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900', '新华网', '两天前', 'login'),
  const InfoItem('2','置业选中 | 安贞西里 三室一厅 河间的箍牙别院', 'https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900', '新华网', '两天前', 'login'),
  const InfoItem('3','置业选中 | 安贞西里 三室一厅 河间的箍牙别院', 'https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900', '新华网', '两天前', 'login'),
  const InfoItem('4','置业选中 | 安贞西里 三室一厅 河间的箍牙别院', 'https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900', '新华网', '两天前', 'login'),
  const InfoItem('5','置业选中 | 安贞西里 三室一厅 河间的箍牙别院', 'https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900', '新华网', '两天前', 'login'),
];
