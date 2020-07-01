import 'Person.dart';
import 'Boy.dart';
main(){
  print('hello dart');



 
  var b = "123,123123";
  print(b);


  var a;
  var c = a??10;
  print(c);

  String str = "123";
  var mynumber = int.parse(str);
  print(mynumber is double);

  switch(a){
    case "1":
    print("1");
    break;
    case "2":
    print("2");
    break;
    default:
    print("3");
  }


  List l = ["香蕉","苹果","西瓜"];
  print(l[0]);



  Map m = {
    "name":"1",
    "aa":"2"
  };
  print(m);
  Map m1 = new Map();
  m1.addAll({"work":"1123"});
  print(m1);


  l.forEach((value){
      print(value);
  });
    m.forEach((key,value){
      print(value);
  });

  printMao();

  int getNum(){
    var n = 123;
    return n;
  }

  print(getNum());

  print(printUserInfo("jack",222));
  print(printNameMethod("jack",age:20));

 fn1(){
   print("fn1");
 }
 fn2(fn){
   fn();
 }
 fn2(fn1);



 //箭头函数
 List ll = [1,2,3,4,5];
 var newList = ll.map((value)=>value>2?value*2:value);
 print(newList);

 //匿名方法
 var p = (){
   print("ppppp fun");
 };
 p();

 //自执行方法
 ((n){
   print("我是自执行方法$n");
 })(12);

 //闭包---常驻内存，又不会污染全局（具备全局变量和局部变量的特点）
 fn(){
   var a = 123;
   return(){
     a++;
     print(a);
   };
 }
 var fb = fn();
 fb();//124
 fb();//125
 fb();//126


//类
Person pclass = new Person("1",22);
 pclass.name;
 pclass.age;
 pclass.printMyself();
 Person.staticMethod();

//级联操作
 pclass..name="張三"
       ..age=100
       ..printMyself();

//继承
       Boy boy = new Boy("12",33,"男性");
       boy..name="男孩"
          ..age=5
          ..printMyself();


}


String printUserInfo(String name,[int age,String sex="男"]){
  if(age == null){
return "姓名:$name--性别:$sex--年龄:保密";
  }
  return "姓名:$name--性别:$sex--年龄:$age";
  
}

String printNameMethod(String name,{int age,String sex="男"}){
  if(age == null){
return "姓名:$name--性别:$sex--年龄:保密";
  }
  return "姓名:$name--性别:$sex--年龄:$age";
  
}

void printMao(){
  print("mao");
}