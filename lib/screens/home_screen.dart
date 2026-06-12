import 'package:flutter/material.dart';
import '../widgets/glass_card.dart';
import '../theme/colors.dart';
import '../theme/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ЧАСЫ
              Text(
                _formattedTime(),
                style: AppTextStyles.titleLarge,
              ),
              const SizedBox(height: 4),
              Text(
                _formattedDate(),
                style: AppTextStyles.subtitle,
              ),

              const SizedBox(height: 25),

              // КАЛЕНДАРЬ
              SizedBox(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(7, (i) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: GlassCard(
                        width: 70,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              _weekday(i),
                              style: AppTextStyles.cardSubtitle,
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "${10 + i}",
                              style: AppTextStyles.cardValue,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),

              const SizedBox(height: 25),

              // ПОГОДА
              const GlassCard(
                height: 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hava", style: AppTextStyles.cardTitle),
                    SizedBox(height: 8),
                    Text("Bakı • 28°C", style: AppTextStyles.cardValue),
                    SizedBox(height: 4),
                    Text("Külək: 12 km/h", style: AppTextStyles.cardSubtitle),
                    Text("Rütubət: 62%", style: AppTextStyles.cardSubtitle),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // КАРУСЕЛЬ СЕМЬИ
              Text("Ailə üzvləri", style: AppTextStyles.cardTitle),
              const SizedBox(height: 12),

              SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _familyCard("Ata", "Online"),
                    _familyCard("Ana", "Offline"),
                    _familyCard("Qardaş", "Online"),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // ŞAQQULİ
              const GlassCard(
                height: 160,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white24,
                      child: Icon(Icons.person, size: 45, color: Colors.white),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        "Ay bala, nə lazımdır?",
                        style: AppTextStyles.cardValue,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ====== ВСПОМОГАТЕЛЬНЫЕ ФУНКЦИИ ======

  static String _formattedTime() {
    final now = DateTime.now();
    return "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}";
  }

  static String _formattedDate() {
    final now = DateTime.now();
    return "${now.day}.${now.month}.${now.year}";
  }

  static String _weekday(int i) {
    const days = ["B.E", "Ç.A", "Ç", "C.A", "C", "Ş", "B"];
    return days[i];
  }

  Widget _familyCard(String name, String status) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: GlassCard(
        width: 120,
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white24,
              child: Icon(Icons.person, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text(name, style: AppTextStyles.cardValue),
            Text(status, style: AppTextStyles.cardSubtitle),
          ],
        ),
      ),
    );
  }
}
