import 'package:flutter/material.dart';
import 'package:talkbox_v1/data/drawer_buttons.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> arraySentence = [];

  @override
  void initState() {
    // arraySentence.add("Mamá");
    // arraySentence.add("Quiero");
    // arraySentence.add("Ir");
    // arraySentence.add("Baño");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple.shade900,
              ),
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: Center(
                child: Text('TalkBox',
                    style: GoogleFonts.bebasNeue(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          letterSpacing: 10.0),
                    )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: drawerButtons.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      tileColor: Colors.grey.shade100,
                      // leading: Icon(drawerButtons[index].icon),
                      title: Text(
                        drawerButtons[index].title.toUpperCase(),
                        style: const TextStyle(fontSize: 20),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(
                            context, drawerButtons[index].route);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 80),
          child: Expanded(
              child: ListView.builder(
            itemCount: arraySentence.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                    title: Text(arraySentence[index],
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        )),
                    subtitle: const Text("Categoría:"),
                    trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            arraySentence.removeAt(index);
                          });
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                          size: 30.0,
                        ))),
              );
            },
          )),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            arraySentence.add("Mamá");
            arraySentence.add("Quiero");
            arraySentence.add("Comer");
          });
        },
        icon: const Icon(Icons.volume_up_rounded),
        label: const Text("Hablar!"),
        backgroundColor: Colors.deepPurple.shade900,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ));
  }
}
