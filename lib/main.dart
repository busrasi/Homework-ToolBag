import 'package:flutter/material.dart';
import 'package:mp_mytoolbag/todolist.dart';

import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'MainPage.dart';
import "package:flutter_localizations/src/material_localizations.dart";

//import 'theme_settings.dart';

import 'theme.dart';
import 'theme_settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override


  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      builder: (_) => ThemeChanger(ThemeData.dark()),

      child:MaterialAppWithTheme(



      ),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme =Provider.of<ThemeChanger>(context);
    return MaterialApp(
        routes: <String, WidgetBuilder>{
        '/MainPage': (BuildContext context) => new MainPage(),
          '/ThemeSettings': (BuildContext context) => new ThemeSettings(),
          '/Todolist': (BuildContext context) => new TodoList(),
        },


      home: MainPage(),
      //home:ThemeSettings(),
      theme: theme.getTheme(),
    );
  }
}



