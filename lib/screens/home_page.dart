import 'package:flutter/material.dart';
import 'package:talkbox_v1/data/drawer_buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //!  LISTA DE PRUEBA - ELIMINAR!
  List<String> items = List<String>.generate(5, (i) => 'Palabra $i');

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
        child: ListView.builder(
          itemCount: drawerButtons.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(drawerButtons[index].icon),
                title: Text(
                  drawerButtons[index].title.toUpperCase(),
                  style: const TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.pushNamed(context, drawerButtons[index].route);
                },
              ),
            );
          },
        ),
      ),
      body: Column(
        children: [
          const Text(
            "TalkBox",
            style: TextStyle(fontSize: 75.0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    leading: const FlutterLogo(),
                    title: Text(items[index]),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red.shade900,
                      ),
                    )),
              );
            },
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.volume_up_rounded),
        label: const Text("Hablar!"),
        backgroundColor: Colors.blueGrey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ));
  }
}
