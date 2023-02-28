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
  int l = 0;
  List<String> names = [
    'Samarqand',
    'Toshkent',
    'Jizzax',
    'Namangan',
    'Buxoro',
    'Xorazm',
    'Farg\'ona',
    'Navoiy',
    'Andijon',
    'Sirdaryo',
    'Qashqadaryo',
    'Surxondaryo'
  ];
  TextEditingController _controller = TextEditingController();
  // List<Widget> lst = List.generate(10, (index) => ListTile(title: Text('${index + 1}'),));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome Uzbekistan')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
              controller: _controller,
              onSubmitted: (value) {
                setState(() {
                  names.add(value);
                  l = int.parse(_controller.text);
                  _controller.text = '';
                });
              },
            ),
            Expanded(
              child: ListView.builder(
                itemCount: l,

                // : _controller.text.length > 0
                //     ? int.parse(_controller.text)
                //     : 0,
                itemBuilder: (context, index) => ListTile(
                  leading: Text('${index + 1}'),
                  title: Text('${names[index]}'),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        names.removeAt(index);
                        l = names.length - (names.length - l) - 1;
                      });
                    },
                    icon: Icon(Icons.delete),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
