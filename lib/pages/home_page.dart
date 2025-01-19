import 'package:flutter/material.dart';
import 'package:to_do_app/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of tasks
  List toDoList = [
    ["Make Tutorial", false],
    ["Do Exercise", false],
  ];

  //  checkbox is tapped
  void checkBoxChanged(bool? value, int index) {
    setState((){
      toDoList[index][1] = !toDoList[index][1];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text("TO DO"),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return TodoTile(taskName: toDoList[index][0], taskCompleted: toDoList[index][1], onChanged: (value) => checkBoxChanged(value, index));
        },
      ),
    );
  }
}
