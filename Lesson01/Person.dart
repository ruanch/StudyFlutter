import 'Animal.dart';
class Person extends Animal{
  String name = "zhang shan";
  int age = 23;
  String _privateName = "li shi"; //私有属性
  static int num = 1111;//静态成员
 //构造函数
 Person(String name,int age){
   this.name = name;
   this.age = age;

   print("这是构造函数，自动调用");
 }
  void printMyself(){
    print("$name----$age");
  }


  void _privateMethod(){
    print("这是一个私有方法");
    num = 111;
    age =1111;
  }


  static staticMethod(){
    print("静态方法");
    num = 222;
  }

  @override
  eat() {
   print ("人在吃饭");
  }
}
