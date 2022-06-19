import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:xlo_mobx/screens/base/base_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  runApp(const MyApp());
}

Future<void> initializeParse() async {
  await Parse().initialize("p17sQKTpYtQTeANd6af6Az4pcMg0IcI3X8bh5a2t",
      "https://parseapi.back4app.com/",
      clientKey: "rsRylol80K64mbnMbHQ8RFlpPc71JIpQoJ6lj5pi",
      autoSendSessionId: true,
      debug: true);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XLO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BaseScreen(),
    );
  }
}
