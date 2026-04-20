import 'package:flutter/material.dart';
import '../utils/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: AppColors.secondary,
      alignment: Alignment.center,
      child: const Text(
        "Developed with Flutter Web by M Hamza Khan © 2026",
        style: TextStyle(color: AppColors.textSecondary),
      ),
    );
  }
}
