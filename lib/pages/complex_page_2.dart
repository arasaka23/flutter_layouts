import 'package:flutter/material.dart';

class ComplexPage2 extends StatelessWidget {
  const ComplexPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            // Шапка профиля
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=11'),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Evening', style: TextStyle(color: Colors.grey, fontSize: 12)),
                        Text('Dan Smith', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                      ],
                    ),
                  ),
                  const Icon(Icons.search),
                  const SizedBox(width: 16),
                  const Icon(Icons.notifications_none),
                ],
              ),
            ),
            
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Заголовок "My Weekly Tasks"
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('My Weekly Tasks', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            Text('10 Tasks Pending', style: TextStyle(color: Colors.grey, fontSize: 12)),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.tune, size: 20),
                            const SizedBox(width: 12),
                            const Icon(Icons.add, size: 20),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Горизонтальный список задач
                    SizedBox(
                      height: 160,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildTaskCard('Create a Landing Page', 'Mon, 12 July 2022', Colors.purple[50]!),
                          const SizedBox(width: 12),
                          _buildTaskCard('Develop a Website', 'Mon, 30 July 2022', Colors.orange[50]!),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Заголовок "Today's Tasks"
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Today's Tasks", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            Text('18 Tasks Pending', style: TextStyle(color: Colors.grey, fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Список задач (Карточки)
                    _buildTodayCard('Design 2 App Screens', 'Crypto Wallet App', true),
                    const SizedBox(height: 12),
                    _buildTodayCard('Design Homepage', 'Water Company Website', false),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // Нижняя панель навигации
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Projects'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Members'),
        ],
      ),
    );
  }

  Widget _buildTaskCard(String title, String date, Color bgColor) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                child: const Text('UI/UX', style: TextStyle(fontSize: 10, color: Colors.purple)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(8)),
                child: const Text('High', style: TextStyle(fontSize: 10, color: Colors.white)),
              ),
            ],
          ),
          const Spacer(),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.calendar_today, size: 12, color: Colors.grey),
              const SizedBox(width: 4),
              Text(date, style: const TextStyle(fontSize: 10, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTodayCard(String title, String subtitle, bool isDone) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 4),
                Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isDone ? Colors.blue : Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.check, color: isDone ? Colors.white : Colors.grey, size: 16),
          ),
        ],
      ),
    );
  }
}