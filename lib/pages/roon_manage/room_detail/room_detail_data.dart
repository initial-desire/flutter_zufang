
class RoomDetailData {
  String id;
  String title;
  String community;
  String subTitle;
  int size;
  String floor;
  int price;
  String roomType;
  String oriented;  //朝向
  List<String> houseImages;
  List<String> tags;
  List<String> appliances;

  RoomDetailData({
      this.id,
      this.title,
      this.community,
      this.subTitle,
      this.size,
      this.floor,
      this.price,
      this.roomType,
      this.oriented,
      this.houseImages,
      this.tags,
      this.appliances});
}

var defaultData = RoomDetailData(id: "1", title: "整租 罗秀路 低价", community: "长桥七村",
subTitle: '地铁0距离，商场 https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900', size: 56, floor: '低楼层', price: 5500, oriented: '南',
roomType: '两室', appliances: ['衣柜', '淋浴', '冰箱', '洗衣机'], tags: ['近地铁', '新装修'],
houseImages: [
  'https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900',
  'https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900',
  'https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900',
]);