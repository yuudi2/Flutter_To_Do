import 'package:fast_app_base/common/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/data/memory/todo_status.dart';
import '../../../../common/data/memory/vo_todo.dart';
class TodoStatusWidget extends StatelessWidget {
  final Todo todo;

  const TodoStatusWidget(this.todo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: () {
        context.holder.changeTodoStatus(todo);
      },
      child: SizedBox(
          width: 50,
          height: 50,
          child: switch (todo.status) {
            TodoStatus.complete => Checkbox(
              value: true,
              onChanged: null,
              fillColor: MaterialStateProperty.all(
                context.appColors.checkBoxColor,
              ),
            ),
            TodoStatus.incomplete => const Checkbox(
              value: false,
              onChanged: null,
            ),
            TodoStatus.ongoing => const Fire()
          }),
    );
  }
}