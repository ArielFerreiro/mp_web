import 'package:flutter/material.dart';
import 'package:mp_web/widgets/activity.dart';
import 'package:responsive_builder/responsive_builder.dart';

// Row of Activities Widget
//-----------------------------------------------
// author: Ariel Ferreiro
// date: 04-Apr-2020

class Activities extends StatelessWidget {
  const Activities({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(
        tablet: 700,
        desktop: 1230,
        watch: 200
      ),
      desktop: _desktop(),
      tablet: _tablet(),
      mobile: _mobile(),
    );
  }
}

Widget _desktop() {
  return
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Activity(icon: Icons.school, title: 'Systems Bachelor', text: 'Flutter, Java, Web, R, Python, SAP,', text2: 'SQL, and a large etc.'),
          Activity(icon: Icons.work, title: 'Expert in Fields', text: 'Project & Service Management', text2: 'Software Dev. & Data Science.'),
          Activity(icon: Icons.business, title: 'Business Experience', text: 'Manufacturing, Supply Chain,', text2: 'Brand Integrity & cyber crime.'),
          Activity(icon: Icons.person, title: 'Look at me as', text: 'Libertarian, resilient, perfectionist,', text2: 'customer oriented & collaborative.'),
       ],
  );
}

Widget _tablet() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Activity(icon: Icons.school, title: 'Systems Bachelor', text: 'Flutter, Java, Web, R, Python, SAP,', text2: 'SQL, and a large etc.'),
          SizedBox(height: 20.0,),
          Activity(icon: Icons.work, title: 'Expert in Fields', text: 'Project & Service Management', text2: 'Software Dev. & Data Science.'),
        ],
      ),
      SizedBox(width: 20.0, ),
      Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Activity(icon: Icons.business, title: 'Business Experience', text: 'Manufacturing, Supply Chain,', text2: 'Brand Integrity & cyber crime.'),
              SizedBox(height: 20.0,),
              Activity(icon: Icons.person, title: 'Look at me as', text: 'Libertarian, resilient, perfectionist,', text2: 'customer oriented & collaborative.'),
            ],
      )
    ],
  );
}

Widget _mobile() {
    return  Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        children: <Widget>[
            Activity(icon: Icons.school, title: 'Systems Bachelor', text: 'Flutter, Java, Web, R, Python, SAP,', text2: 'SQL, and a large etc.'),
            SizedBox(height: 20.0,),
            Activity(icon: Icons.work, title: 'Expert in Fields', text: 'Project & Service Management', text2: 'Software Dev. & Data Science.'),
            SizedBox(height: 20.0,),
            Activity(icon: Icons.business, title: 'Business Experience', text: 'Manufacturing, Supply Chain,', text2: 'Brand Integrity & cyber crime.'),
            SizedBox(height: 20.0,),
            Activity(icon: Icons.person, title: 'Look at me as', text: 'Libertarian, resilient, perfectionist,', text2: 'customer oriented & collaborative.'),
        ],
      ),
    );
}
