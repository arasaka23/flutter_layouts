import 'package:flutter/material.dart';

class SimplePage2 extends StatelessWidget {
  const SimplePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Шапка с кнопкой назад
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              // Большая картинка (заглушка)
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(Icons.play_circle_fill, size: 60, color: Colors.white),
              ),
              const SizedBox(height: 20),
              const Text(
                'Secrets of Atlantis',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text('Follow', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Карточка с информацией
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF2E1D5B), // Темно-фиолетовый
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=20'),
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Codrin', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                              Text('Host', style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                        const Icon(Icons.notifications_none, color: Colors.white),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'The Secrets of Atlantis podcast is designed for all fantasy enthusiasts, everything from debunking underwater secrets...',
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 16),
                        const SizedBox(width: 4),
                        const Text('4.8', style: TextStyle(color: Colors.white)),
                        const SizedBox(width: 16),
                        const Icon(Icons.live_tv, color: Colors.red, size: 16),
                        const Text(' Live', style: TextStyle(color: Colors.red)),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}