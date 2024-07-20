import 'package:e_green/Features/home/data/models/plant_model.dart';
import 'package:e_green/Features/home/presentation/views/widgets/plant_details_view_body.dart';
import 'package:e_green/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PlantDetailsView extends StatelessWidget {
  const PlantDetailsView({super.key, required this.plantModel});

  final PlantModel plantModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: PlantDetailsViewBody(
        plant: plantModel,
      ),
    );
  }
}
