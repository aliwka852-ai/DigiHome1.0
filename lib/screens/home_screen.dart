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

              // ===== ЧАСЫ + ДАТА =====
              Text(
                _formattedTime(),
                style: AppTextStyles.titleLarge,
              ),
              const SizedBox(height: 4),
              Text(
                _formattedDate(),
                style: AppTextStyles.subtitle,
              ),

              const SizedBox(height: 24),

              // ===== КАЛЕНДАРЬ (ГОРИЗОНТАЛЬНЫЙ) =====
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

              const SizedBox(height: 24),

              // ===== ПОГОДА =====
              GlassCard(
                height: 150,
                child: Row(
                  children: [
                    const Icon(
                      Icons.wb_sunny_rounded,
                      color: Colors.amber,
                      size: 40,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Bakı", style: AppTextStyles.cardTitle),
                          SizedBox(height: 4),
                          Text("28°C • Günəşli", style: AppTextStyles.cardValue),
                          SizedBox(height: 4),
                          Text("Külək: 12 km/h", style: AppTextStyles.cardSubtitle),
                          Text("Rütubət: 62%", style: AppTextStyles.cardSubtitle),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // ===== СЕМЬЯ (КАРУСЕЛЬ) =====
              const Text("Ailə üzvləri", style: AppTextStyles.cardTitle),
              const SizedBox(height: 12),

              SizedBox(
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _familyCard(
                      name: "Ata",
                      status: "Online",
                    ),
                    _familyCard(
                      name: "Ana",
                      status: "Offline",
                    ),
                    _familyCard(
                      name: "Qardaş",
                      status: "Online",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // ===== ŞAQQULİ (ПОКА ПРОСТАЯ КАРТОЧКА-ЗАГЛУШКА) =====
              GlassCard(
                height: 150,
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white24,
                     
