import 'package:flutter/material.dart';

class ButtonGridWidget extends StatelessWidget {
  final List<dynamic> data;

  const ButtonGridWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            left: 15.0,
            right: 15.0,
          ),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Card(
                child: InkWell(
                  onTap: () {
                    debugPrint("tapped");
                  },
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    color: Colors.black87,
                    child: Center(
                      child: Text(
                        data[index].title.toUpperCase(),
                        style: const TextStyle(
                            color: Colors.white70, fontSize: 16.0),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ));
  }
}
