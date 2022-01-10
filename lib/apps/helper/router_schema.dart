//
//  router_schema.dart
//  mishka-cms-android-flutter
//
//  Created by Husen on 2022 09 Jan.
//

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:mishka_cms_android_flutter/controllers/home/home_bloc.dart';
import 'package:mishka_cms_android_flutter/templates/home/home.dart';
import 'package:mishka_cms_android_flutter/templates/intro/intro.dart';
import 'package:mishka_cms_android_flutter/templates/post/view/post.dart';
import 'package:mishka_cms_android_flutter/templates/sign_in/view/sign_in.dart';
import 'package:mishka_cms_android_flutter/templates/sing_up/view/sign_up.dart';

class RouterSchema {
  UniqueKey id = UniqueKey();
  SelectNavigation routeName;
  Widget nav;
  StateStreamableSource<Object?>? controller;

  RouterSchema({required this.routeName, required this.nav, this.controller});
}

class NavSchema {
  SelectNavigation routeName;
  dynamic arguments;
  NavSchema({required this.routeName, this.arguments});
}

var routers = [
  RouterSchema(routeName: SelectNavigation.intro, nav: const Intro()),
  RouterSchema(routeName: SelectNavigation.signIn, nav: const SignIn()),
  RouterSchema(routeName: SelectNavigation.signUp, nav: const SignUp()),
  RouterSchema(routeName: SelectNavigation.home, nav: const Home()),
  RouterSchema(
      routeName: SelectNavigation.post,
      nav: const Post(),
      controller: HomeBloc()),
];

enum SelectNavigation { intro, signIn, signUp, home, post }
