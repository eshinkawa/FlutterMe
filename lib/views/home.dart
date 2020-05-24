import 'package:flutter/material.dart';
import 'package:sparkweb/utils/constants.dart';
import 'package:sparkweb/widgets/social.dart';

class Home extends StatelessWidget {
  Home({Key key, this.padding }) : super(key: key);

  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/me.jpg"),
                          fit: BoxFit.cover)),
                  padding: EdgeInsets.all(padding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(GREETING,
                              style: Theme.of(context).textTheme.headline)
                        ],
                      ),
                      SizedBox(height: 18),
                      Text(DESCRIPTION,
                          style: Theme.of(context).textTheme.display1)
                    ],
                  ),
                )),
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
