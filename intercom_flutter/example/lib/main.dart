import 'package:flutter/material.dart';
import 'package:intercom_flutter/intercom_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Intercom.initialize(
    'appId',
    androidApiKey: 'androidApiKey',
    iosApiKey: 'iosApiKey',
  );
  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Intercom.registerIdentifiedUser(email: 'test@getnada.com');

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Intercom example app'), 
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              Intercom.displayCarousel('19831000');
            },
            child: Text('Show messenger'),
          ),
        ),
      ),
    );
  }
}
