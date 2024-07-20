import 'package:flutter/material.dart';

class CompletedTasksScreen extends StatelessWidget {
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
          // Görevler içeriği
          Center(
            child: Text(
              'Burada tamamlanan görevler listelenecek.',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
