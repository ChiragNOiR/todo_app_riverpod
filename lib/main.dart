import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/ui/pages/home_screen.dart';

void main() => runApp(const TodosApp());

class TodosApp extends StatelessWidget {
  const TodosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todo App',
        theme: ThemeData(
            fontFamily: GoogleFonts.dmSans().fontFamily,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white,
                centerTitle: true,
                iconTheme: IconThemeData(color: Colors.white),
                toolbarTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ))),
        home: const HomeScreen(),
      ),
    );
  }
}
