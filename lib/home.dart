import 'package:charity_app/donate_section.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          bottom: TabBar(
            indicatorWeight: 10,
            tabs: [
              Tab(
                child: Text(
                  "Option1",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Tab(
                child: Text(
                  "Option2",
                  style: TextStyle(fontSize: 17),
                ),
              ),
              Tab(
                child: Text(
                  "Option3",
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
          title: Text('Search Filter'),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  DonateSection(donateName: "donateName"),
                  DonateSection(donateName: "donateName"),
                  DonateSection(donateName: "donateName"),
                  DonateSection(donateName: "donateName"),
                  DonateSection(donateName: "donateName"),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  DonateSection(donateName: "donateName"),
                  DonateSection(donateName: "donateName"),
                  DonateSection(donateName: "donateName"),
                  DonateSection(donateName: "donateName"),
                  DonateSection(donateName: "donateName"),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  DonateSection(donateName: "donateName"),
                  DonateSection(donateName: "donateName"),
                  DonateSection(donateName: "donateName"),
                  DonateSection(donateName: "donateName"),
                  DonateSection(donateName: "donateName"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
