import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Tarihleri hesapla
    final now = DateTime.now();
    final firstDayOfWeek = now.subtract(Duration(days: now.weekday - 1)); // Pazartesi
    final dates = List.generate(5, (index) => firstDayOfWeek.add(Duration(days: index)));

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/mainbut.png'), // Ana sayfa simgesi
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/main');
          },
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/profile.png'), // Profil simgesi
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Hoşgeldin, Elif!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: dates.map((date) {
                  bool isSelected = date.day == now.day;
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: buildDateChip(
                      DateFormat('EEE').format(date), // Gün adı
                      DateFormat('d').format(date),    // Gün numarası
                      isSelected,
                      date.day == now.day, // Günün tarihi mi kontrol et
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1, // Aspect ratio to control the size
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                padding: const EdgeInsets.all(10.0),
                itemCount: 4, // Number of task cards
                itemBuilder: (context, index) {
                  final taskData = [
                    {'title': 'Görevlerim', 'image': 'assets/Gorevlerim.png', 'route': '/taskList'},
                    {'title': 'Tamamlanan', 'image': 'assets/Tamamlanan.png', 'route': '/completedTasks'},
                    {'title': 'Hatırlatıcı', 'image': 'assets/Hatirlatici.png', 'route': '/reminder'},
                    {'title': 'Takvim', 'image': 'assets/Takvim.png', 'route': '/calendar'},
                  ][index];
                  return buildTaskCard(
                    context,
                    taskData['title']!,
                    taskData['image']!,
                    taskData['route']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Arka plan dikdörtgen
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width, // Ekranın genişliğini kaplayacak
              height: 100, // Arka plan dikdörtgeninin yüksekliği
              decoration: BoxDecoration(
                color: Color(0xFF7f39fb), // Rengi mor yapıldı
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0), // Butonu yukarıda konumlandırmak için
                  child: FloatingActionButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/taskList');
                    },
                    child: Image.asset('assets/floating.png'), // Floating button simgesi
                    backgroundColor: Color(0xFF7f39fb), // Buton arka plan rengini mor yaptık
                    elevation: 0, // Gölgeyi kaldırır
                    highlightElevation: 0, // Tıklama anında oluşan gölgeyi kaldırır
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget buildDateChip(String day, String date, bool isToday, bool isSelected) {
    return Chip(
      label: Column(
        children: [
          Text(
            day,
            style: TextStyle(
              color: isToday ? Colors.white : (isSelected ? Colors.white : Colors.black),
            ),
          ),
          Text(
            date,
            style: TextStyle(
              color: isToday ? Colors.white : (isSelected ? Colors.white : Colors.black),
              fontWeight: isToday ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
      backgroundColor: isToday ? Colors.red : (isSelected ? Colors.purple : Colors.grey[200]),
    );
  }

  Widget buildTaskCard(BuildContext context, String title, String imagePath, String route) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent, // Background color set to transparent
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 10),
            Text(title, style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
