import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import this
import '../utils/colors.dart';
import '../utils/constants.dart';
import '../widgets/navbar.dart';
import '../widgets/animated_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = size.width > 800;

    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: const NavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isDesktop ? 100 : 30,
            vertical: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Use a Row for Desktop (Text Left, Image Right) and Column for Mobile
              Flex(
                direction: isDesktop ? Axis.horizontal : Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // TEXT SECTION
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hi, my name is",
                          style: TextStyle(
                            color: AppColors.accent,
                            fontSize: 18,
                            fontFamily: 'FiraCode',
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          AppConstants.name,
                          style: TextStyle(
                            color: AppColors.textPrimary,
                            fontSize: 60,
                            fontWeight: FontWeight.w900,
                            height: 1.1,
                          ),
                        ),
                        const Text(
                          AppConstants.designation,
                          style: TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          AppConstants.aboutMe,
                          style: TextStyle(
                            color: AppColors.textSecondary,
                            fontSize: 18,
                            height: 1.6,
                          ),
                        ),
                        const SizedBox(height: 50),

                        // Buttons Row
                        Row(
                          children: [
                            AnimatedButton(
                              text: "Check my work",
                              onTap: () =>
                                  Navigator.pushNamed(context, '/projects'),
                            ),
                            const SizedBox(width: 20),
                            IconButton(
                              icon: const Icon(
                                Icons.code,
                                color: AppColors.textPrimary,
                              ),
                              onPressed: () =>
                                  launchUrl(Uri.parse(AppConstants.github)),
                              tooltip: "https://github.com/AMMAR1122-LG",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // IMAGE SECTION (Avatar)
                  if (isDesktop) SizedBox(width: 50),
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.accent, width: 2),
                      image: const DecorationImage(
                        // REPLACE THIS URL WITH YOUR PHOTO later, or use 'assets/profile.png'
                        image: AssetImage("assets/usama.png"),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.accent.withOpacity(0.2),
                          blurRadius: 30,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
