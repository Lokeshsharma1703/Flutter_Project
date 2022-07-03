import 'package:flutter/material.dart';

class thirdScreen extends StatelessWidget {
  DateTime today = DateTime.now();
  String name;
  thirdScreen({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Hii, ${name}",
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              Image(
                image: AssetImage("images/certificate.jpg"),
                height: 250,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 120,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "You have successfully complete Hybrid Mobile App Development Course.",
                      style: TextStyle(fontSize: 23),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Container(
                        width: 400,
                        child: Text(
                          "Instructor Name",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        width: 400,
                        child: Text(
                          "Pankaj Kapoor",
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              SizedBox(
                width: 400,
                child: Text(
                  'Date :  ${today.day}-${today.month}-${today.year}',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
