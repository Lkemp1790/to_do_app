import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  // reference a box
  final _myBox = Hive.box("myBox");

  // run this method if this is the first time opening the app
  void createInitalData() {
    toDoList = [
      ["Make tutorial", false],
      ["Do exercise", false],
    ];
  }

  // load data from db
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
