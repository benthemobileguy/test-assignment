import 'package:android_test_task/presentation/pages/home/home-page.dart';
import 'package:android_test_task/presentation/pages/pokemon-details/pokemon-details-page.dart';
import 'package:android_test_task/presentation/pages/splash/splash.dart';
import 'package:android_test_task/presentation/resources/strings-manager.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = "/";
  static const String homeRoute = "/home";
  static const String pokemonDetailsRoute = "/pokemonDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
        break;
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case Routes.pokemonDetailsRoute:
        return MaterialPageRoute(builder: (_) => PokemonDetailsPage());
        break;
      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: Text(AppStrings.noRouteFound),
          ),
          body: Center(child: Text(AppStrings.noRouteFound)),
        ));
  }

}