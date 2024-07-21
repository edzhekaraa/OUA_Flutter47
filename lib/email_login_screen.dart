import 'package:flutter/material.dart';

class EmailLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7f39fb), // Arka plan rengi
      appBar: AppBar(
        backgroundColor: Color(0xFF7f39fb), // AppBar arka plan rengi
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white), // Geri butonu simgesi
          onPressed: () {
            Navigator.of(context).pop(); // Önceki ekrana dön
          },
        ),
        title: Text('Giriş Yap'), // AppBar başlığı
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
                  SizedBox(height: 40), // Logo ile form arasındaki boşluk

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
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                    ),
                    style: TextStyle(color: Colors.black), // Kullanıcı metin yazarken
                  ),
                  SizedBox(height: 20),

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
                      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
                    ),
                    style: TextStyle(color: Colors.black), // Kullanıcı metin yazarken
                  ),
                  SizedBox(height: 20),

                  // Giriş Yap butonu
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, // Siyah arka plan
                      foregroundColor: Colors.white, // Beyaz yazı rengi
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // Yumuşak köşeler
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15), // Buton yüksekliği
                      minimumSize: Size(double.infinity, 50), // Buton genişliği
                    ),
                    onPressed: () {
                      // Giriş Yap butonuna tıklama işlemi
                      Navigator.of(context).pushReplacementNamed('/main'); // MainScreen'e yönlendir
                    },
                    child: Text('Giriş Yap', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 20),

                  // Şifrenizi unuttunuz? seçeneği
                  TextButton(
                    onPressed: () {
                      // Şifrenizi unuttunuz? seçeneğine tıklama işlemi
                    },
                    child: Text(
                      'Şifrenizi unuttunuz?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Gmail ile giriş yap simgesi
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Beyaz arka plan
                      foregroundColor: Colors.black, // Siyah yazı rengi
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // Yumuşak köşeler
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15), // Buton yüksekliği
                      minimumSize: Size(double.infinity, 50), // Buton genişliği
                    ),
                    onPressed: () {
                      // Gmail ile giriş yap simgesine tıklama işlemi
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/gmail.png', // Gmail simgesi dosyanızın yolu
                          width: 24, // Simge genişliği
                          height: 24, // Simge yüksekliği
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Gmail ile giriş yap',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
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
