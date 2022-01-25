// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class Donate extends StatefulWidget {
  const Donate({Key? key}) : super(key: key);

  @override
  _DonateState createState() => _DonateState();
}

class _DonateState extends State<Donate> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
            backgroundColor: Colors.cyan,
            toolbarHeight: 90,
            title: Text("Donate"),
            centerTitle: true,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
            bottom: TabBar(tabs: const [
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Tab(
                  child: Text(
                    "Make a donation to",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              )
            ])),
        body: TabBarView(children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(left: 20, right: 20),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.camera_alt_outlined,
                      size: 30,
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyan,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: const Text(
                      "Help1",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.cyan,
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    child: Text(
                      "Lorem Ipsum is simply dummy text Lorem Ipsum is simply dummy text",
                      style: TextStyle(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 20),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),
                  Text(
                    "Select Card",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.cyan,
                    ),
                  ),
                  Image.asset(
                    "assets/card.png",
                    width: 200,
                  ),
                  TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                        hintText: "Select Amount",
                        fillColor: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 2,
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.cyan,
                          padding: EdgeInsets.symmetric(
                              horizontal: 60, vertical: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          textStyle: TextStyle(
                            fontSize: 17,
                          )),
                      onPressed: () {},
                      child: Text("Send Donation"))
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
