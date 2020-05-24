import 'package:flutter/material.dart';
import 'package:sparkweb/widgets/answers.dart';
import 'package:sparkweb/widgets/social.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edu Shin',
      home: LandingPage(title: 'Olá!'),
    );
  }
}

class LandingPage extends StatefulWidget {
  LandingPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
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
                  padding: EdgeInsets.all(
                      MediaQuery.of(context).size.width > 1366 ? 96.0 : 36.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Hello, I'm\nEduardo Shinkawa",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 48,
                                fontFamily: "SourceSansPro",
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 18),
                      Text(
                        "Being doing this tech thing since 2014. Enjoying cross platforms solutions (React Native and Flutter). \nI love seeing built things on screen, that's the thing that I've always enjoyed the most about being a developer.",
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 24,
                            fontFamily: "SourceSansPro",
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width > 1366 ? 0 : 18),
                      MediaQuery.of(context).size.width > 1366 ? Container() : SocialMedia(),
                    ],
                  ),
                )),
            MediaQuery.of(context).size.width > 1366
                ? Expanded(
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
                  )
                : Container(),
          ]),
    );
  }
}
