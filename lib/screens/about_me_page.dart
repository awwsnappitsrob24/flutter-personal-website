import 'package:flutter/material.dart';
import 'package:flutter_personal_website/utils/size_config.dart';
import 'package:flutter_personal_website/widgets/about_me_widgets/education_info.dart';
import 'package:flutter_personal_website/widgets/about_me_widgets/personal_info.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth! / 1.25),
        child: Center(
          child: ListView(
            children: [
              SizedBox(height: SizeConfig.screenHeight! / 40),
              const PersonalInfo(),
              SizedBox(height: SizeConfig.screenHeight! / 40),
              const EducationInfo(),
            ],
          ),
        ),
      ),
    );
  }
}
