import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Answer({Key key, this.answer}) : super(key: key);

  final String answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            answer,
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: "SourceSansPro",
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
