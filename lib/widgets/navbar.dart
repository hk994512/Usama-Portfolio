import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 600;

    return AppBar(
      backgroundColor: AppColors.primary,
      elevation: 0,
      centerTitle: false, // Aligns title to the left
      title: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "< ",
                style: TextStyle(
                  color: AppColors.accent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: AppConstants.name, // Now says "Ammar Zahid"
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              TextSpan(
                text: " />",
                style: TextStyle(
                  color: AppColors.accent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      actions: isDesktop
          ? AppConstants.navItems.map((item) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextButton(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/${item.toLowerCase()}'),
                  child: Text(
                    item,
                    style: const TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 16,
                    ),
                  ),
                ),
              );
            }).toList()
          : null,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
