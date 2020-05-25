import 'package:flutter/material.dart';
import 'package:sparkweb/widgets/profile.dart';
import 'package:sparkweb/widgets/social.dart';

class Home extends StatelessWidget {
  Home({Key key, this.padding, this.greetingSize, this.descSize})
      : super(key: key);

  final double padding;
  final double greetingSize;
  final double descSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Profile(
                    padding: padding,
                    descSize: descSize,
                    greetingSize: greetingSize)),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color(0xff537895), Color(0xff09203f)])),
                padding: EdgeInsets.all(32.0),
                child: SocialMedia(),
              ),
            ),
          ]),
    );
  }
}
