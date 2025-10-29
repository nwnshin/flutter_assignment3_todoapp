import 'package:flutter/material.dart';
import 'package:flutter_assignment3_todoapp/widgets/todo_class.dart';
import 'package:flutter_assignment3_todoapp/widgets/todo_list_item.dart';

class TodoView extends StatelessWidget {
  TodoView({required this.toDos});

  final List<TodoClass> toDos;
  //list index로 데이터 가져와서 화면에 리스트업하기

  @override
  Widget build(BuildContext context) {
    print(toDos.length);
    return ListView.builder(
      //todos list length 만큼 todolistitem반복
      //todos list index에 해당하는 내용 넣기
      itemCount: toDos.length,
      itemBuilder: (context, i) => TodoListItem(
        title: toDos[i].title,
        isDone: toDos[i].isDone,
        isFavorite: toDos[i].isFavorite,
      ),
    );
  }
}
