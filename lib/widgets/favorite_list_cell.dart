import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListTile(
        leading: Text(
          'Hotel Name',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
        ),
        trailing: Icon(
          Icons.favorite,
          color: Colors.red,
        ),
      ),
    );
  }
}
