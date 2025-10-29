import 'package:flutter/material.dart';
import 'package:flutter_assignment3_todoapp/todo_view.dart';
import 'package:flutter_assignment3_todoapp/widgets/add_todo.dart';
import 'package:flutter_assignment3_todoapp/no_todo.dart';
import 'package:flutter_assignment3_todoapp/widgets/todo_class.dart';

class HomePage extends StatefulWidget {
  HomePage({required this.title});

  String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TodoClass> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      //addtodo에서 팝이 되면 홈페이지로 이동
      //if pop(input) todoview, if pop() notodo
      body: todoList.isEmpty
          ? NoTodo(title: widget.title)
          : TodoView(toDos: todoList),
      //[(title, description, true, false),()]
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          //클릭시 입력창 모달
          //pop시 값 리턴해서 input변수에 할당
          final input = await showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddTodo();
            },
          );
          if (input != null) {
            setState(() {
              todoList.add(input);
            });
            // print(todoList.map((i) => '${i.title} ${i.description}'));
            // print(todoList[2].title);
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
