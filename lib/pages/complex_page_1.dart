import 'package:flutter/material.dart';

class ComplexPage1 extends StatelessWidget {
  const ComplexPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Meditate', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Большая карточка
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.amber[400],
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text('All', style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    children: [
                      Icon(Icons.brightness_5, size: 60, color: Colors.orange),
                      Icon(Icons.nightlight_round, size: 60, color: Colors.black),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'A Song of Moon',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Start with the basics', style: TextStyle(color: Colors.black54)),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Start >', style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Сетка карточек (GridView)
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 1.2,
              children: [
                _buildGridCard('The Sleep Hour', '3 Sessions', Colors.orange[300]!),
                _buildGridCard('Easy on the Mission', '5 minutes', Colors.amber[200]!),
                _buildGridCard('Relax with Me', '3 Sessions', Colors.blue[300]!),
                _buildGridCard('Sun and Energy', '8 minutes', Colors.teal[300]!),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridCard(String title, String subtitle, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 4),
          Text(subtitle, style: const TextStyle(fontSize: 12, color: Colors.black54)),
        ],
      ),
    );
  }
}