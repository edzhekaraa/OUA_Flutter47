import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7f39fb), // Arka plan rengi
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Orta üst kısımda logo
                  Image.asset(
                    'assets/loadingscreen.png', // Logo dosya yolu
                    height: 360, // Logo yüksekliği
                    fit: BoxFit.contain, // Logo bozulmadan fit etme
                  ),
                  SizedBox(height: 40), // Logo ile butonlar arasındaki boşluk

                  // Giriş Yap butonu
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Beyaz arka plan
                        foregroundColor: Colors.purple, // Mor yazı rengi
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // Yumuşak köşeler
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15), // Buton yüksekliği
                        minimumSize: Size(double.infinity, 50), // Buton genişliği
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/emailLogin'); // Email login ekranına yönlendir
                      },
                      child: Text('Giriş Yap', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  
                  // Kayıt Ol butonu
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white, // Beyaz arka plan
                        foregroundColor: Colors.purple, // Mor yazı rengi
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // Yumuşak köşeler
                        ),
                        padding: EdgeInsets.symmetric(vertical: 15), // Buton yüksekliği
                        minimumSize: Size(double.infinity, 50), // Buton genişliği
                      ),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/register'); // Kayıt ol ekranına yönlendir
                      },
                      child: Text('Kayıt Ol', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
