import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mp_web/extensions/hover_extensions.dart';

// Link button with white hover animation.
// Uses URL launcher to move to other pages
//---------------------------------------------------
// author: Ariel Ferreiro
// date: 04-Apr-2020

class LinkButton extends StatefulWidget {
  final Icon icon;
  final Uri url;

  LinkButton({Key? key, required this.icon, required this.url})
      : super(key: key);

  @override
  LinkButtonState createState() => LinkButtonState();
}

class LinkButtonState extends State<LinkButton> {
  Color _color = Colors.white60;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          child: IconButton(
            icon: widget.icon,
            color: _color,
            iconSize: 40.0,
            onPressed: () {
              _launchURL(widget.url);
            },
          ).showCursorOnHover.moveUpOnHover,
        ),
        onTap: () {
          //Not needed.
        },
        onHover: (isHovering) {
          if (isHovering) {
            //The mouse is hovering.
            setState(() {
              _color = Colors.white;
            });
          } else {
            setState(() {
              _color = Colors.white70;
            }); //The mouse is no longer hovering.
          }
        });
  }

  _launchURL(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
