import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';
import '../widgets/navbar.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: const NavBar(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 900),
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "About Me",
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 3,
                width: 100,
                color: AppColors.accent,
                margin: const EdgeInsets.only(top: 10, bottom: 30),
              ),

              const Text(
                AppConstants.intro,
                style: TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 18,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 40),

              const Text(
                "My Tech Stack",
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // SKILL CHIPS
              Wrap(
                spacing: 15,
                runSpacing: 15,
                children: AppConstants.skills.map((skill) {
                  return Chip(
                    backgroundColor: AppColors.secondary,
                    labelPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    label: Text(
                      skill,
                      style: const TextStyle(color: AppColors.accent),
                    ),
                    side: const BorderSide(color: AppColors.accent),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
