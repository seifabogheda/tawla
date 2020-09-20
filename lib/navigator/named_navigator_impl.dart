import 'package:flutter/material.dart';
import 'package:tawla_training/views/activation_code/view.dart';
import 'package:tawla_training/views/forgetpass/view.dart';
import 'package:tawla_training/views/login/login_view.dart';
import 'package:tawla_training/views/new_pass/view.dart';
import 'package:tawla_training/views/signup/view.dart';
import 'package:tawla_training/views/splash/view.dart';
import 'named_navigator.dart';

class NamedNavigatorImpl implements NamedNavigator {
  static final GlobalKey<NavigatorState> navigatorState =
  GlobalKey<NavigatorState>();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.SPLASH_ROUTE:
        return MaterialPageRoute(builder: (_) => SplashView());
        case Routes.LOGIN_ROUTE:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.SIGN_UP_ROUTE:
        return MaterialPageRoute(builder: (_)=>SignUpView());
      case Routes.FORGET_PASSWORD_ROUTE:

        return MaterialPageRoute(builder: (_)=>ForgetPassword());
        case Routes.PIN_CODE_ROUTE:
        return MaterialPageRoute(builder: (_)=>ActivationCode());
      case Routes.CHANGE_PASSWORD_ROUTE:
        return MaterialPageRoute(builder: (_)=>NewPassword());

    }
    return MaterialPageRoute(builder: (_) => Container());
  }

  @override
  void pop({dynamic result}) {
    if (navigatorState.currentState.canPop())
      navigatorState.currentState.pop(result);
  }

  @override
  Future push(String routeName,
      {arguments, bool replace = false, bool clean = false}) {
    if (clean)
      return navigatorState.currentState.pushNamedAndRemoveUntil(
          routeName, (_) => false,
          arguments: arguments);

    if (replace)
      return navigatorState.currentState
          .pushReplacementNamed(routeName, arguments: arguments);

    return navigatorState.currentState
        .pushNamed(routeName, arguments: arguments);
  }
}