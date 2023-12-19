part of app_model;

class PopularGigs {
  final String name;
  final String imagePath;
  final String price;
  final String job;
  final bool isOnline;

  PopularGigs({
    required this.name,
    required this.imagePath,
    required this.price,
    required this.job,
    this.isOnline = false,
  });
}
