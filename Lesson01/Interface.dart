 
abstract class Db{
  String uri;//接口属性
  add();
  remove();
  save();
}

abstract class MoreInterface{
  moreMethod();
}

class Mysql implements Db,MoreInterface{
  @override
  add() {
    // TODO: implement add
    return null;
  }

  @override
  remove() {
    // TODO: implement remove
    return null;
  }

  @override
  save() {
    // TODO: implement save
    return null;
  }

  @override
  String uri;

  @override
  moreMethod() {
    // TODO: implement moreMethod
    return null;
  }
   
}

class MsSql implements Db{
  @override
  add() {
    // TODO: implement add
    return null;
  }

  @override
  remove() {
    // TODO: implement remove
    return null;
  }

  @override
  save() {
    // TODO: implement save
    return null;
  }

  @override
  String uri;
  
}

//利用mix实现多继承
//1.不能实现构造方法
//2.不能继承父类
//3.同名方法，后面覆盖前面
class Mix extends MoreInterface with Mysql,MsSql{


}

class FanChi{
  T getData<T>(T value){
    return value;
  }
}
  T getData<T>(T value){
    return value;
  }
void main(){
 var c = getData(1111);
 print(c);

 var a = getData<String>("123");
 print(a);

 List list = new List<String>();
 list.add("1111");
 //list.add(12312);//错误写法

 MemeryCache cache = new MemeryCache<String>();
 cache.setByKey("index", "kaka");
}

abstract class Cache<T>{
  getByKey(String key);
  void setByKey(String key,T value);
}

class FileCache<T> extends Cache<T>{
  @override
  getByKey(String key) {
     
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print("我是文件缓存，我存的值是${value}");
  }
  
}

class MemeryCache<T> extends Cache<T>{
  @override
  getByKey(String key) {
     
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print("我是内存缓存，我存的值是${value}");
  }
  
}



