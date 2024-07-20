import 'package:e_green/Features/home/data/models/plant_model.dart';
import 'package:e_green/Features/home/presentation/views/home_view.dart';
import 'package:e_green/Features/home/presentation/views/plant_details_view.dart';
import 'package:e_green/Features/onboarding/presentation/views/onboarding_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kPlantDetailView = '/plantDetailView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
          path: kPlantDetailView,
          builder: (context, state) {
            final PlantModel plant = state.extra! as PlantModel;
            return PlantDetailsView(
              plantModel: plant,
            );
          }),
    ],
  );
}
