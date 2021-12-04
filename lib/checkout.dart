// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutable, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pro/screens/style.dart';
// import 'screens/pop.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://images.pexels.com/photos/1756957/pexels-photo-1756957.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                          ),
                          fit: BoxFit.cover)),
                )
              ],
            ),
            Container(
                height: 20,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Oder Total",
                      style: Large_black,
                    ),
                    SizedBox(width: 200),
                    Text(
                      "Kshs ,500",
                      style: Large_Blue,
                    )
                  ],
                )),
            Divider(height: 20, color: Colors.grey),
            Container(
              child: Column(
                children: [
                  Text(
                    "NMS PARKING SPACE Nairobi CBD Area",
                    style: Large_Blue,
                  ),
                  Text(
                    "Nairobi CBD Area",
                    style: Large_Blue,
                  )
                ],
              ),
            ),
            Container(
              height: 75,
              color: Colors.blue[900],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text(
                          "Arrive By:",
                          style: Medium_white,
                        ),
                        Text(
                          "Thur May 27",
                          style: Medium_white,
                        ),
                        Text(
                          '1 PM',
                          style: Medium_white,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(children: [
                      Icon(Icons.arrow_forward, color: Colors.white70),
                      Text(
                        "1:00PM",
                        style: Medium_white,
                      )
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Text(
                          'Leave Before',
                          style: Medium_white,
                        ),
                        Text('Thur May, 27', style: Medium_white),
                        Text('3:00PM', style: Medium_white)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                child: Row(
              children: [
                Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Type',
                      style: Medium_bold,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Quantity',
                      style: Medium_bold,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Price',
                      style: Medium_bold,
                    )
                  ],
                ),
                SizedBox(width: 237),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Transient Reservation',
                      style: font_size,
                    ),
                    SizedBox(width: 20, height: 10),
                    Text(
                      '1 Reservation',
                      style: font_size,
                    ),
                    SizedBox(height: 10),
                    Text('Ksh, 500', style: Large_Blue)
                  ],
                )
              ],
            )),
            SizedBox(height: 130),
            Container(
              child: Text(
                "Total Price Includes All applicable taxes and fees for your selected Parking Option",
                style: Medium_Grey,
              ),
            ),
            SizedBox(height: 100),
            // Dialog(),
            Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blueAccent,
                  child: TextButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Container(
                          color: Colors.blueAccent,
                          child: Center(
                              child: Text(
                            'DONE',
                            style: Medium_Blue,
                          )),
                        ),
                        content: Column(
                          children: [
                            Container(
                              color: Colors.blueGrey,
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(50),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://cdn-icons.flaticon.com/png/128/3106/premium/3106690.png?token=exp=1638523336~hmac=a66cfb3fc69bd2680d8808b9e9f5634a'))),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text('Congratulations!', style: Medium_white),
                                  SizedBox(height: 10),
                                  Text(
                                    "You have Successfully Reserved Your Parking Space",
                                    style: Medium_white,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.white,
                                    child: Center(
                                        child: Text(
                                      "Please Save and Scan the QR code Below for your Gate Pass",
                                      style: Medium_red,
                                    )),
                                  ),
                                  Container(
                                      color: Colors.white70,
                                      child: Container(
                                        child: Image(
                                          image: NetworkImage(
                                              'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/QR_code_for_mobile_English_Wikipedia.svg/1200px-QR_code_for_mobile_English_Wikipedia.svg.png'),
                                        ),
                                      )),
                                  SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              6),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('CLOSE', style: Medium_white))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text("Submit", style: Medium_white),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
