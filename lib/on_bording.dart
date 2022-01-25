import 'package:charity_app/donate_section.dart';
import 'package:charity_app/home.dart';
import 'package:flutter/material.dart';

class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Center(
                heightFactor: 1.5,
                child: Container(
                  width: 300,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/clipart3196794.png",
                        color: Colors.white,
                        width: 200,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0, bottom: 15),
                        child: Text(
                          "Charity",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: TextField(
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              hintText: "username",
                              fillColor: Colors.black38),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 30),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(15),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              hintText: "password",
                              fillColor: Colors.black38),
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.black38,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 110, vertical: 17),
                              textStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            );
                          },
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
                //
              ),
            ],
          ),
        ),
      ),
    );
  }
}
