import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AllRestaurent extends StatelessWidget {
  AllRestaurent({super.key, required this.url});
  String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Image.network(
              url,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
