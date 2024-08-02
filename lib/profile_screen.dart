import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7f39fb), // Arka plan rengi
      appBar: AppBar(
        backgroundColor: const Color(0xFF7f39fb), // AppBar arka plan rengi
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back, // Beyaz ok simgesi
            color: Colors.white, // Simge rengi beyaz
            size: 30, // Simge boyutu
          ),
          onPressed: () {
            Navigator.of(context).pop(); // Önceki ekrana dön
          },
        ),
        elevation: 0, // AppBar gölgesini kaldır
        title: const Text(
          'Profil',
          style: TextStyle(color: Colors.white), // Başlık rengi
        ),
        centerTitle: true, // Başlığı ortala
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profil resmi
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile_picture.png'), // Profil resmi
              ),
              const SizedBox(height: 20),

              // Profil resmini değiştirme butonu
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                onPressed: () {
                  // Profil resmini değiştirme işlemi
                },
                child: const Text('Profil Resmini Değiştir', style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 40),

              // Çıkış Yap butonu
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/login'); // Giriş ekranına yönlendir
                },
                child: const Text('Çıkış Yap', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
