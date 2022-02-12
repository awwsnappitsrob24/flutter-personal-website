import 'package:flutter/material.dart';

class InfoHyperlink extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const InfoHyperlink({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        text,
        style: const TextStyle(
            color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      onTap: onPressed,
    );
  }
}
