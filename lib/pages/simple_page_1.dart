import 'package:flutter/material.dart';

class SimplePage1 extends StatelessWidget {
  const SimplePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B9C90), // Зеленый цвет фона как в макете
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Логотип (заглушка)
              const Icon(Icons.spa, size: 80, color: Colors.white),
              const SizedBox(height: 20),
              const Text(
                'medinow',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Meditate With Us!',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              const Spacer(),
              // Кнопка Apple
              SizedBox(
                width: 300,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.apple, color: Colors.black),
                  label: const Text('Sign in with Apple'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Кнопка Email
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal.shade300,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text('Continue with Email or Phone'),
                ),
              ),
              const SizedBox(height: 20),
              // Кнопка Google
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Continue With Google',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}