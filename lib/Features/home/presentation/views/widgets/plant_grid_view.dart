import 'package:e_green/Core/utils/assets.dart';
import 'package:e_green/Features/home/data/models/plant_model.dart';
import 'package:e_green/Features/home/presentation/views/widgets/plant_card.dart';
import 'package:e_green/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class PlantsGridView extends StatelessWidget {
  const PlantsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      primary: false,
      shrinkWrap: true,
      crossAxisSpacing: 30,
      mainAxisSpacing: 30,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: [
        const Text(
          "Found 10 Results",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        for (var plant in plants) PlantCard(plant: plant)
      ],
    );
  }
}
