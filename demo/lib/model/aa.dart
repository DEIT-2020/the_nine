import 'package:demo/demo.dart';

class Aa extends ManagedObject<_aa> implements _aa {}

class _aa {
  @primaryKey//作为主键 == @
  int tid;//id

  @Column(unique: false)
  String question;//题目

  @Column(unique: false)
  String type;


}


