import 'package:demo/demo.dart';

class QQ extends ManagedObject<_qq> implements _qq {}

class _qq {
  @primaryKey//作为主键 == @
  int tid;//id

  @Column(unique: false)
  String question1;//题目

  @Column(unique: false)
  String question2;

  @Column(unique: false)
  String question3;
  
   @Column(unique: false)
  String question4;

   @Column(unique: false)
  String question5;


}


