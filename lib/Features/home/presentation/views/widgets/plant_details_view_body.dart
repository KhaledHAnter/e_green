import 'package:e_green/Features/home/data/models/plant_model.dart';
import 'package:e_green/Features/home/presentation/views/widgets/plant_info_item.dart';
import 'package:e_green/Features/home/presentation/views/widgets/plant_sliding_image.dart';
import 'package:e_green/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class PlantDetailsViewBody extends StatefulWidget {
  const PlantDetailsViewBody({super.key, required this.plant});

  final PlantModel plant;

  @override
  State<PlantDetailsViewBody> createState() => _PlantDetailsViewBodyState();
}

class _PlantDetailsViewBodyState extends State<PlantDetailsViewBody> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PlantSlidingImage(
          plant: widget.plant,
          currentIndex: currentIndex,
          onPageChanged: (value) => setState(() => currentIndex = value),
        ),
        const Gap(12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            widget.plant.name,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Gap(15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            "Plants make your life with minimal and happy love the plants more and enjoy life",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade600),
          ),
        ),
        const Gap(40),
        const Spacer(),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 30,
          ),
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: <Widget>[
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  PlantInfoItem(
                    icon: Icons.height,
                    text1: 'Height',
                    text2: '30cm - 40cm',
                  ),
                  PlantInfoItem(
                    icon: Icons.device_thermostat,
                    text1: 'Temperature',
                    text2: '20°C - 25°C',
                  ),
                  PlantInfoItem(
                    icon: Icons.yard_outlined,
                    text1: 'Pot',
                    text2: 'Ciramic Pot',
                  ),
                ],
              ),
              const Gap(20),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Text(
                          "Total Price",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "\$${widget.plant.price}",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: kPrimaryColor.withOpacity(.6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(20),
                      ),
                      onPressed: () {},
                      child: const Text("Add to Cart"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
