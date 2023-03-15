import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) {
        return _desktopNavbar();
      },
    );
  }
}

Widget _desktopNavbar() {
  LinearGradient color = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [Color(0xff7C46FF), Color(0xffFF449B)],
  );
  return Container(
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 40,
            width: 100,
            decoration: BoxDecoration(
              gradient: color,
            ),
            child: Center(
              child: Text(
                'RESUME',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Kalam',
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
        ),
        Spacer(),
        Row(
          children: [
            navButton('HOME'),
            navButton('ACHIEVEMENTS'),
            navButton('SKILLS'),
            navButton('PROJECTS'),
          ],
        ),
        // SizedBox(
        //   width: 40,
        // )
      ],
    ),
  );
}

Widget navButton(String text) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
          onPressed: () {},
          child:
              Text(text, style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Kalam',
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.none),)));
}