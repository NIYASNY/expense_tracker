import 'package:expense_tracker/apps/view/homescreen.dart';
import 'package:expense_tracker/apps/view/login.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expense Tracker",
      theme: ThemeData(
        colorScheme: ColorScheme.light(
            background: Colors.grey.shade100,
            onBackground: Colors.black,
            primary: Color(0xFF00B2E7),
            secondary: Color.fromARGB(255, 5, 226, 78),
            tertiary: Color.fromARGB(255, 220, 240, 4),
            outline: Colors.grey.shade400),
      ),
      home: SignIn(),
    );
  }
}
