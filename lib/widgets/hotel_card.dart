import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
      padding: const EdgeInsets.only(top: 40.0),
      child: InkWell(
        onTap: () {},
        child: Card(
          child: Stack(children: [
            Image.asset(
              imagePath,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 100, left: 15),
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
                          Text(
                            hotelLocation,
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
                                      color: Color.fromARGB(255, 159, 159, 159),
                                      fontSize: 18),
                                  textAlign: TextAlign.start,
                                ),
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
