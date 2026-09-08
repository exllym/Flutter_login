import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatefulWidget {
  @override
  State<Coba> createState() => Coba_State();
}

class Coba_State extends State<Coba> {
  TextEditingController a = TextEditingController();
  String nama = "";

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextField(
              controller: a,
              decoration: InputDecoration(
                labelText: "Nama",
                hintText: ("Masukkan Nama"),
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    a.text;
                  });
                },
                child: Text("Ok")),
            Text(a.text),
          ],
        ),
      ),
    );
  }
}
