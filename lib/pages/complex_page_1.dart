import 'package:flutter/material.dart';

class ComplexPage1 extends StatelessWidget {
  const ComplexPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Дашборд'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [Colors.indigo, Colors.purple],
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Добро пожаловать!',
                    style: TextStyle(color: Colors.white70)),
                SizedBox(height: 6),
                Text('Ваш прогресс за неделю',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 1.5,
            children: const [
              _MetricCard(title: 'Проекты', value: '12', icon: Icons.work),
              _MetricCard(title: 'Задачи', value: '34', icon: Icons.task_alt),
              _MetricCard(title: 'Встречи', value: '5', icon: Icons.event),
              _MetricCard(title: 'Рейтинг', value: '4.8', icon: Icons.star),
            ],
          ),
          const SizedBox(height: 20),
          const Text('Последние действия',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          ...List.generate(4, (i) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(child: Text('${i + 1}')),
                title: Text('Действие ${i + 1}'),
                subtitle: Text('Описание события ${i + 1}'),
                trailing: const Icon(Icons.chevron_right),
              ),
            );
          }),
        ],
      ),
    );
  }
}

class _MetricCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  const _MetricCard(
      {required this.title, required this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.primary),
          const SizedBox(height: 8),
          Text(value,
              style:
                  const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Text(title, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}