
class RoomListItemData {
  final int id;
  final String title;
  final String subTitle;
  final String imageUri;
  final List<String> tags;
  final int price;

  const RoomListItemData(this.id, this.title, this.subTitle, this.imageUri, this.tags, this.price);

}

const List<RoomListItemData> dataList = [
  const RoomListItemData(1,'南大街','两室一厅','https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900',['贵贵贵贵贵贵','地铁房'], 8900),
  const RoomListItemData(2,'南大街','两室一厅','https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900',['贵贵贵'], 8900),
  const RoomListItemData(3,'南大街','两室一厅','https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900',['贵贵贵'], 8900),
  const RoomListItemData(4,'南大街','两室一厅','https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900',['贵贵贵','精装修'], 8900),
  const RoomListItemData(5,'南大街','两室一厅','https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900',['贵贵贵'], 8900),
  const RoomListItemData(6,'南大街','两室一厅','https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900',['贵贵贵'], 8900),
  const RoomListItemData(7,'南大街','两室一厅','https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900',['贵贵贵'], 8900),
  const RoomListItemData(8,'南大街','两室一厅','https://saas-qw.qfangimg.com/pro/182a1e06-9f2d-4680-b2a0-5cec53372d53.jpg-w1200x900',['贵贵贵'], 8900),
];