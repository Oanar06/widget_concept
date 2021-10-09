import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: MyHomePage(title: 'Flutter Homework'),
    );
  }
}

Row dartRowunuOlustur() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        width: 75,
        height: 75,
        alignment: Alignment.center,
        color: Colors.blue.shade200,
        child: Text(
          'D',
          style: TextStyle(fontSize: 64),
        ),
      ),
      Container(
        width: 75,
        height: 75,
        alignment: Alignment.center,
        color: Colors.blue.shade400,
        child: Text(
          'A',
          style: TextStyle(fontSize: 64),
        ),
      ),
      Container(
        width: 75,
        height: 75,
        alignment: Alignment.center,
        color: Colors.blue.shade600,
        child: Text(
          'R',
          style: TextStyle(fontSize: 64),
        ),
      ),
      Container(
        width: 75,
        height: 75,
        alignment: Alignment.center,
        color: Colors.blue.shade800,
        child: Text(
          'T',
          style: TextStyle(fontSize: 64),
        ),
      ),
    ],
  );
}

Column dersleriColumnOlustur() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 15),
          color: Colors.blue.shade200,
          child: Text(
            'E',
            style: TextStyle(fontSize: 64),
          ),
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 15),
          color: Colors.blue.shade300,
          child: Text(
            'R',
            style: TextStyle(fontSize: 64),
          ),
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 15),
          color: Colors.blue.shade400,
          child: Text(
            'S',
            style: TextStyle(fontSize: 64),
          ),
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 15),
          color: Colors.blue.shade500,
          child: Text(
            'L',
            style: TextStyle(fontSize: 64),
          ),
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 15),
          color: Colors.blue.shade600,
          child: Text(
            'E',
            style: TextStyle(fontSize: 64),
          ),
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 15),
          color: Colors.blue.shade700,
          child: Text(
            'R',
            style: TextStyle(fontSize: 64),
          ),
        ),
      ),
      Expanded(
        child: Container(
          width: 75,
          height: 75,
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 15),
          color: Colors.blue.shade800,
          child: Text(
            'İ',
            style: TextStyle(fontSize: 64),
          ),
        ),
      ),
    ],
  );
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            dartRowunuOlustur(),
            Expanded(child: dersleriColumnOlustur()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
