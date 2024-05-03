import 'package:flutter/material.dart';
import 'package:onboarding_ui/utils/constants/app_colors.dart';
import 'package:onboarding_ui/utils/extensions/material_state_property_all.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key,
      this.fixedSize,
      required this.text,
      this.textColor = AppColors.black,
      this.fontWeight,
      required this.fontSize});

  final Size? fixedSize;
  final String text;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ButtonStyle(
          fixedSize: fixedSize.toMspAll,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ).toMspAll,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: fontWeight,
            fontSize: fontSize,
          ),
        ));
  }
}
