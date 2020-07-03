import '../demo.dart';

class Practice extends ManagedObject<_practice> implements _practice {}

class _practice {
  @primaryKey//作为主键 == @
  int pid;//id 

  @Column(unique: false)
  String ptime;//时间

  @Column(unique: false)
  String type;//类型

  @Column(unique: false)
  String rapid;//速度

  @Column(unique: false)
  String pnumber;//总计题数
  
  @Column(unique: false)
  String ppid;//废的，不用管
}


