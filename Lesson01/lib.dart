//自定义库
import 'Animal.dart';

//系统库
import 'dart:io';
import 'dart:math';


//第三方库
import 'package:http/http.dart' as http;
//部份导入方法
import 'package:http/http.dart' show getData;
import 'package:http/http.dart' hide getData;