import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notabli/features/home/presentation/bloc/layout_cubit/layoutcubit_cubit.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/utils/raduis_manager.dart';
import 'package:notabli/core/utils/text_manager.dart';
import 'package:notabli/core/utils/width_manager.dart';

class SearchAndSettingLayoutSection extends StatelessWidget {
  const SearchAndSettingLayoutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: HeightManager.h45,
          width: MediaQuery.of(context).size.width * .75,
          child: TextField(
            decoration: InputDecoration(
              hintText: TextManager.kSearch,
              hintStyle: const TextStyle(
                color: ColorManager.colorgrey,
                fontSize: FontSizeManager.font16,
              ),
              prefixIcon: const Padding(
                padding: EdgeInsets.only(bottom: PaddingManager.pd5),
                child: Icon(Icons.search, color: ColorManager.colorgrey),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(RadiusManager.rd16),
                borderSide: BorderSide.none,
              ),
              filled: true,
            ),
          ),
        ),
        const SizedBox(width: WidthManager.w16),
        IconButton(onPressed: () {
          BlocProvider.of<LayoutcubitCubit>(context).changeview();
        }, icon: BlocBuilder<LayoutcubitCubit, LayoutcubitState>(
          builder: (context, state) {
            return Icon(
              color: ColorManager.colorgrey,
              state == LayoutcubitState.ListView
                  ? FontAwesomeIcons.listUl
                  : Icons.grid_view_rounded,
              size: FontSizeManager.font30,
            );
          },
        ))
      ],
    );
  }
}
