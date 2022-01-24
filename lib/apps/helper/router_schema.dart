//
//  router_schema.dart
//  Created on 2022 09 Jan.
//  Copyright © Mishka Group Flutter application,
//  Developed by 2021 Hossein HassanNejad.
//

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:mishka_cms_android_flutter/templates/blog/view/blog.dart';
import 'package:mishka_cms_android_flutter/templates/home/home.dart';
import 'package:mishka_cms_android_flutter/templates/post/post.dart';
import 'package:mishka_cms_android_flutter/templates/sign_in/sign_in.dart';
import 'package:mishka_cms_android_flutter/templates/sign_up/sign_up.dart';

class RouterSchema {
  UniqueKey id = UniqueKey();
  SelectRoute routeName;
  Widget nav;
  StateStreamableSource<Object?>? blocProviderValue;

  RouterSchema(
      {required this.routeName, required this.nav, this.blocProviderValue});
}

SelectRoute initialRoute = SelectRoute.home;

var routers = [
  RouterSchema(routeName: SelectRoute.blog, nav: const Blog()),
  RouterSchema(routeName: SelectRoute.signIn, nav: const SignIn()),
  RouterSchema(routeName: SelectRoute.signUp, nav: const SignUp()),
  RouterSchema(routeName: SelectRoute.home, nav: const Home()),
  RouterSchema(routeName: SelectRoute.post, nav: const Post()),
];

enum SelectRoute { blog, signIn, signUp, home, post }

class RouterAnimationSchema {
  SelectRouteAnimation routeAnimationName;
  Function(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) animation;

  RouterAnimationSchema(
      {required this.routeAnimationName, required this.animation});
}

List<RouterAnimationSchema> routersAnimation = [
  RouterAnimationSchema(
      routeAnimationName: SelectRouteAnimation.fade,
      animation: (context, animation, secondaryAnimation, child) {
        return FadeTransition(opacity: animation, child: child);
      }),
  RouterAnimationSchema(
      routeAnimationName: SelectRouteAnimation.rightToLeft,
      animation: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          transformHitTests: false,
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset.zero,
              end: const Offset(-1.0, 0.0),
            ).animate(secondaryAnimation),
            child: child,
          ),
        );
      }),
  RouterAnimationSchema(
      routeAnimationName: SelectRouteAnimation.leftToRight,
      animation: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          transformHitTests: false,
          position: Tween<Offset>(
            begin: const Offset(-1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset.zero,
              end: const Offset(1.0, 0.0),
            ).animate(secondaryAnimation),
            child: child,
          ),
        );
      }),
  RouterAnimationSchema(
      routeAnimationName: SelectRouteAnimation.upToDown,
      animation: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          transformHitTests: false,
          position: Tween<Offset>(
            begin: const Offset(0.0, -1.0),
            end: Offset.zero,
          ).animate(animation),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset.zero,
              end: const Offset(0.0, 1.0),
            ).animate(secondaryAnimation),
            child: child,
          ),
        );
      }),
  RouterAnimationSchema(
      routeAnimationName: SelectRouteAnimation.downToUp,
      animation: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          transformHitTests: false,
          position: Tween<Offset>(
            begin: const Offset(0.0, 1.0),
            end: Offset.zero,
          ).animate(animation),
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset.zero,
              end: const Offset(0.0, -1.0),
            ).animate(secondaryAnimation),
            child: child,
          ),
        );
      }),
  RouterAnimationSchema(
      routeAnimationName: SelectRouteAnimation.rightToLeftWithFade,
      animation: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: FadeTransition(
            opacity: animation,
            child: SlideTransition(
              position: Tween<Offset>(
                begin: Offset.zero,
                end: const Offset(-1.0, 0.0),
              ).animate(secondaryAnimation),
              child: child,
            ),
          ),
        );
      }),
  RouterAnimationSchema(
      routeAnimationName: SelectRouteAnimation.leftToRightWithFade,
      animation: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(-1.0, 0.0),
            end: Offset.zero,
          ).animate(animation),
          child: FadeTransition(
            opacity: animation,
            child: SlideTransition(
              position: Tween<Offset>(
                begin: Offset.zero,
                end: const Offset(1.0, 0.0),
              ).animate(secondaryAnimation),
              child: child,
            ),
          ),
        );
      })
];

enum SelectRouteAnimation {
  fade,
  rightToLeft,
  leftToRight,
  upToDown,
  downToUp,
  rightToLeftWithFade,
  leftToRightWithFade
}
