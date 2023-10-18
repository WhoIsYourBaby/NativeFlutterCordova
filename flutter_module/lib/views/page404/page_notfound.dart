import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  final String routeName;
  const PageNotFound({required this.routeName, super.key});

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
