import 'package:flutter/material.dart';

class TaskDetailsPage extends StatelessWidget {
  const TaskDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Récupère les données de la tâche via les arguments
    final task = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(title: const Text('Task Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: ${task['title']}', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Text('Description: ${task['description']}'),
          ],
        ),
      ),
    );
  }
}
