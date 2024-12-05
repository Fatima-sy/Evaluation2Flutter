import 'package:flutter/material.dart';

class TaskFormPage extends StatefulWidget {
  const TaskFormPage({Key? key}) : super(key: key);

  @override
  _TaskFormPageState createState() => _TaskFormPageState();
}

class _TaskFormPageState extends State<TaskFormPage> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, dynamic> _taskData = {
    'title': '',
    'description': '',
    'startDate': null,
    'endDate': null,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('New Task')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: 'Title'),
                onSaved: (value) => _taskData['title'] = value,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Description'),
                onSaved: (value) => _taskData['description'] = value,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Start Date'),
                onSaved: (value) => _taskData['startDate'] = value,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'End Date'),
                onSaved: (value) => _taskData['endDate'] = value,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _formKey.currentState?.save();
                  Navigator.pop(context, _taskData);
                },
                child: const Text('Save Task'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
