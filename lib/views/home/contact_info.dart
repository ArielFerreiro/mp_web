import 'package:flutter/material.dart';
import 'package:mp_web/utils/contact_icons_icons.dart';
import 'package:mp_web/widgets/link_button.dart';

// Row with contact information links
//-----------------------------------------------
// author: Ariel Ferreiro
// date: 04-Apr-2020

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            LinkButton(icon: Icon(Icons.mail), url: 'mailto://ariel.ferreiro@gmail.com',),
            LinkButton(icon: Icon(ContactIcons.github), url: 'https://github.com/ArielFerreiro'),
            LinkButton(icon: Icon(ContactIcons.linkedin_squared), url: 'https://www.linkedin.com/in/arielferreiro/'),
            LinkButton(icon: Icon(ContactIcons.twitter), url: 'https://twitter.com/riel0k'),
        ],
      ),
    );
  }

}