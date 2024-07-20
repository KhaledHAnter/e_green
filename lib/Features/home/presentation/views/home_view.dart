import 'package:e_green/Core/utils/assets.dart';
import 'package:e_green/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:e_green/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        leading: IconButton(
          onPressed: () {
            // GoRouter.of(context).pop();
          },
          icon: const Icon(
            CupertinoIcons.chevron_back,
          ),
        ),
        title: Text(
          "Search Products",
          style: TextStyle(
            color: Colors.grey.shade800,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Image.asset(AssetsData.avatar),
          )
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
