import 'package:flutter/material.dart';

class ComplexPage2 extends StatelessWidget {
  const ComplexPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F9),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=11'),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Evening', style: TextStyle(color: Colors.grey, fontSize: 14)),
                        Text('Dan Smith', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      ],
                    ),
                  ),
                  const Icon(Icons.search, size: 28),
                  const SizedBox(width: 16),
                  const Icon(Icons.notifications_none, size: 28),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('My Weekly Tasks', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                            Text('10 Tasks Pending', style: TextStyle(color: Colors.grey, fontSize: 14)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.tune, size: 24, color: Colors.grey[700]),
                            const SizedBox(width: 12),
                            Icon(Icons.add, size: 24, color: Colors.grey[700]),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 170,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          _buildTaskCard('Create a Landing Page', 'Mon, 12 July 2022', const Color(0xFFF9EEFA), Colors.purple),
                          const SizedBox(width: 16),
                          _buildTaskCard('Develop a Website', 'Mon, 30 July 2022', const Color(0xFFFFF5EC), Colors.orange),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Today's Tasks", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('18 Tasks Pending', style: TextStyle(color: Colors.grey, fontSize: 14)),
                      ],
                    ),
                    const SizedBox(height: 16),
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF0084FF),
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        elevation: 10,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Projects'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.people_outline), label: 'Members'),
        ],
      ),
    );
  }

  Widget _buildTaskCard(String title, String date, Color bgColor, MaterialColor tagColor) {
    return Container(
      width: 180,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(6)),
                child: Text('UI/UX', style: TextStyle(fontSize: 10, color: tagColor)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(6)),
                child: const Text('High', style: TextStyle(fontSize: 10, color: Colors.white)),
              ),
            ],
          ),
          const Spacer(),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.calendar_today, size: 14, color: Colors.grey),
              const SizedBox(width: 4),
              Text(date, style: const TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTodayCard(String title, String subtitle, bool isDone) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 4)),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 6),
                Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 14)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isDone ? const Color(0xFF0084FF) : const Color(0xFFEBEBEB),
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.check, color: isDone ? Colors.white : Colors.grey, size: 20),
          ),
        ],
      ),
    );
  }
}