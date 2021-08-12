import 'package:flutter/material.dart';

class IndexRecommendItem {

  final String title;
  final String subTitle;
  final String imageUri;
  final String navigateUri;

  const IndexRecommendItem(
      this.title, this.subTitle, this.imageUri, this.navigateUri);
}

const List<IndexRecommendItem> indexRecommendData = [
  const IndexRecommendItem('家住罗秀路','归属的感觉', 'static/images/user_icon.png', 'login'),
  const IndexRecommendItem('宜居三四环','大都市生活', 'static/images/user_icon.png', 'login'),
  const IndexRecommendItem('家住罗秀路','归属的感觉', 'static/images/user_icon.png', 'login'),
  const IndexRecommendItem('家住罗秀路','归属的感觉', 'static/images/user_icon.png', 'login'),
];
