import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:appcenter/appcenter.dart';
import 'package:appcenter_analytics/appcenter_analytics.dart';
import 'package:appcenter_crashes/appcenter_crashes.dart';

void main() async{
  final ios = defaultTargetPlatform == TargetPlatform.iOS;

  var app_secret = ios ? "a89e4afe-ce20-4a8f-a50a-6b33da48f7af" : "311f3b25-c5f2-41da-b17e-7ab4a294dea7";
  await AppCenter.start(app_secret, [AppCenterAnalytics.id, AppCenterCrashes.id]);

  MyApp();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppCenterApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('TEST'),
        ),
        body: Center(
          child: Container(
            child: Text('Flutter App to Test App Center'),
          ),
        ),
      ),
    );
  }
}