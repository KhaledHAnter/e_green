import 'package:e_green/Core/utils/assets.dart';

class PlantModel {
  final String name, image;
  final String? category;
  final double price;

  PlantModel({
    required this.name,
    required this.image,
    this.category,
    required this.price,
  });
}

List<PlantModel> plants = [
  PlantModel(
    name: "Snake Plant",
    image: AssetsData.image1,
    price: 12.99,
  ),
  PlantModel(
    name: "Lucky Jad Plant",
    image: AssetsData.image2,
    price: 12.99,
  ),
  PlantModel(
    name: "Small Plant",
    image: AssetsData.image5,
    price: 12.99,
    category: "Super Green",
  ),
  PlantModel(
    name: "Peperomia Plant",
    image: AssetsData.image3,
    price: 12.99,
    category: "Super Green",
  ),
  PlantModel(
    name: "Mini Plant",
    image: AssetsData.image4,
    price: 12.99,
  ),
];
