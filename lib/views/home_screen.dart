import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/widgets/custom_floating_action_button.dart';
import 'package:note_demo/widgets/empty_notes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = "homepage";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Notes",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 80,
              ),
              EmptyNotes()
            ],
          ),
        ),
        floatingActionButton: CustomFloatingActionButton());
  }
}
