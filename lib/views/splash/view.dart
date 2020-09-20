import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tawla_training/navigator/named_navigator.dart';
import 'package:tawla_training/navigator/named_navigator_impl.dart';
import 'package:tawla_training/views/widgets/background.dart';
import 'package:tawla_training/views/widgets/logo.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 2),
          () {
        NamedNavigatorImpl()
            .push(Routes.LOGIN_ROUTE, clean: true, replace: true);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Background(),
          Logo(),
        ],
      ),
    );
  }
}
