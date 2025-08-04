import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Section C",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student ID Card", style: TextStyle(fontSize: 20)),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 400,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/bv.png"),
                  radius: 80,
                ),
                Text(
                  "Ahmed Farhan",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Batch: 61st, Department of CSE",style: TextStyle(fontSize: 15),
                ),
                Divider(),
                Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.badge, color: Colors.blueGrey),
                      title: Text("ID:"),
                      subtitle: Text("0182310012101119"),
                    ),
                    ListTile(
                      leading: Icon(Icons.email, color: Colors.lightBlueAccent),
                      title: Text("Email:"),
                      subtitle: Text("bkfarhan@gmail.com"),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.greenAccent),
                      title: Text("Phone:"),
                      subtitle: Text("01726273607"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
