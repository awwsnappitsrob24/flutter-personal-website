import 'package:flutter/material.dart';
import 'package:flutter_personal_website/utils/size_config.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100.0,
              backgroundColor: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset("assets/images/about_me_pic.jpg",
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
        SizedBox(width: SizeConfig.screenWidth! / 30),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Me',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                  "\nWelcome! My name is Robien Marquez. I like to build mobile applications. It's actually pretty crazy. I had no computer science background of any kind when I declared for the major my Sophomore year in college. The first time I was exposed to any kind of code was during my senior year in high school. I had a friend who was into games who made his own game. My curiousity instantly peaked. I wanted to see how exactly he made it, and he showed me some of the code he had written. Right then and there I decided to laearn more about it. However, I went into my Freshman year in college still Undecided as I was afraid of taking that leap. I finally decided to take that leap the year after and it has been a wonderful ride to say the least.\n"),
              Text(
                  "My eyes have been opened to how powerful us developers truly are. We have the ability to change the world within our fingertips. The ppssibility of changing people's lives in a positive way should be something that every human being in this world should jump at the chance on. That's what I have decided to do. I may not be the best developer out there, not by a longshot. However, my relentless drive will more than make up for that.\n"),
              Text(
                  "I am a big proponent of constant learning. That is what excites me about software development. If you are not learning, you are stagnant. Learning a new skills drives me everyday to be better. Not just in software development but in life in general. I will always continue to learn and grow everyday. I will pass down that trait to my kids someday.\n"),
            ],
          ),
        ),
      ],
    );
  }
}
