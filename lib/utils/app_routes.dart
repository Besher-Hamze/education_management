import 'package:education_managment/view/auth/login_page.dart';
import 'package:education_managment/view/auth/main_auth.dart';
import 'package:education_managment/view/auth/signup_page.dart';
import 'package:education_managment/view/home%20screens/home_page.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final List<GetPage> namedRoutes = [
    GetPage(
      name: RoutesPath.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: RoutesPath.auth,
      page: () => const MainAuth(),
    ),
    GetPage(
      name: RoutesPath.login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: RoutesPath.signup,
      page: () => SignupPage(),
    ),
  ];
}

class RoutesPath {
  static const home = '/home';
  static const auth = '/auth';
  static const login = '/login';
  static const signup = '/signup';
}

class RouteWrapper {
  static get getInitialRoute {
    return RoutesPath.auth;
  }
}
