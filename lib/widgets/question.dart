import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  Question({Key key, this.question, this.icon}) : super(key: key);

  final Map<String, IconData> iconMapping = {
    'person': Icons.person,
    'merge_type': Icons.merge_type,
    'settings_cell': Icons.settings_cell,
    'pin_drop': Icons.pin_drop,
  };

  final String icon;
  final String question;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          IconButton(
            icon: Icon(
              iconMapping[icon],
              color: Colors.white70,
            ),
            onPressed: () => {},
          ),
          Text(
            question,
            style: TextStyle(
                color: Colors.white54,
                fontSize: 24,
                fontFamily: "SourceSansPro",
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
