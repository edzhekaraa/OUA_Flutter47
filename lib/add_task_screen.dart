import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
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
          SizedBox(height: 20),
          // Ortada GÖREV EKLE yazılı gri kutu
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.grey[200], // Gri arka plan
              borderRadius: BorderRadius.circular(12), // Yuvarlak köşeler
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 3), // Kutu gölgesi
                ),
              ],
            ),
            child: Center(
              child: Text(
                'GÖREV EKLE',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple, // Mor renk
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          // Hazır görev kutuları
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20),
              children: [
                taskOption('Egzersiz yap'),
                taskOption('Çalış'),
                taskOption('Su iç'),
                taskOption('Toplantı'),
                taskOption('Sağlıklı beslen'),
                taskOption('Özelleştirmek isteyen için görev ekle'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget taskOption(String task) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200], // Gri arka plan
          borderRadius: BorderRadius.circular(12), // Yuvarlak köşeler
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 3), // Kutu gölgesi
            ),
          ],
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          title: Text(
            task,
            style: TextStyle(
              color: Colors.purple, // Mor renk
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            // Görev seçme işlemi
          },
        ),
      ),
    );
  }
}
