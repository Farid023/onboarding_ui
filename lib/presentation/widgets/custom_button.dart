import 'package:flutter/material.dart';
import 'package:onboarding_ui/utils/constants/app_colors.dart';
import 'package:onboarding_ui/utils/extensions/material_state_property_all.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backgroundColor = AppColors.blue,
    this.foregroundColor = AppColors.white,
    this.fixedSize,
    required this.text,
    this.textColor = AppColors.white,
  });

  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? textColor;
  final Size? fixedSize;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: backgroundColor.toMspAll,
        foregroundColor: foregroundColor.toMspAll,
        fixedSize: fixedSize.toMspAll,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ).toMspAll,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
