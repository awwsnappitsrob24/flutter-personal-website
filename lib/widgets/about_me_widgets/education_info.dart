import 'package:flutter/material.dart';
import 'package:flutter_personal_website/utils/size_config.dart';

class EducationInfo extends StatelessWidget {
  const EducationInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Education',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                  "\nCalifornia State University Long Beach was my academic home for approximately 7 years. I graduated with a Bachelor of Science in Computer Science in May 2016. I compiled a 3.22 GPA and made it to the Dean's List twice. I acknowledge that my GPA isn't anything special. However, I earned every inch of that GPA. My relevant coursework include: Mobile Application Development, Intro to Software Engineering, Data Structures and Algorithms, Database Fundamentals, and a Senior Project Course.\n"),
              Text(
                  "I graduated with a Master's Degree in Computer Science with concentration in Software Development. I graduated on May 2020 with a 3.3 GPA. My relevant coursework include: Advanced Topics in Programming Languages, Advanced Data Structures and Algorithms, Advanced Software Engineering, Requirements Engineering, Software Testing and Verification, and Software Architecture.\n"),
            ],
          ),
        ),
        SizedBox(width: SizeConfig.screenWidth! / 30),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100.0,
              backgroundColor: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset("assets/images/csulb_logo.jpg",
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
