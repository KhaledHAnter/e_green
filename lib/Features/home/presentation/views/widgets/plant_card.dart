import 'package:e_green/Core/utils/app_router.dart';
import 'package:e_green/Features/home/data/models/plant_model.dart';
import 'package:e_green/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({
    super.key,
    required this.plant,
  });

  final PlantModel plant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kPlantDetailView,
          extra: plant,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: kContentColor,
          borderRadius: BorderRadiusDirectional.circular(20),
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(plant.image),
            const Gap(5),
            Text(
              plant.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            plant.category != null
                ? Text(
                    plant.category!,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  )
                : const Gap(25),
            Row(
              children: [
                Text(
                  "\$ ${plant.price}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: const Icon(
                    Iconsax.heart5,
                    color: Colors.white,
                    size: 18,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
