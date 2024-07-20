import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PlantInfoItem extends StatelessWidget {
  const PlantInfoItem({
    super.key,
    required this.icon,
    required this.text1,
    required this.text2,
  });

  final IconData icon;
  final String text1, text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          size: 45,
          color: Colors.white,
        ),
        const Gap(5),
        Text(
          text1,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Gap(5),
        Text(
          text2,
          style: TextStyle(
            color: Colors.grey.shade200,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
