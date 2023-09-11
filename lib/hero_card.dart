import 'package:flutter/material.dart';
import 'package:ui_2/background_clipper.dart';
import 'package:ui_2/detail_page.dart';

class HeroCard extends StatelessWidget {
  const HeroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        /* Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailPage(),*/
        Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) =>
                  const DetailPage(),
            ));
      },
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: BackgroundClipper(),
              child: Hero(
                tag: "background",
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.6,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    colors: [Colors.red, Colors.redAccent],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  )),
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.8 * 0.2),
                child: Image.asset(
                  "assets/iron_man.png",
                  scale: 1.5,
                ),
              )),
          const Positioned(
            bottom: 20,
            left: 40,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Iron Man",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
                Text(
                  "Click for more details",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
