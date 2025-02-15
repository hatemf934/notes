import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';

class Onborading extends StatelessWidget {
  const Onborading({super.key});
  static String id = "onborading";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(kImage),
            const Text(
              "All thoughts.\n One place.",
              style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              textAlign: TextAlign.center,
              "Dive right in and clear that mind of yours by writing your thoughts down",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 40,
            ),
            CircleAvatar(
              radius: 35,
              backgroundColor: kSecondaryColor,
              child: Center(
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
