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
  List<Widget> data = [];
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, int index) {
          return Column(
            children: [
              ListTile(
                leading: IconButton(
                    onPressed: () {
                      if (controller.text != '') {
                      setState(() {
                          data.add(ListTile(
                          leading: IconButton(
                              onPressed: () {}, icon: Icon(Icons.add_a_photo)),
                              title: Text(controller.text),
                              trailing: Icon(Icons.delete),
                        ));
                      });
                      }
                    },
                    icon: Icon(Icons.add_box)),
                title: TextField(
                  controller: controller,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete_forever_rounded),
                ),
                
              ),
              Column(children: data,)
            ],
          );
        },
      ),
    );
  }
}
