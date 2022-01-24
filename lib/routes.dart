//
//  routes.dart
//  Created on 2022 09 Jan.
//  Copyright © Mishka Group Flutter application,
//  Developed by 2021 Hossein HassanNejad.
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'apps/helper/router_schema.dart';

class Routes {
  final BuildContext context;
  Routes(this.context);

  Widget initialNavigate({dynamic argument}) {
    return _findRoute(route: initialRoute).nav;
  }

  navigate(
      {required SelectRoute route,
      SelectRouteAnimation animation = SelectRouteAnimation.downToUp,
      Duration duration = const Duration(milliseconds: 400)}) {
    RouterSchema routerSchema = _findRoute(route: route);

    Widget router = routerSchema.blocProviderValue == null
        ? routerSchema.nav
        : routerSchema.nav.blocProviderValue(routerSchema.blocProviderValue!);

    Navigator.push(
        context,
        router.pageRouteBuilder(
            _findRouteAnimation(anim: animation), duration));
  }

  RouterSchema _findRoute({required SelectRoute route}) {
    String routeName = route.name;
    RouterSchema routerSchema = routers.firstWhere(
        (RouterSchema routerSchema) =>
            routerSchema.routeName.name == routeName);

    return routerSchema;
  }

  RouterAnimationSchema _findRouteAnimation(
      {required SelectRouteAnimation anim}) {
    String routeAnimationName = anim.name;
    RouterAnimationSchema routerAnimationSchema = routersAnimation.firstWhere(
        (RouterAnimationSchema routerAnimationSchema) =>
            routerAnimationSchema.routeAnimationName.name ==
            routeAnimationName);

    return routerAnimationSchema;
  }
}

extension RouteWrapper on Widget {
  PageRouteBuilder pageRouteBuilder(
          RouterAnimationSchema animation, Duration duration) =>
      PageRouteBuilder(
          pageBuilder: (BuildContext context, Animation<double> _animation,
                  Animation<double> secondaryAnimation) =>
              this,
          transitionsBuilder:
              (context, _animation, secondaryAnimation, child) => animation
                  .animation(context, _animation, secondaryAnimation, child),
          transitionDuration: duration);

  BlocProvider<StateStreamableSource<Object?>> blocProviderValue(
          StateStreamableSource<Object?> bloc) =>
      BlocProvider.value(
        value: bloc,
        child: this,
      );
}
