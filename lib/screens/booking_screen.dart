import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Bookingscreen extends StatefulWidget {
  final name;
  final location;
  const Bookingscreen({super.key, this.name, this.location});

  @override
  State<Bookingscreen> createState() => _BookingscreenState();
}

class _BookingscreenState extends State<Bookingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0), // here the desired height
        child: AppBar(
          leading: BackButton(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'name',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          Container(
            child: Card(
              child: Image.asset('assets/images/bedroom.png'),
            ),
          ),
          Text(
            'data',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          Text(
            'data',
            style: TextStyle(color: Colors.black),
          ),
          Text(
            'data',
            style: TextStyle(color: Colors.black),
          ),
          ButtonBar(),
          SizedBox(height: 10),
          Container(
              child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)),
            child: Text(
              'Book Now',
            ),
          )),
          Divider(
            color: Colors.black,
          ),
          Container(
            child: Expanded(
              child: Card(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (content, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Image.asset(
                        'assets/images/bedroom.png',
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
