import 'package:flutter/material.dart';

class NoTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        '할 일',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
      ),
    );
  }
}
