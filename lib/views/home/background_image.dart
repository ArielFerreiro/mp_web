import 'package:flutter/material.dart';

// Background image cover
//-----------------------------------------------
// author: Ariel Ferreiro
// date: 04-Apr-2020

class BackGroundImage extends StatelessWidget {
  const BackGroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/lights_full.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: null /* add child content here */,
      ),
    );
  }
}
