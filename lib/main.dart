import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'lab01/json_test.dart';
import 'homepage/home_main.dart';
import 'homepage/first_page.dart';
import 'homepage/second_page.dart';
import 'homepage/sign_up.dart';

void main() {
  int cmd = 5;
  print('==================');
  print('cmd: ' + cmd.toString());
  print('==================');
  if (cmd == 0) {
    getHttp();
  } else if (cmd == 1) {
    runApp(HomePage());
  } else if (cmd == 2) {
    runApp(SignUpApp());
  } else if (cmd == 3) {
    runApp(MaterialApp(home: Home()));
  } else if (cmd == 4) {
    runApp(FirstPage());
  } else {
    runApp(MyApp());
  }
}

class Home extends StatelessWidget {
  var count = 0.obs;
  @override
  Widget build(context) => Scaffold(
      appBar: AppBar(title: Text("counter")),
      body: Center(
        child: Obx(() => Text("$count")),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => count++,
      ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MobileBase',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'MobileBase'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            CloseButton(
              onPressed: () {
                getHttp();
              },
            ),
            TextButton(
              onPressed: () {
                print('aa');
              },
              child: Text("sdklfj"),
            ),
            TextButton(
              onPressed: () {
                Get.to(FirstPage());
              },
              child: Text("First Page"),
            ),
            TextButton(
              onPressed: () {
                Get.to(SecondPage());
              },
              child: Text("Second Page"),
            ),
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
