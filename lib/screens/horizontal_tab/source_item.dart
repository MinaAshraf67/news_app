import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/sourceResponse.dart';
import 'package:news_app/shared/styles/colors.dart';

// ignore: must_be_immutable
class SourceItem extends StatelessWidget {
  Sources sources;
  bool selected;
  SourceItem(this.sources, this.selected, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 4.0,
        horizontal: 6.0,
      ),
      decoration: BoxDecoration(
          color: selected ? AppColors.primaryColor : AppColors.transparentColor,
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(
            color: AppColors.primaryColor,
          )),
      child: Text(
        sources.name ?? "",
        style: selected
            ? Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontFamily: GoogleFonts.exo.toString(),
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteColor,
                )
            : Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontFamily: GoogleFonts.exo.toString(),
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryColor,
                ),
      ),
    );
  }
}
