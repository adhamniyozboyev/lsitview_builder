import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  // String s = 'Adham';
  List l = [
    'Adham',
    'Bobur',
    'Gayrat',
    'Olimjon',
    'Murod',
    'Ozodbek',
    'Elizavet',
    'Hesreti var',
    'Mirjalol',
    "Ro'ziboy",
    'Jurabek'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text('Empty List Test'))),
        body: ListView.builder(
            itemCount: l.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.yellow,
                ),
                margin: EdgeInsets.all(10),
                height: 50,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      child: Text(index.toString()),
                    ),
                    Text(
                      '    ${l[index]}',
                      style: TextStyle(fontSize: 30),
                    )
                  ],
                ),
              );
            }));
  }
}
