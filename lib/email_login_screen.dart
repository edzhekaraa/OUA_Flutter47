import 'package:flutter/material.dart';

class EmailLoginScreen extends StatelessWidget {
  const EmailLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7f39fb), // Arka plan rengi
      appBar: AppBar(
        backgroundColor: const Color(0xFF7f39fb), // AppBar arka plan rengi
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white), // Geri butonu simgesi
          onPressed: () {
            Navigator.of(context).pop(); // Önceki ekrana dön
          },
        ),
        title: const Text('Giriş Yap'), // AppBar başlığı
        centerTitle: true, // Başlığı ortala
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Orta üst kısımda logo
                  Image.asset(
                    'assets/loadingscreen.png', // Burada logo dosyanızın yolu
                    height: 260, // Logo yüksekliği
                    width: 260, // Logo genişliği
                    fit: BoxFit.contain, // Logo bozulmadan fit etme
                  ),
                  const SizedBox(height: 40), // Logo ile form arasındaki boşluk

                  // Email giriş alanı
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'E-posta', // Placeholder metin
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.6), // Soluk siyah renk
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                    ),
                    style: const TextStyle(color: Colors.black), // Kullanıcı metin yazarken
                  ),
                  const SizedBox(height: 20),

                  // Şifre giriş alanı
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Şifre', // Placeholder metin
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.6), // Soluk siyah renk
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                    ),
                    style: const TextStyle(color: Colors.black), // Kullanıcı metin yazarken
                  ),
                  const SizedBox(height: 20),

                  // Giriş Yap butonu
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, // Siyah arka plan
                      foregroundColor: Colors.white, // Beyaz yazı rengi
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // Yumuşak köşeler
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 15), // Buton yüksekliği
                      minimumSize: const Size(double.infinity, 50), // Buton genişliği
                    ),
                    onPressed: () {
                      // Giriş Yap butonuna tıklama işlemi
                      Navigator.of(context).pushReplacementNamed('/main'); // MainScreen'e yönlendir
                    },
                    child: const Text('Giriş Yap', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 20),

                  // Şifrenizi unuttunuz? seçeneği
                  TextButton(
                    onPressed: () {
                      // Şifrenizi unuttunuz? seçeneğine tıklama işlemi
                    },
                    child: const Text(
                      'Şifrenizi unuttunuz?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
