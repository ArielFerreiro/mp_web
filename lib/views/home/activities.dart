import 'package:flutter/material.dart';
import 'package:mp_web/utils/translations.dart';
import 'package:mp_web/widgets/activity.dart';
import 'package:responsive_builder/responsive_builder.dart';

// Row of Activities Widget
//-----------------------------------------------
// author: Ariel Ferreiro
// date: 04-Apr-2020

class Activities extends StatelessWidget {
  const Activities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      breakpoints: ScreenBreakpoints(tablet: 700, desktop: 1230, watch: 200),
      desktop: (context) => _desktop(context),
      tablet: (context) => _tablet(context),
      mobile: (context) => _mobile(context),
    );
  }
}

Widget _desktop(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Activity(
          icon: Icons.school,
          title: Translations.of(context)!.text('systems_bachelor'),
          text: Translations.of(context)!.text('is_1'),
          text2: Translations.of(context)!.text('is_2')),
      Activity(
          icon: Icons.work,
          title: Translations.of(context)!.text('expert'),
          text: Translations.of(context)!.text('expert_1'),
          text2: Translations.of(context)!.text('expert_2')),
      Activity(
          icon: Icons.business,
          title: Translations.of(context)!.text('business_experience'),
          text: Translations.of(context)!.text('business_1'),
          text2: Translations.of(context)!.text('business_2')),
      Activity(
          icon: Icons.person,
          title: Translations.of(context)!.text('look_me'),
          text: Translations.of(context)!.text('look_1'),
          text2: Translations.of(context)!.text('look_2')),
    ],
  );
}

Widget _tablet(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Activity(
              icon: Icons.school,
              title: Translations.of(context)!.text('systems_bachelor'),
              text: Translations.of(context)!.text('is_1'),
              text2: Translations.of(context)!.text('is_2')),
          SizedBox(
            height: 20.0,
          ),
          Activity(
              icon: Icons.work,
              title: Translations.of(context)!.text('expert'),
              text: Translations.of(context)!.text('expert_1'),
              text2: Translations.of(context)!.text('expert_2')),
        ],
      ),
      SizedBox(
        width: 20.0,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Activity(
              icon: Icons.business,
              title: Translations.of(context)!.text('business_experience'),
              text: Translations.of(context)!.text('business_1'),
              text2: Translations.of(context)!.text('business_2')),
          SizedBox(
            height: 20.0,
          ),
          Activity(
              icon: Icons.person,
              title: Translations.of(context)!.text('look_me'),
              text: Translations.of(context)!.text('look_1'),
              text2: Translations.of(context)!.text('look_2')),
        ],
      )
    ],
  );
}

Widget _mobile(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
    child: Column(
      children: <Widget>[
        Activity(
            icon: Icons.school,
            title: Translations.of(context)!.text('systems_bachelor'),
            text: Translations.of(context)!.text('is_1'),
            text2: Translations.of(context)!.text('is_2')),
        SizedBox(
          height: 20.0,
        ),
        Activity(
            icon: Icons.work,
            title: Translations.of(context)!.text('expert'),
            text: Translations.of(context)!.text('expert_1'),
            text2: Translations.of(context)!.text('expert_2')),
        SizedBox(
          height: 20.0,
        ),
        Activity(
            icon: Icons.business,
            title: Translations.of(context)!.text('business_experience'),
            text: Translations.of(context)!.text('business_1'),
            text2: Translations.of(context)!.text('business_2')),
        SizedBox(
          height: 20.0,
        ),
        Activity(
            icon: Icons.person,
            title: Translations.of(context)!.text('look_me'),
            text: Translations.of(context)!.text('look_1'),
            text2: Translations.of(context)!.text('look_2')),
      ],
    ),
  );
}
