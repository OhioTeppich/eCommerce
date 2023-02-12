import 'dart:developer';

import 'package:ecommerce/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    log('This is route: $settings');

    switch (settings.name) {
       case HomeScreen.routeName:
        return HomeScreen.route(); 
      case CartScreen.routeName:
        return CartScreen.route();
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case ProductScreen.routeName:
        return CartScreen.route();
      case CatalogScreen.routeName:
        return CartScreen.route();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Error'),
        ),
      ),
    );
  }
}
