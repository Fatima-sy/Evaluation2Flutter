import 'package:flutter/material.dart';
import 'task_list.dart';
import 'task_form.dart';
import 'task_details.dart';

void main() {
  runApp(const TaskManagementApp());
}

class TaskManagementApp extends StatelessWidget {
  const TaskManagementApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Management',
      initialRoute: '/',
      routes: {
        '/': (context) => const TaskListPage(),
        '/task_form': (context) => const TaskFormPage(),
        '/task_details': (context) => const TaskDetailsPage(),
      },
    );
  }
}
