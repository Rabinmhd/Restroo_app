import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WidgetRestaurent extends StatelessWidget {
  WidgetRestaurent({super.key, required this.url});
  String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(height: 120,decoration: BoxDecoration(color: Colors.blue[50],borderRadius: BorderRadius.circular(20)),
        
        child: ClipRRect(borderRadius: BorderRadius.circular(20),
                   
          child: Column( children: [
            Container(height: 94,width: 150,
              child: Image.network(
                url,
                fit: BoxFit.cover,
              ),
            ),
             const Text(
                 style: TextStyle(
                  fontSize: 14
                 ),
                 "Rahmath"),const Text(
                 style: TextStyle(
                  fontSize: 14
                 ),"kozhikkode")
          ]),
        ),
      ),
    );
  }
}
