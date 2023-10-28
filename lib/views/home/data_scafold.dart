import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'activities.dart';
import 'contact_info.dart';
import 'identity.dart';

// Main Data Scafold
//-----------------------------------------------
// author: Ariel Ferreiro
// date: 04-Apr-2020

class DataScafold extends StatelessWidget {
  const DataScafold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints: ScreenBreakpoints(tablet: 700, desktop: 1230, watch: 200),
      desktop: (context) => _screen(),
      tablet: (context) => _screen(),
      mobile: (context) => SingleChildScrollView(
        child: _screen(),
      ),
    );
  }
}

Widget _screen() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[Identity(), Activities(), ContactInfo()],
  );
}
