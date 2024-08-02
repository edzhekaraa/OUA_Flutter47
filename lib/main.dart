import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_provider.dart';
import 'task_list_screen.dart'; // Görevlerim sayfası
import 'profile_screen.dart'; // Profil sayfası
import 'main_screen.dart'; // Ana sayfa
import 'reminder_screen.dart'; // Hatırlatıcı sayfası
import 'completed_tasks_screen.dart'; // Tamamlanan görevler sayfası
import 'calendar_screen.dart'; // Takvim sayfası
import 'login_screen.dart'; // Giriş ekranı sayfası
import 'register_screen.dart'; // Kayıt ekranı
import 'splash_screen.dart'; // Splash ekranı
import 'add_task_screen.dart'; // Görev ekleme sayfası
import 'task_detail_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Görev Yönetim Uygulaması',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.purple,
            primary: Colors.purple,
            onPrimary: Colors.white,
            secondary: Colors.deepPurple,
            onSecondary: Colors.white,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(vertical: 15),
              minimumSize: const Size(double.infinity, 50),
            ),
          ),
        ),
        home: const SplashScreen(),
        routes: {
          '/taskList': (context) => const TaskListScreen(),
          '/profile': (context) => const ProfileScreen(),
          '/main': (context) => const MainScreen(),
          '/reminder': (context) => const ReminderScreen(),
          '/completedTasks': (context) => const CompletedTasksScreen(),
          '/calendar': (context) => const CalendarScreen(),
          '/login': (context) => const LoginScreen(),
          '/register': (context) => const RegisterScreen(),
          '/addTask': (context) => const AddTaskScreen(),
          '/taskDetail': (context) => const TaskDetailScreen(), // Add this line
        },
      ),
    ),
  );
}
