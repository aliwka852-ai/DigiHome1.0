import 'package:flutter/material.dart';
import '../theme/colors.dart';

class NeonButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const NeonButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              AppColors.neonPurple.withOpacity(0.8),
              AppColors.neonCyan.withOpacity(0.8),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.neonPurple.withOpacity(0.6),
              blurRadius: 16,
              spreadRadius: 2,
            ),
            BoxShadow(
              color: AppColors.neonCyan.withOpacity(0.6),
              blurRadius: 16,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
