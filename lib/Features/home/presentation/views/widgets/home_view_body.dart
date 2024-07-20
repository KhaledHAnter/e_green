import 'package:e_green/Features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:e_green/Features/home/presentation/views/widgets/plant_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: CustomSearchBar(),
          ),
          PlantsGridView(),
          Gap(20),
        ],
      ),
    );
  }
}
