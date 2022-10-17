import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screens/booking_screen.dart';

class HotelCard extends StatelessWidget {
  HotelCard(
      {super.key,
      required this.imagePath,
      required this.hotelName,
      required this.hotelLocation,
      required this.price});
  final String imagePath;
  final String hotelName;
  final String hotelLocation;
  final price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 10, right: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Bookingscreen(
                        name: hotelName,
                        location: hotelLocation,
                      )));
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Stack(children: [
            Card(
              child: Image.asset(
                imagePath,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 125, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            hotelName,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '- ${hotelLocation}',
                                style: TextStyle(
                                  color: Color.fromARGB(167, 255, 255, 255),
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 18.0),
                                    child: Text(
                                      '$price',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 159, 159, 159),
                                          fontSize: 18),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: Color.fromARGB(199, 255, 255, 255),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.0),
                              ),
                              color: Color.fromARGB(136, 255, 255, 255),
                            ),
                            width: 35,
                            height: 35,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
