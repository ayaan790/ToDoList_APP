import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List todoList = [];

  final _mybox = Hive.box('mybox');

  void createInitialData() {
    todoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  void loadData() {
    todoList = _mybox.get("TODOLIST");
  }

  void updateDataBase() {
    _mybox.put("TODOLIST", todoList);
  }
}
