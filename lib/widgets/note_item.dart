import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/padding_manager.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(
          top: PaddingManager.pd24,
          bottom: PaddingManager.pd12,
          left: PaddingManager.pd16,
          right: PaddingManager.pd16,
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 12, 246, 215),
          borderRadius: BorderRadius.circular(RadiusManager.rd16),
        ),
        child: Column(
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
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: FontSizeManager.font20),
                    ),
                  ),
                ),
                Text(
                  "may 12 2025",
                  style: TextStyle(
                      fontFamily: FontFamilyManager.kInterFont,
                      color: kPrimaryColor,
                      fontSize: FontSizeManager.font16),
                ),
              ],
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Text(
              "Title 1",
              style: TextStyle(
                  fontFamily: FontFamilyManager.kOtamaFont,
                  color: kPrimaryColor,
                  fontSize: FontSizeManager.font30),
            ),
            Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              "Title 1lspprhpdpfpadgapejhgpjhfgahgdgjspps[][a[[an]hhhasopaspfj]]",
              style: TextStyle(
                  fontFamily: FontFamilyManager.kInterFont,
                  color: kPrimaryColor,
                  fontSize: FontSizeManager.font12),
            ),
          ],
        ),
      ),
    );
  }
}
