import 'package:demo/demo.dart';

class Q_a extends ManagedObject<_q_a> implements _q_a {}

class _q_a {
  @primaryKey//作为主键 == @
  int tid;//id

  @Column(unique: false)
  String question;//题目

  @Column(unique: false)
  String type;

   @Column(unique: false)
  String answer;


}


