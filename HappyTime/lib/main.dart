import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager_app/register_screen.dart';
import 'task_list_screen.dart';
import 'task_provider.dart';
import 'login_screen.dart';
import 'loading_page.dart'; // Yeni eklenen dosya

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
        title: 'Görev Yönetim Uygulaması',
        theme: ThemeData(
          primaryColor: Color(0xFF1c6071), // AppBar rengi
          scaffoldBackgroundColor: Color(0xFFeeeee0), // Arka plan rengi
          primarySwatch: Colors.blue,
        ),
        home: LoadingPage(), // Yüklenme ekranını başlangıç ekranı olarak belirtiyoruz
        routes: {
          '/taskList': (context) => TaskListScreen(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(),
        },
      ),
    ),
  );
}
