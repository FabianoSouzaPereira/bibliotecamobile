import 'package:bibliotecamobile/core/routes/app_routes.dart';
import 'package:bibliotecamobile/features/home/presentation/pages/home_page.dart';

class AppPages {
  static final routes = {
    AppRoutes.ROOT: (_) => Root(),
    AppRoutes.HOME: (_) => HomePage(),
    AppRoutes.LOGIN: (_) => LoginPage(),
    AppRoutes.SPLASH: (_) => SplashPage(),
  };
}
