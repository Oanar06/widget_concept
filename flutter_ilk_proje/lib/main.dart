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

Container containerOlustur(String harf, Color renk, {double margin=0}) {
  return Container(
    width: 75,
    height: 75,
    alignment: Alignment.center,
    margin: EdgeInsets.only(top: margin),
    color:renk,
    child: Text(
      harf,
      style: TextStyle(fontSize: 64),
    ),
  );
}

Row dartRowunuOlustur() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
     containerOlustur('D', Colors.blue.shade100),
     containerOlustur('A', Colors.blue.shade300),
     containerOlustur('R', Colors.blue.shade500),
     containerOlustur('T', Colors.blue.shade700),
      
    ],
  );
}

Column dersleriColumnOlustur() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Expanded(
        child: containerOlustur('E', Colors.blue.shade200, margin: 15),  
      ),
      Expanded(
        child: containerOlustur('R', Colors.blue.shade300, margin: 15),
      ),
      Expanded(
        child: containerOlustur('S', Colors.blue.shade400, margin: 15),
      ),
      Expanded(
        child: containerOlustur('L', Colors.blue.shade500, margin: 15),
      ),
      Expanded(
        child: containerOlustur('E', Colors.blue.shade600, margin: 15),
      ),
      Expanded(
        child: containerOlustur('R', Colors.blue.shade700, margin: 15),
      ),
      Expanded(
        child: containerOlustur('I', Colors.blue.shade800, margin: 15),
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
