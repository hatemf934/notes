import 'package:flutter/material.dart';
import 'package:notabli/constant.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/styles.dart';
import 'package:notabli/core/utils/text_manager.dart';
import 'package:notabli/core/utils/width_manager.dart';

class EmptyNotes extends StatelessWidget {
  const EmptyNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Spacer(),
          Image.asset(
            kImage,
            width: WidthManager.w200,
          ),
          Text(TextManager.kEmptyScreen,
              style: Styles.styleOtamaFont
                  .copyWith(fontSize: FontSizeManager.font20)),
          const Spacer(),
        ],
      ),
    );
  }
}
