import 'package:flutter/material.dart';
import 'package:sparkweb/utils/constants.dart';

class Profile extends StatelessWidget {
  const Profile({Key key, this.padding, this.greetingSize, this.descSize}) : super(key: key);
  final double padding;
  final double greetingSize;
  final double descSize;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/me.jpg"), fit: BoxFit.cover)),
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
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .copyWith(fontSize: greetingSize))
            ],
          ),
          SizedBox(height: 18),
          Text(DESCRIPTION,
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .copyWith(fontSize: descSize))
        ],
      ),
    );
  }
}
