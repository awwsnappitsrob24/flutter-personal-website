import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final Color backgroundColor;
  final Icon icon;
  final String redirectUrl;
  const SocialMediaButton(
      {Key? key,
      required this.backgroundColor,
      required this.icon,
      required this.redirectUrl})
      : super(key: key);

  void _redirect() {
    print("redirect to url: $redirectUrl");
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: icon,
      backgroundColor: backgroundColor,
      onPressed: () => _redirect(),
    );
  }
}
