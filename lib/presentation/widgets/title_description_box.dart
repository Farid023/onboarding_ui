import 'package:flutter/material.dart';

class TitleDescriptionBox extends StatelessWidget {
  const TitleDescriptionBox(
      {super.key,
      required this.title,
      required this.descriiption,
      this.titleFontWeight,
      this.descriptionFontWeight,
      this.titleColor,
      this.descriptionColor,
      this.titleFontSize,
      this.descriptionFontSize});

  final String title;
  final String descriiption;
  final FontWeight? titleFontWeight;
  final FontWeight? descriptionFontWeight;
  final Color? titleColor;
  final Color? descriptionColor;
  final double? titleFontSize;
  final double? descriptionFontSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 1.5,

              fontWeight: titleFontWeight,
              color: titleColor,
              fontSize: titleFontSize),
        ),
        Text(
          descriiption,
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 1.5,
            fontWeight: descriptionFontWeight,
            color: descriptionColor,
            fontSize: descriptionFontSize,
          ),
        ),
      ],
    );
  }
}
