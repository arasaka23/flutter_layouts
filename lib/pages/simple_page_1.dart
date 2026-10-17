import 'package:flutter/material.dart';

class SimplePage1 extends StatelessWidget {
  const SimplePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Профиль')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 56,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=12'),
            ),
            const SizedBox(height: 16),
            Text('Иван Иванов',
                style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 4),
            const Text('ivan@example.com',
                style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 24),
            _row(Icons.phone, 'Телефон', '+7 900 000-00-00'),
            _row(Icons.location_on, 'Город', 'Москва'),
            _row(Icons.work, 'Профессия', 'Flutter-разработчик'),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {},
                child: const Text('Редактировать профиль'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _row(IconData icon, String title, String value) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 16),
            Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
            const Spacer(),
            Text(value),
          ],
        ),
      );
}