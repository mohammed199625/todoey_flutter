import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  final Function checkBoxCallBack;
  final Function longPressCallBack;
  TasksTile({this.isChecked, this.taskTile, this.checkBoxCallBack,this.longPressCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:longPressCallBack ,
      title: Text(
        taskTile,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}
