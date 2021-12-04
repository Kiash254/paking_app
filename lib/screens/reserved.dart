// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent[400],
          elevation: 0.0,
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
          title: Column(
            children: [
              Text('Reserved Parking',
                  style: TextStyle(color: Colors.blue[900])),
              Text(
                'TODAY',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Icon(
                        Icons.car_rental,
                        size: 60,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'NMS Reserved Packing',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25),
                        ),
                        Text(
                          '1PM-3Pm (2 Hours)',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Nairobi CBD Area",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Positioned(
                      child: Icon(
                    Icons.pie_chart_outline,
                    color: Colors.red,
                    size: 100,
                  )),
                )),
            SizedBox(height: 250),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: GestureDetector(
                onTap: () => {
                  {Navigator.pop(context)}
                },
                child: Container(
                  color: Colors.white,
                  child: Container(
                    height: 40,
                    color: Colors.blueAccent,
                    child: Center(
                        child: Text('Cancel Reservation',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18))),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: GestureDetector(
                onTap: () => {Navigator.pop(context)},
                child: Container(
                  color: Colors.white,
                  child: Container(
                      height: 40,
                      color: Colors.blueAccent,
                      child: Center(
                          child: Text('Extend Reservation',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18)))),
                ),
              ),
            ),
          ]),
        ));
  }
}
