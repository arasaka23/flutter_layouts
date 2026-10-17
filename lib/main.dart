import 'package:flutter/material.dart';
import 'pages/simple_page_1.dart';
import 'pages/simple_page_2.dart';
import 'pages/complex_page_1.dart';
import 'pages/complex_page_2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Учебные макеты',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
      ),
      home: const HomeMenu(),
    );
  }
}

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      ('Простой макет 1', const SimplePage1()),
      ('Простой макет 2', const SimplePage2()),
      ('Сложный макет 1', const ComplexPage1()),
      ('Сложный макет 2', const ComplexPage2()),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Макеты Figma → Flutter')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, i) => Card(
          child: ListTile(
            leading: CircleAvatar(child: Text('${i + 1}')),
            title: Text(items[i].$1),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => items[i].$2),
            ),
          ),
        ),
      ),
    );
  }
}