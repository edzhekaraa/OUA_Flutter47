import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_provider.dart';
import 'task_list_screen.dart'; // Görevlerim sayfası
import 'profile_screen.dart'; // Profil sayfası
import 'add_task_screen.dart'; // Görev ekleme sayfası
import 'main_screen.dart'; // Ana sayfa
import 'reminder_screen.dart'; // Hatırlatıcı sayfası
import 'completed_tasks_screen.dart'; // Tamamlanan görevler sayfası
import 'calendar_screen.dart'; // Takvim sayfası
import 'login_screen.dart'; // Giriş ekranı sayfası
import 'email_login_screen.dart'; // E-posta ile giriş ekranı
import 'register_screen.dart'; // Kayıt ekranı
import 'splash_screen.dart'; // Splash ekranı

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Görev Yönetim Uygulaması',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purple, // Ana renk şeması
            primary: Colors.purple, // Ana renk
            onPrimary: Colors.white, // Ana renk üzerindeki yazı rengi
            secondary: Colors.deepPurple, // İkincil renk
            onSecondary: Colors.white, // İkincil renk üzerindeki yazı rengi
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, // Beyaz arka plan
              foregroundColor: Colors.purple, // Mor yazı rengi
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Yumuşak köşeler
              ),
              padding: const EdgeInsets.symmetric(vertical: 15), // Buton yüksekliği
              minimumSize: const Size(double.infinity, 50), // Buton genişliği
            ),
          ),
        ),
        home: SplashScreen(), // Splash ekranını burada tanımlıyoruz
        routes: {
          '/taskList': (context) => TaskListScreen(),
          '/profile': (context) => ProfileScreen(),
          '/addTask': (context) => AddTaskScreen(),
          '/main': (context) => MainScreen(), // Ana sayfa için rota
          '/reminder': (context) => ReminderScreen(), // Hatırlatıcı sayfası
          '/completedTasks': (context) => CompletedTasksScreen(), // Tamamlanan görevler sayfası
          '/calendar': (context) => CalendarScreen(), // Takvim sayfası
          '/login': (context) => LoginScreen(), // Giriş ekranı sayfası
          '/emailLogin': (context) => EmailLoginScreen(), // E-posta ile giriş ekranı
          '/register': (context) => RegisterScreen(), // Kayıt ekranı
        },
      ),
    ),
  );
}
