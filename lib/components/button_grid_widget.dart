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
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(data[index].title),
              );
            },
          ),
        ));
  }
}
