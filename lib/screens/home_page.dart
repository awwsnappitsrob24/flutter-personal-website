import 'package:flutter/material.dart';
import 'package:flutter_personal_website/utils/colors.dart';
import 'package:flutter_personal_website/widgets/info_hyperlink.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_personal_website/utils/constants.dart';
import 'package:flutter_personal_website/utils/size_config.dart';
import 'package:flutter_personal_website/widgets/social_media_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const TextStyle nameStyle =
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static const TextStyle titleStyle = TextStyle(fontSize: 16);
  static const TextStyle infoStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  void _goToAboutMePage() {
    print('about me');
  }

  void _goToPortfolioPage() {
    print('portflio');
  }

  void _goToBlogPage() {
    print('blog');
  }

  @override
  Widget build(BuildContext context) {
    // Initialize screen configs
    SizeConfig.init(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset("assets/images/profile_picture.jpg",
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: SizeConfig.screenHeight! / 40),
            const Text(PersonalInfoConstants.myName, style: nameStyle),
            const Text(PersonalInfoConstants.myTitle, style: titleStyle),
            SizedBox(height: SizeConfig.screenHeight! / 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InfoHyperlink(text: "About Me", onPressed: _goToAboutMePage),
                SizedBox(width: SizeConfig.screenWidth! / 40),
                InfoHyperlink(text: "Portfolio", onPressed: _goToPortfolioPage),
                SizedBox(width: SizeConfig.screenWidth! / 40),
                InfoHyperlink(text: "Blog", onPressed: _goToBlogPage),
              ],
            ),
            SizedBox(height: SizeConfig.screenHeight! / 40),
            const Text(PersonalInfoConstants.myPhoneNumber, style: infoStyle),
            const Text(PersonalInfoConstants.myEmail, style: infoStyle),
            SizedBox(height: SizeConfig.screenHeight! / 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialMediaButton(
                  backgroundColor:
                      HexColor.fromHex(ColorConstants.facebookHexColor),
                  icon: const FaIcon(FontAwesomeIcons.facebook),
                  redirectUrl: PersonalInfoConstants.facebookProfileUrl,
                ),
                SizedBox(width: SizeConfig.screenWidth! / 50),
                SocialMediaButton(
                  backgroundColor:
                      HexColor.fromHex(ColorConstants.githubHexColor),
                  icon: const FaIcon(FontAwesomeIcons.github),
                  redirectUrl: PersonalInfoConstants.githubUrl,
                ),
                SizedBox(width: SizeConfig.screenWidth! / 50),
                SocialMediaButton(
                  backgroundColor:
                      HexColor.fromHex(ColorConstants.linkedinHexColor),
                  icon: const FaIcon(FontAwesomeIcons.linkedin),
                  redirectUrl: PersonalInfoConstants.linkedinUrl,
                ),
                SizedBox(width: SizeConfig.screenWidth! / 50),
                SocialMediaButton(
                  backgroundColor:
                      HexColor.fromHex(ColorConstants.twitterHexColor),
                  icon: const FaIcon(FontAwesomeIcons.twitter),
                  redirectUrl: PersonalInfoConstants.twitterUrl,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
