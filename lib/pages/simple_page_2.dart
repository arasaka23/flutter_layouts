import 'package:flutter/material.dart';

class SimplePage2 extends StatelessWidget {
  const SimplePage2({super.key});

  @override
  Widget build(BuildContext context) {
    final products = List.generate(
      10,
      (i) => ('Товар ${i + 1}', 'Описание товара номер ${i + 1}', 1000 + i * 250),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Каталог')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: products.length,
        itemBuilder: (context, i) {
          final (title, subtitle, price) = products[i];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              contentPadding: const EdgeInsets.all(12),
              leading: Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: Colors.indigo.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(Icons.image, color: Colors.indigo),
              ),
              title: Text(title),
              subtitle: Text(subtitle),
              trailing: Text('$price ₽',
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}