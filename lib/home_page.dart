import 'package:flutter/material.dart';
import 'package:flutter_assignment3_todoapp/todo_view.dart';
import 'package:flutter_assignment3_todoapp/widgets/add_todo.dart';
import 'package:flutter_assignment3_todoapp/no_todo.dart';
import 'package:flutter_assignment3_todoapp/widgets/todo_class.dart';

class HomePage extends StatelessWidget {
  HomePage({required this.title});

  String title;
  List<TodoClass> todoList = []; //todolist 리스트 변수 생성

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: TodoView(toDo: todoList),
      // NoTodo(title: title),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //클릭시 입력창 모달
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddTodo();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
