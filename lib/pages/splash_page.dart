import 'package:flutter/material.dart';
import 'package:inventory_app/pages/home_page.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 5),
      () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (builder) => const HomePage(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "MyInventory",
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Lottie.asset("assets/animation.json"),
            CircularProgressIndicator(
              color: Colors.blueGrey,
            ),
          ],
        ),
      )),
    );
  }
}