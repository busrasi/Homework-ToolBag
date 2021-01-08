import 'package:flutter/material.dart';
import 'todolist.dart';

import 'package:provider/provider.dart';
import 'MainPage.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
//import 'theme_settings.dart';

import 'theme.dart';
import 'theme_settings.dart';

void main() => runApp(
  EasyLocalization(
      supportedLocales: [
        Locale('en', 'US'),
        Locale('de', 'DE')],
      path: 'assets/translations', // <-- change patch to your
      fallbackLocale: Locale('en', 'US'),

      child: MyApp()
  ),
);

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
    print(context.locale);



    return MaterialApp(
      title: 'title'.tr(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,

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



