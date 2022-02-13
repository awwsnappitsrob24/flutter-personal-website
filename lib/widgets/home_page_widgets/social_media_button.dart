import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaButton extends StatelessWidget {
  final Color backgroundColor;
  final FaIcon icon;
  final String redirectUrl;
  final String heroTag;
  const SocialMediaButton(
      {Key? key,
      required this.backgroundColor,
      required this.icon,
      required this.redirectUrl,
      required this.heroTag})
      : super(key: key);

  void _redirect() async {
    if (!await launch(redirectUrl)) throw 'Could not launch $redirectUrl';
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      child: icon,
      backgroundColor: backgroundColor,
      onPressed: () => _redirect(),
    );
  }
}
