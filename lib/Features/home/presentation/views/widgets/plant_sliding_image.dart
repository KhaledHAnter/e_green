import 'package:e_green/Features/home/data/models/plant_model.dart';
import 'package:e_green/constants.dart';
import 'package:flutter/material.dart';

class PlantSlidingImage extends StatelessWidget {
  const PlantSlidingImage(
      {super.key,
      this.onPageChanged,
      required this.plant,
      required this.currentIndex});

  final Function(int)? onPageChanged;
  final PlantModel plant;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.45,
          width: double.infinity,
          child: PageView.builder(
            itemCount: 3,
            scrollDirection: Axis.vertical,
            onPageChanged: onPageChanged,
            itemBuilder: (context, index) {
              return Image.asset(
                plant.image,
                fit: BoxFit.fitHeight,
              );
            },
          ),
        ),
        Positioned(
          bottom: 0,
          right: 40,
          child: Column(
            children: List.generate(
              3,
              (index) {
                return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: currentIndex == index ? 20 : 8,
                    width: 8,
                    margin: const EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      color:
                          currentIndex == index ? kPrimaryColor : Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ));
              },
            ),
          ),
        )
      ],
    );
  }
}
