import 'package:flutter/material.dart';
import 'package:hello_world/basic_widgets/alert_dialog.dart';
import 'package:hello_world/basic_widgets/date_picker.dart';
import 'package:hello_world/basic_widgets/increment.dart';
import 'package:hello_world/basic_widgets/input_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'My Increment App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
      body: const Row(
        children: [
        Expanded(child: MyIncrement(title: 'My Increment App')),
        Expanded(child: MyAlert()),
        Expanded(child: MyInput()),
        Expanded(child: MyDate(title: 'Contoh Date Picker',))
        ]
      )
    );
  }
}
