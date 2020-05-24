import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key key}) : super(key: key);

  _launchURL() async {
    const url = 'https://google.com.br';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Where to find me",
            style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontFamily: "SourceSansPro",
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Image(
                  image: AssetImage("assets/images/github.png"),
                  width: 64,
                  height: 64,
                ),
                onTap: _launchURL,
              ),
              SizedBox(width: 20),
              Image(
                image: AssetImage("assets/images/instagram.png"),
                width: 64,
                height: 64,
              ),
              SizedBox(width: 20),
              Image(
                image: AssetImage("assets/images/twitter.png"),
                width: 64,
                height: 64,
              ),
              SizedBox(width: 20),
              Image(
                image: AssetImage("assets/images/linkedin.png"),
                width: 64,
                height: 64,
              )
            ],
          )
        ],
      ),
    );
  }
}
