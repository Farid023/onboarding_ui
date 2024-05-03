import 'package:flutter/material.dart';
import 'package:onboarding_ui/presentation/widgets/custom_button.dart';
import 'package:onboarding_ui/presentation/widgets/custom_text_button.dart';
import 'package:onboarding_ui/presentation/widgets/title_description_box.dart';
import 'package:onboarding_ui/utils/constants/app_assets.dart';
import 'package:onboarding_ui/utils/constants/app_colors.dart';
import 'package:onboarding_ui/utils/constants/app_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [

            SizedBox(
              width: size.width,
              height: size.height * 0.5,
              child: FittedBox(child: Image.asset(AppAssets.onboard)),
            ),
            const SizedBox(height: 48),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 34),
              child: TitleDescriptionBox(
                title: AppStrings.onboardTitle,
                descriiption: AppStrings.onboardDescription,
                titleColor: AppColors.blue,
                titleFontWeight: FontWeight.w500,
                titleFontSize: 35,
                descriptionColor: AppColors.black,
                descriptionFontSize: 14,
                descriptionFontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 48),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      backgroundColor: AppColors.blue,
                      foregroundColor: AppColors.white,
                      fixedSize: Size.fromHeight(60),
                      text: AppStrings.login,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: CustomTextButton(
                      // foregroundColor: AppColors.black,
                      fixedSize: Size.fromHeight(60),
                      text: AppStrings.register, fontSize: 20,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
