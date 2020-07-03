import 'package:demo/demo.dart';

class Game extends ManagedObject<_game> implements _game {}

// ignore: camel_case_types
class _game {
  @primaryKey//作为主键 == @
  int gid;//id

  @Column(unique: false)
  String gtime;//时间

  @Column(unique: false)
  String gnumber;//闯关次数

  @Column(unique: false)
  String tnumber;//题数
  
}



