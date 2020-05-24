import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key key, this.titleSize, this.imageSize})
      : super(key: key);

  final double titleSize;
  final double imageSize;

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
            style: Theme.of(context)
                .textTheme
                .headline
                .copyWith(fontSize: titleSize),
          ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                child: Image(
                    image: AssetImage("assets/images/github.png"),
                    width: imageSize),
                onTap: _launchURL,
              ),
              SizedBox(width: 20),
              Image(
                image: AssetImage("assets/images/instagram.png"),
                width: imageSize,
              ),
              SizedBox(width: 20),
              Image(
                  image: AssetImage("assets/images/twitter.png"),
                  width: imageSize),
              SizedBox(width: 20),
              Image(
                  image: AssetImage("assets/images/linkedin.png"),
                  width: imageSize)
            ],
          )
        ],
      ),
    );
  }
}
