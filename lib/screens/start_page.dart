import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: WaveShape(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              color: Colors.purple.shade900,
            ),
          ),
          Positioned(
              top: 25.0,
              left: 10.0,
              child: Text("TalkBox",
                  style: GoogleFonts.bebasNeue(
                      textStyle: const TextStyle(
                          fontSize: 100,
                          letterSpacing: 10.0,
                          color: Colors.white)))),
          Positioned(
              top: 120,
              left: 20,
              child: Text(
                "Comunica tu mundo con TalkBox",
                style: GoogleFonts.pacifico(
                    textStyle: const TextStyle(
                        fontSize: 20,
                        letterSpacing: 3.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70)),
              )),
          Center(
              child: IconButton(
                  color: Colors.purple.shade900,
                  iconSize: 80,
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/inicio');
                  },
                  icon: const Icon(Icons.home_rounded)))
        ],
      ),
    ));
  }
}

class WaveShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => true;
}
