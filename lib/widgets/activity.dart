import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Single Acticity
//-----------------------------------------------
// author: Ariel Ferreiro
// date: 04-Apr-2020

class Activity extends StatelessWidget {

  final String title;
  final String text;
  final String text2;
  final IconData icon;

  const Activity({
    Key key, 
    @required this.title, 
    @required this.text, 
    @required this.text2, 
    @required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
            //width: 300.0,
            padding: EdgeInsets.only(top: 16.0, right: 24.0, bottom: 16.0, left: 8.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade600,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all( Radius.circular(8.0))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(this.icon, color: Colors.limeAccent, size: 32.0,),
                SizedBox(width: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                      Text(this.title,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.openSans(
                            color: Colors.white, 
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 4.0,),
                      Text(this.text,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                            color: Colors.white70, 
                            fontSize: 14.0,
                             fontWeight: FontWeight.w300),
                      ),
                      Text(this.text2,
                         overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.roboto(
                            color: Colors.white70, 
                            fontSize: 14.0,
                             fontWeight: FontWeight.w300),
                      ),
                  ],
                ),
              ],
            ),
          ),
    );
  }
}