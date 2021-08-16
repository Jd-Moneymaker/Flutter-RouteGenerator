import 'package:flutter/material.dart';
import 'package:ongenerate_route/pages/first_page.dart';
import 'package:ongenerate_route/pages/second_page.dart';
import 'package:ongenerate_route/pages/third_page.dart';

class RouteGenerator {
  // it has a ststic function which returns route dynamic
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // ? Getting arguments passed in while calling NAvigator.pushedNamed , we can pass arguments in pushedNamed. we can extract passed in arguments by calling settings.arguments
    final args = settings.arguments;

// switch is an if statement
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => FirstPage());
      case '/second':
        return MaterialPageRoute(builder: (_) => SecondPage());
      case '/third':
        return MaterialPageRoute(builder: (_) => ThirdPage());
      // ? validation of corect data type
      // * if (args is String) {
      //   return MaterialPageRoute(builder: (_) => ThirdPage());
      // }
      // ? if data is not of the correct type we can return an error page
      // * return errorRoute();

      // ! if there is no such named route in the switch statement we can return an error
      // ? very important line we need to return a throw ststement in the end
      default:
        return errorRoute();
    }
  }
  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Error'),
        ),
      ),
    );
  }
}
