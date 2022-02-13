import 'package:flutter/material.dart';
import 'package:flutter_personal_website/screens/about_me_page.dart';
import 'package:flutter_personal_website/screens/blog_page.dart';
import 'package:flutter_personal_website/screens/portfolio_page.dart';
import 'package:flutter_personal_website/utils/colors.dart';
import 'package:flutter_personal_website/widgets/home_page_widgets/info_hyperlink.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_personal_website/utils/constants.dart';
import 'package:flutter_personal_website/utils/size_config.dart';
import 'package:flutter_personal_website/widgets/home_page_widgets/social_media_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  static const TextStyle nameStyle =
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static const TextStyle titleStyle = TextStyle(fontSize: 16);
  static const TextStyle infoStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

  void _goToAboutMePage(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const AboutMePage(),
        ));
  }

  void _goToPortfolioPage(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const PortfolioPage(),
        ));
  }

  void _goToBlogPage(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const BlogPage(),
        ));
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
                InfoHyperlink(
                  text: "About Me",
                  onPressed: () => _goToAboutMePage(context),
                ),
                SizedBox(width: SizeConfig.screenWidth! / 40),
                InfoHyperlink(
                  text: "Portfolio",
                  onPressed: () => _goToPortfolioPage(context),
                ),
                SizedBox(width: SizeConfig.screenWidth! / 40),
                InfoHyperlink(
                  text: "Blog",
                  onPressed: () => _goToBlogPage(context),
                ),
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
                  heroTag: HeroTagConstants.facebookHeroTag,
                ),
                SizedBox(width: SizeConfig.screenWidth! / 50),
                SocialMediaButton(
                  backgroundColor:
                      HexColor.fromHex(ColorConstants.githubHexColor),
                  icon: const FaIcon(FontAwesomeIcons.github),
                  redirectUrl: PersonalInfoConstants.githubUrl,
                  heroTag: HeroTagConstants.githubHeroTag,
                ),
                SizedBox(width: SizeConfig.screenWidth! / 50),
                SocialMediaButton(
                  backgroundColor:
                      HexColor.fromHex(ColorConstants.linkedinHexColor),
                  icon: const FaIcon(FontAwesomeIcons.linkedin),
                  redirectUrl: PersonalInfoConstants.linkedinUrl,
                  heroTag: HeroTagConstants.linkedinHeroTag,
                ),
                SizedBox(width: SizeConfig.screenWidth! / 50),
                SocialMediaButton(
                  backgroundColor:
                      HexColor.fromHex(ColorConstants.twitterHexColor),
                  icon: const FaIcon(FontAwesomeIcons.twitter),
                  redirectUrl: PersonalInfoConstants.twitterUrl,
                  heroTag: HeroTagConstants.twitterHeroTag,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
