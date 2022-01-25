import 'package:charity_app/donate.dart';
import 'package:flutter/material.dart';

class DonateSection extends StatefulWidget {
  final String donateName;
  const DonateSection({Key? key, required this.donateName}) : super(key: key);

  @override
  State<DonateSection> createState() => _DonateSectionState();
}

class _DonateSectionState extends State<DonateSection> {
  double _sliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Donate()),
        );
      },
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 10),
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 30,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.donateName,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.cyan,
                        ),
                      ),
                      Text("Lorem Ipsum is simply dummy text"),
                      Row(
                        children: [
                          Icon(
                            Icons.monetization_on_sharp,
                            size: 30,
                            color: Colors.cyan,
                          ),
                          Slider(
                            thumbColor: Colors.cyan,
                            activeColor: Colors.cyan,
                            inactiveColor: Colors.grey,
                            value: _sliderValue,
                            min: 0,
                            max: 100,
                            label: _sliderValue.round().toString(),
                            onChanged: (value) {
                              setState(() {
                                _sliderValue = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
