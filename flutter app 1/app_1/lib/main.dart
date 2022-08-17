import 'package:flutter/material.dart';

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
      theme: ThemeData(brightness: Brightness.light),
      darkTheme:
          ThemeData(brightness: Brightness.dark //add dark mode to the app
              ),
      home: const MyHomePage(title: 'HOT RELOAD'),
      debugShowCheckedModeBanner: false,
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

  void _decrementCounter() {
    setState(() {
      _counter--;
      if (_counter < 1) {
        debugPrint(
            'Already On zero, Can\'t go Any Down'); //print meaasge to inform user is on zero
        _counter = 0; //reset the counter to zero
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hot Reload'),
        ),
        body: Center(
          child: Column(children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 25)),
            const Text('Welcome To The World Of \'FLUTTER + DART\'',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent)),
            const Padding(padding: EdgeInsets.only(bottom: 250)),
            const Text(
              'This is my first (Well Not the FIRST) Flutter App',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            const Text(
              'Try Pressing Add or Subtract icon',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Ink(
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(), color: Colors.blue),
                  child: IconButton(
                    onPressed: _incrementCounter,
                    icon: const Icon(Icons.add),
                    splashRadius: 20,
                    splashColor: Colors.white,
                  ),
                ),
                Text(
                  '$_counter',
                  style: const TextStyle(fontSize: 25),
                ),
                Ink(
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(), color: Colors.blue),
                  child: IconButton(
                    onPressed: _decrementCounter,
                    icon: const Icon(Icons.remove),
                    splashRadius: 20,
                    splashColor: Colors.white,
                  ),
                )
              ],
            ),
          ]),
        ));
  }
}
