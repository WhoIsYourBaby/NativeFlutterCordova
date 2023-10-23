import 'package:flutter/material.dart';
import 'package:flutter_module/utils/buttons.dart';

class LoginEntryView extends StatelessWidget {
  const LoginEntryView({super.key});

  static Route route() =>
      MaterialPageRoute(builder: (ctx) => const LoginEntryView());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text(
          "test",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Flexible(
            child: Center(
              child: Text(
                "FUJIA",
                style: TextStyle(fontSize: 48),
              ),
            ),
          ),
          Flexible(
            child: Column(
              children: [
                buildPrimaryButton(
                  context,
                  "text",
                  () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
