import 'package:flutter/material.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Liste simulée de tâches
    final tasks = [
      {'title': 'Task 1', 'description': 'Description of Task 1'},
      {'title': 'Task 2', 'description': 'Description of Task 2'},
      {'title': 'Task 3', 'description': 'Description of Task 3'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Task List')),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return ListTile(
            title: Text(task['title']!),
            subtitle: Text(task['description']!),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/task_details',
                arguments: task,
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/task_form');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
