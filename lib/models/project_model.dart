class Project {
  final String title;
  final String description;
  final String link;
  final String? imagePath; // <--- NEW: Optional image path

  Project({
    required this.title,
    required this.description,
    required this.link,
    this.imagePath,
  });
}

// Sample Data with Links and Images
final List<Project> projects = [
  Project(
    title: "E-Commerce App",
    description:
        "A full-featured shopping app with cart and payment integration.",
    link: "https://github.com/AMMAR1122-LG/my_app",
    imagePath:
        "assets/images/projects/Ecommercee.png", // <--- Make sure this file exists
  ),
  Project(
    title: "Portfolio Website",
    description: "This beautiful website built with Flutter Web.",
    link: "https://github.com/ammarzahid/portfolio",
    imagePath: "assets/images/projects/downloadP.jpg",
  ),
  Project(
    title: "Task Manager",
    description: "Productivity tool for managing daily tasks efficiently.",
    link: "https://github.com/AMMAR1122-LG/my_notes",
    imagePath: "assets/images/projects/Task.jpg",
  ),
];
