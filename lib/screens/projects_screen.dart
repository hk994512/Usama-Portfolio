import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../models/project_model.dart';
import '../widgets/navbar.dart';
import '../widgets/project_card.dart';
import '../widgets/footer.dart'; // <--- Make sure to import your Footer widget

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: const NavBar(),
      // 1. Wrap body in SingleChildScrollView to allow scrolling the whole page
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "My Projects",
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

              // 2. GridView updated to work inside SingleChildScrollView
              GridView.builder(
                shrinkWrap:
                    true, // <--- IMPORTANT: Lets the GridView take only needed space
                physics:
                    const NeverScrollableScrollPhysics(), // <--- IMPORTANT: Disables internal scrolling
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 400,
                  childAspectRatio:
                      0.8, // <--- Adjusted ratio to fit the new image
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  return ProjectCard(project: projects[index]);
                },
              ),

              const SizedBox(height: 50),
              // 3. The Footer is now visible at the bottom
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
