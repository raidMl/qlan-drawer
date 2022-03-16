import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(QuizerLan());
}

class QuizerLan extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
//theme ondark ,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: const Color(0xFF3A87EE), //for appbar
        scaffoldBackgroundColor: Color(0xffE6E9EC),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Color(0xff1D1D1D),
          ),
        ),
        accentColor: Colors.purpleAccent,
      ),

      // theme: ThemeData(
      //   // primarySwatch:Color(0xFF0A0E21), //change all color
      //   primaryColor: Color(0xFF0A0E21), //for appbar
      //   scaffoldBackgroundColor: Color(0xff0a0e21),
      //   textTheme: TextTheme(
      //     bodyText2: TextStyle(color: Colors.white),
      //   ),
      //   accentColor: Colors.purpleAccent,
      // ),

      home: InputPage(),
    );
  }
}
