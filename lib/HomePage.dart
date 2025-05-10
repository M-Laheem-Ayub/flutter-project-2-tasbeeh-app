// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  void incrementFunction() {
    setState(() {
      counter++;
    });
  }

  void resetFunction() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff0e593e),
        appBar: AppBar(
          title: Center(
            child: Text(
              "Tasbeeh Counter by Laheem",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffeadaab),
              ),
            ),
          ),
          backgroundColor: Color(0xff0e593e),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Stack(
                children: [
                  Center(
                    child: Image.asset(
                      "assets/images/counter-bg.png",
                      width: 400,
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: counter >= 100 ? 131 : 110),
                      child: Text(
                        counter.toString(),
                        style: TextStyle(
                          fontSize: counter >= 100 ? 70 : 100,
                          color: Color(0xffeadaab),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0d4c3a),
                      foregroundColor: Color(0xffeadaab),
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Color(0xffeadaab), width: 3),
                      ),
                    ),
                    onPressed: () {
                      incrementFunction();
                    },
                    child: Text("COUNT", style: TextStyle(fontSize: 20)),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0d4c3a),
                      foregroundColor: Color(0xffeadaab),
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(color: Color(0xffeadaab), width: 3),
                      ),
                    ),
                    onPressed: () {
                      resetFunction();
                    },
                    child: Text("RESET", style: TextStyle(fontSize: 20)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
