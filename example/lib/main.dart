import 'package:flutter/material.dart';

import 'package:xcontext/xcontext.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('xcontext'),
        ),
        body: Example(),
      ),
    );
  }
}

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextDirection textDirection = context.textDirection;
    print('Text direction: $textDirection}');
    return Wrap(
      children: [
        for (final button in [
          RaisedButton(
            color: Colors.orange,
            onPressed: () {
              context.showDatePicker(
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(Duration(days: 7)),
              );
            },
            child: Text('Date picker'),
          ),
          RaisedButton(
            color: Colors.red,
            onPressed: () {
              context.navigator
                  .push(MaterialPageRoute(builder: (_) => ExampleRoute()));
            },
            child: Text('Navigator push'),
          ),
          RaisedButton(
            color: Colors.indigo,
            onPressed: () {
              context.showModalBottomSheet(
                builder: (_) => BottomSheet(
                  builder: (_) => Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Popper(),
                  ),
                  onClosing: () {},
                ),
              );
            },
            child: Text('Show Modal Bottom Sheet'),
          ),
          RaisedButton(
            color: Colors.cyanAccent,
            onPressed: () {
              final time = context.showTimePicker(initialTime: TimeOfDay.now());
              print('selected time is $time');
            },
            child: Text('Show Time Picker'),
          ),
          RaisedButton(
            color: Colors.green,
            onPressed: () {
              context.showAboutDialog(
                applicationName: 'xcontext example app',
                applicationIcon: FlutterLogo(),
                applicationLegalese: 'Copyright 2020',
                applicationVersion: '1.2.3',
                children: [
                  Text('Thank you for using this package!'),
                  Text('❤️'),
                ],
              );
            },
            child: Text('Show About Dialog'),
          ),
        ])
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: button,
          )
      ],
    );
  }
}

class ExampleRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Popper(),
      ),
    );
  }
}

class Popper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        context.navigator.pop();
      },
      child: Text('pop!'),
    );
  }
}
