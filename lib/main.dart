import 'package:flutter/material.dart';
import 'sign_up_email_screen.dart';
import 'login_screen.dart';
import 'otp_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Flutter App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(),
      onGenerateRoute: (settings) {
        if (settings.name == '/otp') {
          final args = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (context) => OtpScreen(email: args['email']),
          );
        }
        if (settings.name == '/signup') {
          return MaterialPageRoute(
            builder: (context) => const SignUpEmailScreen(),
          );
        }
        return null;
      },
    );
  }
}