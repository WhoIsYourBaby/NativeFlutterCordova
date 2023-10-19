import 'package:flutter/material.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({super.key});

  static MaterialPageRoute route(RouteSettings routeSettings) =>
      MaterialPageRoute(builder: (context) => const NotFoundView());

  @override
  Widget build(BuildContext context) {
    final routeName = ModalRoute.of(context)!.settings.name;
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Not Found"),
      ),
      body: Center(
        child: Text("${routeName} page not found or not registed!"),
      ),
    );
  }
}
