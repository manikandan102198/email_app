import 'package:auto_route/annotations.dart';
import 'package:email_app/presentation/journey/details_screen/details_screen.dart';
import 'package:email_app/presentation/journey/home_screen/home_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, initial: true),
    AutoRoute(page: DetailsScreen),
  ],
)
class $AppRouter {}
