import 'package:e_green/Core/utils/app_router.dart';
import 'package:e_green/Core/utils/assets.dart';
import 'package:e_green/Features/onboarding/presentation/views/widgets/onboarding_text.dart';
import 'package:e_green/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingViewBody> {
  List<String> images = [
    AssetsData.image1,
    AssetsData.image2,
    AssetsData.image3,
  ];

  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.45,
          child: PageView.builder(
            controller: pageController,
            itemCount: images.length,
            onPageChanged: (value) {
              setState(() {
                currentPage = value;
              });
            },
            itemBuilder: (context, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.fitHeight,
              );
            },
          ),
        ),
        const Gap(30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            images.length,
            (index) {
              return AnimatedContainer(
                margin: const EdgeInsets.only(right: 4),
                duration: const Duration(milliseconds: 300),
                width: index == currentPage ? 20 : 10,
                height: 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: index == currentPage
                      ? kPrimaryColor
                      : Colors.grey.shade400,
                ),
              );
            },
          ),
        ),
        // const Gap(40),
        const Spacer(
          flex: 2,
        ),
        const OnboardingText(),
        const Spacer(
          flex: 3,
        ),
        IconButton(
          onPressed: () {
            if (currentPage == (images.length - 1)) {
              GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
            } else {
              pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          },
          style: IconButton.styleFrom(
            fixedSize: const Size(80, 80),
            backgroundColor: kPrimaryColor,
            iconSize: 40,
          ),
          icon: const Icon(
            CupertinoIcons.arrow_right,
            color: Colors.white,
          ),
        ),
        const Gap(40),
      ],
    );
  }
}
