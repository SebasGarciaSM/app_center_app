import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appcenter_bundle/flutter_appcenter_bundle.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await AppCenter.startAsync(
    appSecretAndroid: '311f3b25-c5f2-41da-b17e-7ab4a294dea7',
    appSecretIOS: 'a89e4afe-ce20-4a8f-a50a-6b33da48f7af',
    enableDistribute: false,
  );

  runApp(MyApp());
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