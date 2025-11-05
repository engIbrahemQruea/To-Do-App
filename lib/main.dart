import 'package:flutter/material.dart';
import 'package:to_do_app/core/helpers/shared_pref_helper.dart';
import 'package:to_do_app/todo_app.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await SharedPrefHelper.init();
  runApp(const TodoApp());
}
