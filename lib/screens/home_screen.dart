import 'package:flutter/material.dart';
import '../widgets/glass_card.dart';
import '../theme/styles.dart';
import '../theme/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Greeting
              const Text(
                "Good morning, Qurbanovlar",
                style: AppTextStyles.appTitle,
              ),

              const SizedBox(height: 20),

              // Glass card example
              GlassCard(
                child: Row(
                  children: [
                    Icon(Icons.wb_sunny, color: AppColors.neonCyan, size: 32),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Weather",
                          style: AppTextStyles.neonLabel,
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Baku • 28°C",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Another card
              GlassCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Family Members",
                      style: AppTextStyles.neonLabel,
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Tap to view contacts",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // ŞAQQULİ block (placeholder)
              GlassCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "ŞAQQULİ Assistant",
                      style: AppTextStyles.neonLabel,
                    ),
                    SizedBox(height: 8),
                    Text(
                      "“Ay bala, nə lazımdır?”",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}