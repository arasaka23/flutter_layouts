import 'package:flutter/material.dart';

class ComplexPage1 extends StatelessWidget {
  const ComplexPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F6F2),
      appBar: AppBar(
        title: const Text('Meditate', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFF9C500),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(color: const Color(0xFF00A79D), borderRadius: BorderRadius.circular(12)),
                    child: const Text('All', style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.wb_sunny, size: 50, color: Colors.orange[800]),
                      const SizedBox(width: 10),
                      const Icon(Icons.nightlight_round, size: 50, color: Colors.black),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('A Song of Moon', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Start with the basics', style: TextStyle(color: Colors.black54, fontSize: 14)),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Start >', style: TextStyle(color: Colors.black)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 1.1,
              children: [
                _buildGridCard('The Sleep Hour', '3 Sessions', const Color(0xFFF7B15B), Icons.bedtime),
                _buildGridCard('Easy on the Mission', '5 minutes', const Color(0xFFF8E79C), Icons.cloud),
                _buildGridCard('Relax with Me', '3 Sessions', const Color(0xFF6BC2F5), Icons.waves),
                _buildGridCard('Sun and Energy', '8 minutes', const Color(0xFF4FB8A7), Icons.wb_sunny),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridCard(String title, String subtitle, Color color, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(icon, size: 40, color: Colors.white.withOpacity(0.8)),
          const Spacer(),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 4),
          Text(subtitle, style: const TextStyle(fontSize: 12, color: Colors.black54)),
        ],
      ),
    );
  }
}