//
//  router_schema.dart
//  Created on 2022 09 Jan.
//  Copyright © Mishka Group Flutter application,
//  Developed by 2021 Hossein HassanNejad.
//

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:mishka_cms_android_flutter/controllers/home/home_bloc.dart';
import 'package:mishka_cms_android_flutter/templates/blog/blog.dart';
import 'package:mishka_cms_android_flutter/templates/home/home.dart';
import 'package:mishka_cms_android_flutter/templates/post/view/post.dart';
import 'package:mishka_cms_android_flutter/templates/sign_in/view/sign_in.dart';
import 'package:mishka_cms_android_flutter/templates/sing_up/view/sign_up.dart';

class RouterSchema {
  UniqueKey id = UniqueKey();
  SelectNavigation routeName;
  Widget nav;
  StateStreamableSource<Object?>? blocProviderValue;

  RouterSchema(
      {required this.routeName, required this.nav, this.blocProviderValue});
}

var routers = [
  RouterSchema(routeName: SelectNavigation.blog, nav: const Blog()),
  RouterSchema(routeName: SelectNavigation.signIn, nav: const SignIn()),
  RouterSchema(routeName: SelectNavigation.signUp, nav: const SignUp()),
  RouterSchema(routeName: SelectNavigation.home, nav: const Home()),
  RouterSchema(routeName: SelectNavigation.post, nav: const Post()),
];

enum SelectNavigation { blog, signIn, signUp, home, post }
