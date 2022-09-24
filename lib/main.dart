import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'RizkaFleur'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
        body: ListView(
          children: <Widget>[
            Image.network(
                "https://i.pinimg.com/564x/98/1f/2a/981f2abfbee0ead9eb9f6de5470f6828.jpg"),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(7),
              child: const Text(
                'My Favorite Bucket Flowers',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              height: 50,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10),
              color: Colors.blueGrey,
              child: const Text(
                'List Flowers',
                style: TextStyle(fontSize: 15),
              ),
            ),
            News(),
            News(),
          ],
        ));
  }
}

class News extends StatelessWidget {
  const News({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
      ),
      margin: const EdgeInsets.all(2.0),
      child: Column(children: <Widget>[
        Container(
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(width: 2, color: Colors.blue))),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Image.network(
                    "https://i.pinimg.com/564x/ce/41/cf/ce41cf7074cfa466f36283e018f7ef03.jpg"),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('cute custom buket bunga dengan keranjang rotan'),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 30,
          alignment: Alignment.centerLeft,
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Malang Sept 24, 2022'),
          ),
        )
      ]),
    );
  }
}
