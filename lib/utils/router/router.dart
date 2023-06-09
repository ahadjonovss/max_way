import 'package:flutter/cupertino.dart';
import 'package:max_way/ui/basket/shopping_basket_page.dart';

import '../file_importer/file_importer.dart';

class MyRouter {
  static Route? generateRoute(RouteSettings settings) {
    var argumentList = settings.arguments;
    switch (settings.name) {
      case  splash:
        return navigateTo(const SplashPage());
      case  home:
        return navigateTo( const HomePage());
      case  shoppingBasket:
        return navigateTo(  ShoppingBasketPage());
      // case  musicPlayer:
      //   return navigateTo( MusicPlayerPage(data: argumentList as List,));
      // case  payment:
      //   return navigateTo( PaymentPage());
      // case  addCard:
      //   return navigateTo( AddCardPage());
      default:
        return navigateTo(
          Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}

CupertinoPageRoute navigateTo(Widget widget) => CupertinoPageRoute(
  builder: (context) => widget,
);