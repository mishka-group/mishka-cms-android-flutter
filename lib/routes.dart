import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mishka_cms_android_flutter/apps/mishka_blog_article_schema.dart';
import 'package:mishka_cms_android_flutter/controllers/mishka_blog/mishka_blog_bloc.dart';
import 'package:mishka_cms_android_flutter/templates/intro/view/intro.dart';
import 'package:mishka_cms_android_flutter/templates/mishka_blog/mishka_blog.dart';
import 'package:mishka_cms_android_flutter/templates/sign_in/view/sign_in.dart';
import 'package:mishka_cms_android_flutter/templates/sing_up/view/sign_up.dart';

class Routes {
  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) {
          return const Intro();
        });
      case '/sign_in':
        return MaterialPageRoute(builder: (_) {
          return const SignIn();
        });
      case '/sign_up':
        return MaterialPageRoute(builder: (_) {
          return const SignUp();
        });
      case '/mishka_blog':
        return MaterialPageRoute(builder: (_) {
          return const MishkaBlog(articles: [
            MishkaBlogArticle('title', 'author', 'timeToRead', 'img')
          ]);
        });
      case '/mishka_article':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: MishkaBlogBloc(),
            child: const MishkaArticle(
                article:
                    MishkaBlogArticle('title', 'author', 'timeToRead', 'img')),
          ),
        );
      default:
        return null;
    }
  }
}
