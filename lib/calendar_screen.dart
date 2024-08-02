import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  Map<DateTime, String> _notes = {};

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
                    'assets/back_button.png', // Geri butonu PNG dosyası
                    width: 24, // Buton simgesi genişliği
                    height: 24, // Buton simgesi yüksekliği
                  ),
                  onPressed: () {
                    Navigator.pop(context); // Geri gitmek için
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/profile.png', // Profil butonu PNG dosyası
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
          // Takvim
          Expanded(
            child: Center(
              child: TableCalendar(
                firstDay: DateTime.utc(2020, 1, 1),
                lastDay: DateTime.utc(2030, 12, 31),
                focusedDay: _focusedDay,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                  _addOrEditNoteForSelectedDay(selectedDay);
                },
                calendarFormat: CalendarFormat.month,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _addOrEditNoteForSelectedDay(DateTime selectedDay) {
    String? note = _notes[selectedDay];
    TextEditingController noteController = TextEditingController(text: note);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Not Ekle'),
        content: TextField(
          controller: noteController,
          decoration: const InputDecoration(hintText: 'Notunuzu girin'),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('İptal'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _notes[selectedDay] = noteController.text;
              });
              Navigator.pop(context);
            },
            child: const Text('Kaydet'),
          ),
        ],
      ),
    );
  }
}
