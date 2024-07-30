import 'package:flutter/material.dart';
import 'dart:async'; // Timer için
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5), // 5 saniye sonra giriş seçenekleri ekranına geçiş
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen()), // Giriş seçenekleri ekranına yönlendirme
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7f39fb), // Arka plan rengi
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/happytime.png', // Burada logo dosyanızın yolu
              height: 320, // Logo yüksekliği
            ),
            const SizedBox(height: 20),
            const RotatingWidget(), // Dönen animasyon widget'ı
          ],
        ),
      ),
    );
  }
}

class RotatingWidget extends StatefulWidget {
  const RotatingWidget({super.key});

  @override
  _RotatingWidgetState createState() => _RotatingWidgetState();
}

class _RotatingWidgetState extends State<RotatingWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat(); // Animasyonu sürekli döndür
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child: const Icon(
        Icons.refresh,
        color: Colors.white,
        size: 50,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
