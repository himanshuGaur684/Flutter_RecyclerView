import 'package:flutter/material.dart';
import 'package:himanshu_practice/data/my_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> s = ['position 1', 'position 2', 'position 3'];
  List<MyData> list = [
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
    MyData(name: 'Himanshu', work: 'soft', time: '4:00 pm'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Recycler View for Flutter'),
        ),
        body: ListView.builder(
          itemBuilder: (context, position) {
            return Card(
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              list[position].name,
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              list[position].work,
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ]),
                    Column(
                      children: [
                        Text(list[position].time),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                            child: Icon(Icons.check, color: Colors.white)),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: list.length,
        ));
  }
}
