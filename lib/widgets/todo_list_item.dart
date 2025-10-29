import 'package:flutter/material.dart';

class TodoListItem extends StatelessWidget {
  TodoListItem({
    required this.title,
    required this.isDone,
    required this.isFavorite,
  });

  String title;
  bool isDone;
  bool isFavorite;

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
          Text(title),
          Icon(Icons.star_border),
        ],
      ),
    );
  }
}
