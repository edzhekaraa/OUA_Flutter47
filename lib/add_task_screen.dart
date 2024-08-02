import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  DateTime? _dueDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Görev Ekle'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Başlık'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Açıklama'),
            ),
            TextButton(
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                setState(() {
                  _dueDate = selectedDate;
                });
              },
              child: Text(_dueDate == null
                  ? 'Tarih Seç'
                  : 'Seçilen Tarih: ${DateFormat('dd-MM-yyyy').format(_dueDate!)}'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final task = {
                  'id': DateTime.now().millisecondsSinceEpoch, // Örnek ID
                  'title': _titleController.text,
                  'description': _descriptionController.text,
                  'dateTime': _dueDate?.toIso8601String(),
                  'isCompleted': false,
                };
                Navigator.pop(context, task); // Görev ile birlikte geri dön
              },
              child: const Text('Görev Ekle'),
            ),
          ],
        ),
      ),
    );
  }
}
