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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Welcome To The World Of \'FLUTTER + DART\'',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                Text(
                  'This is my first (Well Not the FIRST) Flutter App',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 550))
              ]),
        ));
  }
}
