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
    return _findRoute(route: initialRoute).route(argument);
  }

  navigate({
    required SelectRoute route,
    dynamic argument,
  }) {
    RouterSchema routerSchema = _findRoute(route: route);

    Widget router = routerSchema.blocProviderValue == null
        ? routerSchema.route(argument)
        : routerSchema
            .route(argument)
            .blocProviderValue(routerSchema.blocProviderValue!);

    Navigator.push(context, router.pageRouteBuilder());
  }

  RouterSchema _findRoute({required SelectRoute route}) {
    String routeName = route.name;
    RouterSchema routerSchema = routers.firstWhere(
        (RouterSchema routerSchema) =>
            routerSchema.routeName.name == routeName);

    return routerSchema;
  }
}

extension RouteWrapper on Widget {
  PageRouteBuilder pageRouteBuilder() => PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> _animation,
              Animation<double> secondaryAnimation) =>
          this,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
      transitionDuration: const Duration(milliseconds: 300));

  BlocProvider<StateStreamableSource<Object?>> blocProviderValue(
          StateStreamableSource<Object?> bloc) =>
      BlocProvider.value(
        value: bloc,
        child: this,
      );
}
