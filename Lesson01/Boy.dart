import 'Person.dart';
class Boy extends Person{
  String sex;
  Boy(String name, int age,String sex) : super(name, age)
  {
    this.sex = sex;
  }
   
   run(){
     print("跑");
   }
   @override
   void printMyself(){
     print("覆写父类方法");
   }
}
