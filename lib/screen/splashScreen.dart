import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:startupbits/model/DataModel.dart';
import 'package:startupbits/screen/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  StartupData? getData;

  Future<String> loadJson() async{
    return await rootBundle.loadString('assets/StartUpData.json');
  }

  Future readJson() async{
    String jsonString = await loadJson();
    final response = await json.decode(jsonString);
    StartupData jsonData = new StartupData.fromJson(response);
    setState(() {
      if(jsonData != null){
        getData = jsonData;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => HomeScreen(
                    data: getData!,
                  )));
    });
  }

  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffF5591F), Color(0xffF2861E)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff131313),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Container(
              //   // color: Colors.blue,
              //   // padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 50.0),
              //   child: Image.asset("assets/images/logo.png", color: Colors.white,),
              // ),
              Container(
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "StartUp",
                      style: GoogleFonts.getFont('Bubblegum Sans',
                          // color: Color(0xffb575757),
                          foreground: Paint()..shader = linearGradient,
                          decoration: TextDecoration.none,
                          letterSpacing: 1.5,
                          fontSize: 50),
                    ),
                    Text(
                      "Bitz",
                      style: GoogleFonts.getFont(
                        'Bubblegum Sans',
                        foreground: Paint()..shader = linearGradient,
                        // color: Color(0xffCFF6679),
                        decoration: TextDecoration.none,
                        letterSpacing: 1.5,
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ],
        ),
      ),
    );
  }
}
