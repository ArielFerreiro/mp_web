import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Identity extends StatelessWidget {
  
  const Identity({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String moment = "";
    var hour = new DateTime.now().hour;
    if (hour >=0 && hour < 6) moment = 'Night';
    if (hour >=6 && hour < 12) moment = 'Morning';
    if (hour >=12 && hour < 18) moment = 'Afternoon';
    if (hour >=18 && hour < 24) moment = 'Evening';

    var name =  RichText(
      text:  TextSpan(
        // Note: Styles for TextSpans must be explicitly defined.
        // Child text spans will inherit styles from parent
        style: GoogleFonts.openSans(color: Colors.white70, fontSize: 36.0),
        children: <TextSpan>[
          new TextSpan(text: "I'm "),
          new TextSpan(text: 'Ariel', style: GoogleFonts.openSans(color: Colors.white, fontSize: 36.0, fontWeight: FontWeight.bold))
        ],
      ),
    );

    return ScreenTypeLayout(
      breakpoints: ScreenBreakpoints(
        tablet: 700,
        desktop: 1230,
        watch: 200
      ),
      desktop: _desktop_tablet(name, moment),
      tablet: _desktop_tablet(name, moment),
      mobile: _mobile(name, moment),
    );

  }

  Widget _desktop_tablet(Widget name, String moment) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Container(
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(96.0),
                boxShadow: [new BoxShadow(
                    color: Colors.white70,
                    blurRadius: 10.0
                )]
              ),
              child: Opacity(
                opacity: .7,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/img/profile.jpg'),
                  radius: 96.0,
                ),
              )
            ),

            SizedBox(width: 30.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                  Text("Good " + moment + ".",
                    style: GoogleFonts.openSans(color: Colors.white70, fontSize: 36.0),
                  ),
                  name,
              ],
            )
      ],);
  }

  Widget _mobile(Widget name, String moment) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 16.0),
          Container(
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(96.0),
                boxShadow: [new BoxShadow(
                    color: Colors.white70,
                    blurRadius: 10.0
                )]
              ),
              child: Opacity(
                opacity: .7,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/img/profile.jpg'),
                  radius: 96.0,
                ),
              )
            ),
            SizedBox(height: 16.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                  Text("Good " + moment + ".",
                    style: GoogleFonts.openSans(color: Colors.white70, fontSize: 36.0),
                  ),
                  name,
              ],
            ),
            SizedBox(height: 16.0),
      ],);
  }

}