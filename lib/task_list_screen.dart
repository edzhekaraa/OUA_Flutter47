import 'package:flutter/material.dart';

class TaskListScreen extends StatelessWidget {
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
          // Orta üst kısımda logo
          Center(
            child: Image.asset(
              'assets/Gorevlerimlong.png', // Logo PNG dosyanız
              height: 160, // Yüksekliği isteğinize göre ayarlayın
            ),
          ),
          SizedBox(height: 20),
          // Görev Ekle kutuları
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20),
              children: List.generate(6, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/addTask'); // Görev ekleme sayfasına gitmek için
                    },
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
                        leading: Image.asset(
                          'assets/floating.png', // Görev Ekle simgesi
                          width: 24, // Simge genişliği
                          height: 24, // Simge yüksekliği
                        ),
                        title: Text(
                          'Görev Ekle',
                          style: TextStyle(
                            color: Colors.purple, // Mor renk
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
