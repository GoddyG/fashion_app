import 'package:fashion_a_pp/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());

}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    // SystemChrome.setEnabledSystemUIOverlays([
    //   SystemUiOverlay.bottom
    // ]);
    return MaterialApp(
      title: "Flutter",
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: Color(0xFFFFAFAFA),
        primaryColor: Color(0xFFFFBD00),
        accentColor: Color(0xFFFFEBC7),
      ),
      home: HomePage()
    );
  }
}
