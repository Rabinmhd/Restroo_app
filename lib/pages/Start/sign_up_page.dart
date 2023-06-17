import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Restroo App"),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(labelText: "Name",filled: true,fillColor: Colors.blue[50],
                  border:const OutlineInputBorder(borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(labelText: "Email",filled: true,fillColor: Colors.blue[50],
                  border:const OutlineInputBorder(borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(labelText: "Password",filled: true,fillColor: Colors.blue[50],
                  border:const OutlineInputBorder(borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(labelText: "Password",filled: true,fillColor: Colors.blue[50],
                  border:const OutlineInputBorder(borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: () {
              
            }, child: const Text("Sign up"))
          ],
        ),
      ),
    );
  }
}
