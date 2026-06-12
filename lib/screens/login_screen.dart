import 'package:flutter/material.dart';
import '../widgets/glass_card.dart';
import '../widgets/neon_button.dart';
import '../theme/styles.dart';
import '../theme/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: GlassCard(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "DIGIHOME",
                  style: AppTextStyles.appTitle,
                ),
                const SizedBox(height: 24),

                // Email field
                TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: AppTextStyles.neonLabel,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.neonCyan.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.neonCyan,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Password field
                TextField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: AppTextStyles.neonLabel,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.neonPurple.withOpacity(0.4),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.neonPurple,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),

                const SizedBox(height: 24),

                NeonButton(
                  text: "LOGIN",
                  onTap: () {
									  Navigator.push(
					            context,
									    MaterialPageRoute(builder: (_) => const HomeScreen()),
									  );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
