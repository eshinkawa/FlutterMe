import 'package:flutter/material.dart';
import 'package:sparkweb/utils/theme.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sparkweb/views/home_mobile.dart';

import 'views/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edu Shin',
      theme: appTheme(),
      home: Scaffold(body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          // Check the sizing information here and return your UI
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return Home(padding: 96);
          }

          if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
            return Home(padding: 24, greetingSize: 36, descSize: 22);
          }

          if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
            return HomeMobile();
          }

          return Home(padding: 96);
        },
      )),
    );
  }
}
