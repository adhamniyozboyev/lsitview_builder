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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Empty List Test')),
        body: ListView.builder(
          itemCount: 3,
          itemBuilder: ((context, int index) {
            return ListTile(
              title: Text('Item${index + 1000589105901589259}'),
            );
          }),
        ));
  }
}
