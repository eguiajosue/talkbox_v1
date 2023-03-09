import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Stack(
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
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 30.0, left: 0.0, right: 0.0, bottom: 10.0),
            child: Text(
              "Iniciar Sesión".toUpperCase(),
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold)),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                width: 350,
                child: TextField(
                    decoration: InputDecoration(
                  labelText: 'Correo Electrónico',
                  border: OutlineInputBorder(),
                )),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 350,
                child: TextField(
                    decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                )),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple.shade900, // Background color
                  ),
                  onPressed: () {},
                  label: const Text("Iniciar Sesión"),
                  icon: const FaIcon(
                    FontAwesomeIcons.arrowRight,
                  )),
              const SizedBox(
                height: 50,
                width: 350.0,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple.shade50, // Background color
                  ),
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.black45,
                  ),
                  label: const Text(
                    "Iniciar sesión con Google",
                    style: TextStyle(color: Colors.black45),
                  ))
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushNamed(context, '/inicio');
        },
        label: const Text("Continuar sin iniciar sesión"),
        backgroundColor: Colors.deepPurple.shade900,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
