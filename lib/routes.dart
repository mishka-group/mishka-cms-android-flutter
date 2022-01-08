import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mishka_cms_android_flutter/templates/intro/view/intro.dart';
import 'package:mishka_cms_android_flutter/templates/post/view/post.dart';
import 'package:mishka_cms_android_flutter/templates/sign_in/view/sign_in.dart';
import 'package:mishka_cms_android_flutter/templates/sing_up/view/sign_up.dart';

import 'controllers/home/home_bloc.dart';
import 'templates/home/view/home.dart';

class RouterSchema {
  SelectNavigation nav;
  dynamic arguments;
  RouterSchema({required this.nav, this.arguments});
}

class Routes {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    // var data = routeSettings.arguments as String;
    MaterialPageRoute(builder: (_) {
      switch (routeSettings.name) {
        case '/':
          return const Intro();

        case '/signIn':
          return const SignIn();
        case '/signUp':
          return const SignUp();
        case '/home':
          return BlocProvider.value(
            value: HomeBloc(),
            child: const Home(),
          );
        case '/post':
          return BlocProvider.value(
            value: HomeBloc(),
            child: const Post(),
          );
        default:
          return const Home();
      }
    });
  }
}

class AppRouter {
  AppRouter(this.context);
  final BuildContext context;

  getRoot() {
    Navigator.of(context).pushNamed('/');
  }

  getTo(RouterSchema router) {
    Navigator.of(context)
        .pushNamed('/' + router.nav.name, arguments: router.arguments);
  }

  getUntilTo(RouterSchema router) {
    Navigator.of(context).pushNamedAndRemoveUntil(
        '/' + router.nav.name, (route) => false,
        arguments: router.arguments);
  }

  pop() {
    Navigator.of(context).pop();
  }
}

/// {@template route_name}
/// make sure the names you put in enum are the same as
/// the names of the routes you put in [Routes]
/// {@endtemplate}
enum SelectNavigation { signIn, signUp, home, post }
