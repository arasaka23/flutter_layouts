import 'package:flutter/material.dart';

class SimplePage2 extends StatelessWidget {
  const SimplePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F6F2), // Светло-бежевый фон как в макете
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              const SizedBox(height: 20),
              // Синяя картинка-заглушка с кнопкой Play
              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF7AC5F0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                    child: const Icon(Icons.play_arrow, color: Color(0xFF7AC5F0), size: 40),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Secrets of Atlantis',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF49E00), // Оранжевая кнопка
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text('Follow', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
              const SizedBox(height: 20),
              // Темно-фиолетовая карточка
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xFF2D175B), 
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color(0xFFE0DAFF),
                          child: Icon(Icons.person, color: Color(0xFF2D175B)),
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Codrin', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                              Text('Host', style: TextStyle(color: Colors.grey, fontSize: 14)),
                            ],
                          ),
                        ),
                        const Icon(Icons.notifications_none, color: Colors.white),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'The Secrets of Atlantis podcast is designed for all fantasy enthusiasts, everything from debunking underwater secrets...',
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.amber, size: 18),
                        const SizedBox(width: 4),
                        const Text('4.8', style: TextStyle(color: Colors.white)),
                        const Spacer(),
                        const Icon(Icons.live_tv, color: Colors.red, size: 18),
                        const SizedBox(width: 4),
                        const Text('Live', style: TextStyle(color: Colors.red)),
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