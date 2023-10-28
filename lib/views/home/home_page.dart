import 'package:flutter/material.dart';

//Widgets
import 'background_image.dart';
import 'data_scafold.dart';
import 'package:mp_web/widgets/animated_background.dart';
//import 'package:mp_web/widgets/particles.dart';

// Main Home Page
//-----------------------------------------------
// author: Ariel Ferreiro
// date: 04-Apr-2020

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Positioned.fill(child: BackGroundImage()),
        Positioned.fill(child: AnimatedBackground()),
        //Positioned.fill(child: Particles(30)),
        Positioned.fill(child: DataScafold()),
      ]),
    );
  }
}
