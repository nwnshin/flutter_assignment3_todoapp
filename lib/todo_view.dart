import 'package:flutter/material.dart';
import 'package:flutter_assignment3_todoapp/widgets/todo_class.dart';

class TodoView extends StatelessWidget {
  TodoView({required this.toDo})

  final TodoClass toDo;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle, 
              border: Border.all(color: Theme.of(context).dividerColor),
            ),
            child: Icon(Icons.check),
          ),
          Text("sdfsd"), 
          Icon(Icons.star_border),
        ]),
    );
  }
}
