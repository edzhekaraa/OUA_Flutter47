import 'package:flutter/material.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  _ReminderScreenState createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  TimeOfDay _selectedTime = TimeOfDay.now();

  void _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Sol üst köşede geri butonu ve sağ üst köşede profil butonu
          Container(
            padding: const EdgeInsets.only(top: 40, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/back_button.png', // Geri butonu PNG dosyanız
                    width: 24, // Buton simgesi genişliği
                    height: 24, // Buton simgesi yüksekliği
                  ),
                  onPressed: () {
                    Navigator.pop(context); // Geri gitmek için
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/profile.png', // Profil butonu PNG dosyanız
                    width: 24, // Buton simgesi genişliği
                    height: 24, // Buton simgesi yüksekliği
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile'); // Profil sayfasına gitmek için
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // Alarm zamanı seçimi
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Alarm Zamanı:',
                    style: TextStyle(fontSize: 24),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    _selectedTime.format(context),
                    style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _selectTime,
                    child: const Text('Zaman Seç'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
