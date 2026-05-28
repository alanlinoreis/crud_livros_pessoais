import 'package:flutter/material.dart';
import 'pages/list_page.dart';

void main() {
  runApp(const CrudApp());
}

class CrudApp extends StatelessWidget {
  const CrudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha Biblioteca',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00695C),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF0D1F1E),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xFF0D2C2A),
          foregroundColor: Color(0xFF80CBC4),
        ),
        cardTheme: CardThemeData(
          elevation: 4,
          color: const Color(0xFF122E2B),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              color: Color(0xFF1E4D47),
              width: 1,
            ),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: const Color(0xFF122E2B),
          labelStyle: const TextStyle(color: Color(0xFF80CBC4)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF1E4D47)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF1E4D47)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFF26A69A), width: 2),
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xFF26A69A),
          foregroundColor: Colors.white,
          shape: CircleBorder(),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Color(0xFFE0F2F1)),
          bodyMedium: TextStyle(color: Color(0xFFB2DFDB)),
          bodySmall: TextStyle(color: Color(0xFF80CBC4)),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xFF80CBC4),
        ),
        dividerColor: const Color(0xFF1E4D47),
      ),
      home: const ListPage(),
    );
  }
}