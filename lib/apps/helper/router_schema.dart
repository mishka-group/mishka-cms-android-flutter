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
import 'package:mishka_cms_android_flutter/templates/post/view/post.dart';
import 'package:mishka_cms_android_flutter/templates/sign_in/view/sign_in.dart';
import 'package:mishka_cms_android_flutter/templates/sing_up/view/sign_up.dart';

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
