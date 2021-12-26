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
		  primaryColor: Color.fromRGBO(18, 26, 32, 1),
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: CoverSection(),
        )
    );
  }
}

class CoverSection extends StatelessWidget {

  bool isSmallDeviceFn(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }

  Widget getGreetingsWidget(bool isSmallDevice) {
    double containerBottomMargin = isSmallDevice ? 12 : 16;
    double childWidgetFontSize = isSmallDevice ? 24 : 36;

    return Container(
      margin: EdgeInsets.only(bottom: containerBottomMargin),
      child: Text(
        'I\'m Leo Tiofan Justicia',
        softWrap: true,
        style: TextStyle(
          fontSize: childWidgetFontSize,
          fontWeight: FontWeight.bold,
          color: Colors.white.withOpacity(0.75),
        ),
      ),
    );
  }

  Widget getDescriptionWidget(BuildContext context, bool isSmallDevice) {
    double sizedBoxWidth = isSmallDevice
      ? MediaQuery.of(context).size.width
      : (MediaQuery.of(context).size.width / 2) - 64;

    TextStyle textStyle = TextStyle(
      color: isSmallDevice
        ? Colors.white.withOpacity(1) 
        : Colors.white.withOpacity(0.75),
      fontSize: isSmallDevice ? 14 : 18,
    );

    return SizedBox(
      width: sizedBoxWidth,
      child: Text(
        'I\'m a Tech Enthusiast. Currently I\'m working as a Technical Lead in Jenius - BTPN, a bank company located on Greater Jakarta, Indonesia. I have about 4 years’ experience in using JavaScript Technologies Like React, React Native, Redux and also having fun using technologies from PHP, Dart and Go. In addition, I have 1 years on going experience in leading agile team.',
        softWrap: true,
        style: textStyle,
      ),
    );
  }

  Widget getContentWidgets(BuildContext context, bool isSmallDevice) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        getGreetingsWidget(isSmallDevice),
        getDescriptionWidget(context, isSmallDevice)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isSmallDevice = isSmallDeviceFn(context);
    String containerImageDecorator = isSmallDevice
      ? 'images/cover-mobile.jpg' 
      : 'images/cover-desktop.jpg';
    BoxFit containerImageDecoratorFit = isSmallDevice
      ? BoxFit.fitHeight
      : BoxFit.fitWidth;
    double childContainerMargin = isSmallDevice ? 16 : 64;

    return Container(
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: MediaQuery.of(context).size.height,
      ),
      decoration: new BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage(containerImageDecorator),
          fit: containerImageDecoratorFit
        )
      ),
      child: Container(
        margin: EdgeInsets.all(childContainerMargin),
        child: getContentWidgets(context, isSmallDevice),
      ),
    );
  }
}