class CategoryModel {
  String image;
  String category;
  CategoryModel({
    required this.image,
    required this.category,
  });
}

List<CategoryModel> categories = [
  CategoryModel(image: "assets/images/dentist.png", category: "Dentistry"),
  CategoryModel(image: "assets/images/cardio.png", category: "Cardiology"),
  CategoryModel(image: "assets/images/neuro.png", category: "Neurology"),
  CategoryModel(
      image: "assets/images/gastro.png", category: "Gastroenterologist"),
  CategoryModel(image: "assets/images/general.png", category: "General"),
  CategoryModel(image: "assets/images/pul.png", category: "Pulmonologist"),
  CategoryModel(image: "assets/images/lab.png", category: "Laboratory"),
  CategoryModel(image: "assets/images/vac.png", category: "Vaccination"),
];

List<CategoryModel> category = [
  CategoryModel(image: "", category: "All"),
  CategoryModel(image: "", category: "Dentistry"),
  CategoryModel(image: "", category: "Cardiology"),
  CategoryModel(image: "neuro.png", category: "Neurology"),
  CategoryModel(image: "", category: "Gastroenterologist"),
  CategoryModel(image: "", category: "General"),
  CategoryModel(image: "", category: "Pulmonologist"),
  CategoryModel(image: "", category: "Laboratory"),
  CategoryModel(image: "", category: "Vaccination"),
];
