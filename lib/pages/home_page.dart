import 'package:chatapp_firebase/service/auth_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    AuthService authService = AuthService();
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text("LOGOUT"),
          onPressed: () {
            authService.signOut();
          },
        ),
      ),
    );
  }
}
