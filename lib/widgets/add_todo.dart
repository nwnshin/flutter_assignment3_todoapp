import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment3_todoapp/widgets/todo_class.dart';

class AddTodo extends StatefulWidget {
  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();

  bool isDescriptionOpen = false;
  bool isFavorite = false;

  void saveTodo() {
    String title = titleController.text.trim();
    String description = descController.text.trim(); //null처리 & 빈 처리 필요
    //만약 title이 안비었다면 input전체값을 홈페이지로 전달, 비었다면 입력하라고 팝업
    if (title.isNotEmpty) {
      final TodoClass input = TodoClass(
        title: title,
        description: description,
        isFavorite: isFavorite,
      );
      Navigator.of(context).pop(input);
    } else {
      showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text("저장하려면 할 일을 입력해주세요."),
            actions: [
              CupertinoDialogAction(
                onPressed: () {
                  Navigator.of(context).pop(); //뒤로 가기
                },
                child: Text("확인"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    descController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 12,
        left: 20,
        right: 20,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              border: InputBorder.none,
              hint: Text(
                '새 할 일',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            textInputAction: TextInputAction.done,
            maxLines: 1,
            onSubmitted: (value) {
              //엔터시 todo 생성: saveTodo
              saveTodo();
            },
          ),
          if (isDescriptionOpen == true)
            Expanded(
              child: TextField(
                controller: descController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hint: Text(
                    '세부정보 추가',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                maxLines: 3,
                textInputAction: TextInputAction.done,
                onSubmitted: (value) {
                  //엔터시 todo 생성: saveTodo
                  saveTodo();
                },
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Row(
              spacing: 12,
              children: [
                InkWell(
                  onTap: () {
                    //클릭시 isDescriptionOpen
                    setState(() {
                      isDescriptionOpen = !isDescriptionOpen;
                    });
                  },
                  child: Icon(Icons.short_text_rounded),
                ),
                InkWell(
                  onTap: () {
                    //클릭시 isFavorite
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  child: isFavorite
                      ? Icon(Icons.star)
                      : Icon(Icons.star_border),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    //클릭시 todo 생성: saveTodo
                    saveTodo();
                  },
                  child: titleController.text.isEmpty
                      ? Text("저장", style: TextStyle(color: Colors.grey))
                      : Text("저장", style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
