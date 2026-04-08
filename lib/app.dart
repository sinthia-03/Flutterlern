import 'package:flutter/material.dart';
import 'package:untitled4/M-12/cls-1.dart';
import 'package:untitled4/M-12/cls-2,list.dart';
import 'package:untitled4/M-12/grid.dart';
import 'package:untitled4/c3.dart';
import 'package:untitled4/m-11-cls-3.dart';
import 'package:untitled4/m-17/models/task.dart';
import 'package:untitled4/m11-c1.dart';
import 'package:untitled4/m11-c2.dart';
import 'package:untitled4/provider/prctics_provider.dart';
import 'Home.dart';
import 'M-14/cls-2.dart';
import 'M-14/cls-3.dart';
import 'M-14/cls1-.dart';
import 'M-14/test2.dart';
import 'M-15/cls-1.dart';

import 'M-18/CRUD/crud.dart';
import 'M-18/cls1.dart';
import 'm-13/DragDrop.dart';
import 'm-13/cls-1.dart';
import 'm-13/m-13cls-2.dart';
import 'm-13/m-13cls-3.dart';
import 'm-13/widget/m13cls-4(Animation).dart';
import 'm-17/task home pase.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.blue.shade50,

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(5),
            )
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
              fontSize: 18
          ),
          labelStyle: TextStyle(
            fontSize: 15,
            color: Colors.blue,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50)
          ),

        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        textTheme: TextTheme(
          bodySmall: TextStyle(
            fontSize: 18
          )

        )


      ),
      title: 'Flutter 14',

      routes: {
        '/home' : (context) =>Home(),
        '/login' : (context) =>Module11(),
        '/navi' : (context) =>Navigation(),
        '/bar' : (context)=> NaviUi(),
        '/size' : (context) => Datatask(),
        '/bottomNav':(context)=> Bottom(),
        '/Appiii' : (context)=> Appi(),
        '/crud' : (context)=> Todomodel(),
        '/provider' : (context)=> PrcticsProvider(),

        '/test2' : (context) {
          final args = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
              return Test2(name: args['name'], price: args['price'], onTap: args['onTap']);
        }
      },
      initialRoute: '/provider',

    );
  }
}
