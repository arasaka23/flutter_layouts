import 'package:flutter/material.dart';

class SimplePage1 extends StatelessWidget {
  const SimplePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF129C90), 
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(flex: 2),
              const Icon(Icons.spa, size: 80, color: Colors.white),
              const SizedBox(height: 10),
              const Text(
                'medinow',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 10),
              const Text(
                'Meditate With Us!',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              const Spacer(flex: 4),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.apple, color: Colors.black),
                label: const Text('Sign in with Apple', style: TextStyle(fontSize: 16)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  minimumSize: const Size(300, 55),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF26B4A8),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(300, 55),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                child: const Text('Continue with Email or Phone', style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: const Text('Continue With Google', style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}