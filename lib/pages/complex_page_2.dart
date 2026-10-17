import 'package:flutter/material.dart';

class ComplexPage2 extends StatelessWidget {
  const ComplexPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Лента'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Все'),
              Tab(text: 'Популярное'),
              Tab(text: 'Новое'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _FeedTab(popular: false),
            _FeedTab(popular: true),
            _FeedTab(popular: false, newest: true),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => _showCreateSheet(context),
          icon: const Icon(Icons.add),
          label: const Text('Создать'),
        ),
      ),
    );
  }

  void _showCreateSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (_) => Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom + 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Новая запись',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Заголовок',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            const TextField(
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Описание',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Сохранить'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FeedTab extends StatelessWidget {
  final bool popular;
  final bool newest;
  const _FeedTab({this.popular = false, this.newest = false});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      padEnds: false,
      controller: PageController(viewportFraction: 0.9),
      itemCount: 6,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.primaries[i % Colors.primaries.length]
                        .withOpacity(0.3),
                    child: const Center(
                      child: Icon(Icons.image, size: 64),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        popular
                            ? 'Популярная карточка ${i + 1}'
                            : newest
                                ? 'Новая карточка ${i + 1}'
                                : 'Карточка ${i + 1}',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        'Краткое описание записи, которое показывает, как '
                        'выглядят карточки в ленте на разных табах.',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}