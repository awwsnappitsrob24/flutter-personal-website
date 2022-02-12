import 'package:flutter/material.dart';
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
              backgroundColor: Colors.red,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset("assets/images/profile_picture.jpg",
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: SizeConfig.widgetListHeightPadding),
            const Text(Constants.myName, style: nameStyle),
            const Text(Constants.myTitle, style: titleStyle),
            const Text(Constants.myPhoneNumber, style: infoStyle),
            const Text(Constants.myEmail, style: infoStyle),
            SizedBox(height: SizeConfig.widgetListHeightPadding),
            const SocialMediaButton(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.facebook_outlined),
              redirectUrl: Constants.facebookProfileUrl,
            ),
          ],
        ),
      ),
    );
  }
}
