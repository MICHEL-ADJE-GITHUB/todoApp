import 'package:flutter/material.dart';
import 'package:todoey_app/models/task.dart';
import 'package:todoey_app/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {

  late final List<Task> tasks;

  TasksList(this.tasks);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        isChecked: widget.tasks[index].isDone,
        taskTitle: widget.tasks[index].name,
        checkboxCallback : (bool? checkBoxState) {
          setState(() {
            widget.tasks[index].toogleDone();
          });
        }
      );
    }, itemCount: widget.tasks.length,);
  }
}
