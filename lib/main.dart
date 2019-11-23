import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Leo Tiofan Justicia',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: CoverSection(),
        )
    );
  }
}

class CoverSection extends StatelessWidget {

  Widget getGreetingsWidget() {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Text(
        'I\'m Leo Tiofan Justicia',
        softWrap: true,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: Colors.white.withOpacity(0.75),
        ),
      ),
    );
  }

  Widget getDescriptionWidget() {
    return SizedBox(
      width: (window.physicalSize.width / 2) - 64,
        child: Text(
        'I\'m a Tech Engineer (Javascript Specialization). Currently I\'m working as a Front End Engineer for Jenius - BTPN, a bank company located on Greater Jakarta, Indonesia. I have about 3 years experience developing application using HTML, CSS (or SCSS), ReactJS, React Native, Redux and LoopbackJS and other Javascript Technologies.',
        softWrap: true,
        style: TextStyle(color: Colors.white.withOpacity(0.75), fontSize: 18),
      ),
    );
  }

  Widget getContentWidgets() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        getGreetingsWidget(),
        getDescriptionWidget()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: MediaQuery.of(context).size.height,
      ),
      decoration: new BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage('images/cover-desktop.jpg'),
          fit: BoxFit.fitWidth
        )
      ),
      child: Container(
        margin: EdgeInsets.all(64),
        child: getContentWidgets(),
      ),
    );
  }
}