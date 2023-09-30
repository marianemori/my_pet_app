import 'package:flutter_modular/flutter_modular.dart';
import 'package:my_pet_app/pages/login_page.dart';
import 'package:my_pet_app/pages/sign_up_page.dart';

class RouterName {
  static const String loginPage = '/';
  static const String signUpPage = '/signUpPage';
}

class Routers {
  static List<ModularRoute> get routers {
    return [
      ChildRoute(
        RouterName.loginPage,
        child: (_, args) => const LoginPage(),
      ),
      ChildRoute(
        RouterName.signUpPage,
        child: (_, args) => const SignUpPage(),
      ),
    ];
  }
}
