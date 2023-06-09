import 'package:flutter/material.dart';
import 'package:portfolio/achievement.dart';
import 'package:portfolio/navbar.dart';
import 'package:portfolio/profile.dart';
import 'package:portfolio/projects.dart';
import 'package:portfolio/skills.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover)),
        child: Padding(
          // padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                child: Navbar(),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                child: ProfilePage(),
              ),
              AchievementPage(),
              SkillPage(),
              ProjectPage(),
            ],
          ),
        ),
      ),
    );
  }
}
