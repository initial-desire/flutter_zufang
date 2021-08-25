
// 结果数据类型
class FilterBarResult {
  final String areaId;
  final String priceId;
  final String rentTypeId;
  final List<String> moreIds;

  FilterBarResult({this.areaId, this.priceId, this.rentTypeId, this.moreIds});
}

// 通用类型
class GeneralType {
  final String id;
  final String name;

  GeneralType(this.id, this.name);
}

List<GeneralType> areaList = [
  GeneralType('1', '区域1'),
  GeneralType('2', '区域2'),
  GeneralType('3', '区域3'),
];

List<GeneralType> priceList = [
  GeneralType('1', '4000'),
  GeneralType('2', '5000'),
  GeneralType('3', '6000'),
];

List<GeneralType> rentTypeList = [
  GeneralType('1', '整租'),
  GeneralType('2', '合租'),
  GeneralType('3', '不租'),
];

List<GeneralType> roomTypeList = [
  GeneralType('1', '一室两厅'),
  GeneralType('2', '两室两厅'),
  GeneralType('3', '三室两厅'),
];

List<GeneralType> orientedTypeList = [
  GeneralType('1', '朝南'),
  GeneralType('2', '朝北'),
  GeneralType('3', '朝西'),
];

List<GeneralType> floorList = [
  GeneralType('1', '4'),
  GeneralType('2', '5'),
  GeneralType('3', '6'),
];
