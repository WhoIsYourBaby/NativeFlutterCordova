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
      extendBody: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text(
          "test",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/login_bkg.png",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Flexible(
              child: Center(
                child: Image.asset("assets/images/FUJIA.png"),
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
      ),
    );
  }
}
