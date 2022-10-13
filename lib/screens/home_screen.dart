import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:main/model/hotel_info.dart';
import 'package:main/widgets/heading_search_widget.dart';

import '../widgets/hotel_card.dart';
import '../widgets/search_bar_widget.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  List<Hotel> hotels = [
    Hotel(
        hotelLocation: 'Hotel Location',
        hotelName: 'Hotel Name',
        imagepath: 'assets/images/bedroom.png',
        price: 20),
    Hotel(
        hotelLocation: 'Hotel Location',
        hotelName: 'Hotel Name',
        imagepath: 'assets/images/bedroom.png',
        price: 20),
    Hotel(
        hotelLocation: 'Hotel Location',
        hotelName: 'Hotel Name',
        imagepath: 'assets/images/bedroom.png',
        price: 20),
    Hotel(
        hotelLocation: 'Hotel Location',
        hotelName: 'Hotel Name',
        imagepath: 'assets/images/bedroom.png',
        price: 20),
    Hotel(
        hotelLocation: 'Hotel Location',
        hotelName: 'Hotel Name',
        imagepath: 'assets/images/bedroom.png',
        price: 20),
    Hotel(
        hotelLocation: 'Hotel Location',
        hotelName: 'Hotel Name',
        imagepath: 'assets/images/bedroom.png',
        price: 20),
    Hotel(
        hotelLocation: 'Hotel Location',
        hotelName: 'Hotel Name',
        imagepath: 'assets/images/bedroom.png',
        price: 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          const HeadingSearchWidget(),
          Expanded(
            child: ListView.builder(
                itemCount: hotels.length,
                itemBuilder: (context, index) => HotelCard(
                    imagePath: hotels[index].imagepath,
                    hotelName: hotels[index].hotelName,
                    hotelLocation: hotels[index].hotelLocation,
                    price: hotels[index].price)),
          )
        ],
      )),
    );
  }
}
