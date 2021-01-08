
import 'package:flutter/material.dart';
import 'theme_settings.dart';
import 'todolist.dart';


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

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
                child: Text('To Do List',
                  textAlign: TextAlign.left,),
                onPressed: () => Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => new TodoList()
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