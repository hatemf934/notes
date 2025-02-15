import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding:
            const EdgeInsets.only(top: 24, bottom: 12, left: 16, right: 16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 12, 246, 215),
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: kSecondaryColor,
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(color: kPrimaryColor, fontSize: 20),
                    ),
                  ),
                ),
                Text(
                  "may 12 2025",
                  style: TextStyle(color: kPrimaryColor, fontSize: 15),
                ),
              ],
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Text(
              "Title 1",
              style: TextStyle(color: kPrimaryColor, fontSize: 30),
            ),
            Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              "Title 1lspprhpdpfpadgapejhgpjhfgahgdgjspps[][a[[an]hhhasopaspfj]]",
              style: TextStyle(color: kPrimaryColor, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
