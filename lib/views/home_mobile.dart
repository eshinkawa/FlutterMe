import 'package:flutter/material.dart';
import 'package:sparkweb/utils/constants.dart';
import 'package:sparkweb/widgets/social.dart';

class HomeMobile extends StatelessWidget {
  HomeMobile({Key key, this.answer}) : super(key: key);

  final String answer;

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
                  padding: EdgeInsets.all(48.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(GREETING,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline
                                  .copyWith(fontSize: 36))
                        ],
                      ),
                      SizedBox(height: 6),
                      Text(DESCRIPTION,
                          style: Theme.of(context)
                              .textTheme
                              .display1
                              .copyWith(fontSize: 24)),
                      SizedBox(height: 36),
                      SocialMedia(titleSize: 24, imageSize: 36,)
                    ],
                  ),
                )),
          ]),
    );
  }
}
