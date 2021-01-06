import "theme.dart";
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_settings.dart';
import 'theme_settings.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return new Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            FlatButton(
              height: 60,
              minWidth: 375,
                child: Text('Theme Settings',
                  textAlign: TextAlign.left,
                ),
              onPressed: () => Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => new ThemeSettings()
              )),
            ),
            FlatButton(
                height: 60,
                minWidth: 375,
                child: Text('Notes',
                  textAlign: TextAlign.left,),
                onPressed: () => Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => new MainPage()
                )),
            ),
            FlatButton(
              height: 60,
              minWidth: 375,
              child: Text('Storage',
                textAlign: TextAlign.left,),
              onPressed: () => Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => new MainPage()
              )),
            ),
        ],
      ),
      ),
    );
  }
}