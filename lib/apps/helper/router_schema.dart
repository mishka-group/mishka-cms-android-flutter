//
//  router_schema.dart
//  Created on 2022 09 Jan.
//  Copyright © Mishka Group Flutter application,
//  Developed by 2021 Hossein HassanNejad.
//

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:mishka_cms_android_flutter/templates/blog/blog.dart';
import 'package:mishka_cms_android_flutter/templates/home/home.dart';
import 'package:mishka_cms_android_flutter/templates/post/post.dart';
import 'package:mishka_cms_android_flutter/templates/sign_in/sign_in.dart';
import 'package:mishka_cms_android_flutter/templates/sign_up/sign_up.dart';

class RouterSchema {
  UniqueKey id = UniqueKey();
  SelectRoute routeName;
  Function(dynamic argument) route;
  StateStreamableSource<Object?>? blocProviderValue;

  RouterSchema(
      {required this.routeName, required this.route, this.blocProviderValue});
}

SelectRoute initialRoute = SelectRoute.home;

var routers = [
  RouterSchema(routeName: SelectRoute.blog, route: (argument) => const Blog()),
  RouterSchema(
      routeName: SelectRoute.signIn, route: (argument) => const SignIn()),
  RouterSchema(
      routeName: SelectRoute.signUp, route: (argument) => const SignUp()),
  RouterSchema(routeName: SelectRoute.home, route: (argument) => const Home()),
  RouterSchema(
      routeName: SelectRoute.post, route: (argument) => Post(arg: argument)),
];

enum SelectRoute { blog, signIn, signUp, home, post }
