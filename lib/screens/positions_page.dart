import 'package:flutter/material.dart';
import 'package:talkbox_v1/components/button_grid_widget.dart';
import 'package:talkbox_v1/data/buttons.dart';
import 'package:talkbox_v1/data/drawer_buttons.dart';

class PositionsPage extends StatefulWidget {
  const PositionsPage({super.key});

  @override
  State<PositionsPage> createState() => _PositionsPageState();
}

class _PositionsPageState extends State<PositionsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Posiciones".toUpperCase(),
            style: const TextStyle(
                color: Colors.black, fontSize: 25.0, letterSpacing: 5.0),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          elevation: 0,
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
        body: ButtonGridWidget(data: positionsButtons),
      ),
    );
  }
}
