import 'package:flutter/material.dart';
import 'package:yuque/config/theme.dart';

class DocPage extends StatefulWidget {
  final String title;

  DocPage({Key key, this.title}) : super(key: key);

  @override
  DocPageState createState() => DocPageState();
}

class DocPageState extends State<DocPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: YQColor.primary1,
        title: Text('语雀'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: YQColor.primary1,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
