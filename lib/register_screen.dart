import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7f39fb), // Arka plan rengi
      appBar: AppBar(
        backgroundColor: Color(0xFF7f39fb), // AppBar arka plan rengi
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back, // Beyaz ok simgesi
            color: Colors.white, // Simge rengi beyaz
            size: 30, // Simge boyutu (daha büyük)
          ),
          onPressed: () {
            Navigator.of(context).pop(); // Önceki ekrana dön
          },
        ),
        elevation: 0, // AppBar gölgesini kaldır
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

                  // İsim giriş alanı
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'İsim', // Placeholder metin
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

                  // Şifre tekrar giriş alanı
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Şifre Tekrar', // Placeholder metin
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

                  // Hesap Oluştur butonu
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
                      // Hesap Oluştur butonuna tıklama işlemi
                    },
                    child: Text('Hesap Oluştur', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 20),

                  // Hesabınız var mı? Giriş yap seçeneği
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hesabınız var mı? ',
                        style: TextStyle(color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/login'); // Giriş yap ekranına yönlendir
                        },
                        child: Text(
                          'Giriş Yap',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline, // Altı çizili
                          ),
                        ),
                      ),
                    ],
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
