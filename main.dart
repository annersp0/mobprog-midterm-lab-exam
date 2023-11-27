//Petalcorin, Anne Rachel S. — IT3R6

import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(ArspApp());
}

class ArspApp extends StatelessWidget {
  List<String> names = ["Dan", "Reyes", "John"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Icon(Icons.home),
              SizedBox(width: 8),
              Text('Hello World', style: TextStyle(color: Colors.white)), 
            ],
          ),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              String name = names[index];
              return ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 30,
                ),
                title: Text(
                  name,
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  '${name.length} letters',
                  style: TextStyle(color: Colors.grey)
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}