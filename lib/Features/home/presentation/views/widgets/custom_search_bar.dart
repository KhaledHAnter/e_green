import 'package:e_green/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: TextField(
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: kContentColor,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              hintText: "Search Here ...",
              hintStyle: const TextStyle(fontSize: 14),
              prefixIcon: const Icon(
                CupertinoIcons.search,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const Gap(10),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: kContentColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(Iconsax.setting_4),
          ),
        )
      ],
    );
  }
}
