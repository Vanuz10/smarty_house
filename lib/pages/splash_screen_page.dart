import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreenPage extends StatefulWidget {
  const 
SplashScreenPage({ Key? key }) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  Timer? _delaySplash;

  @override
  void initState() {
  super.initState();
    _delaySplash = Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('login');
    });
  }

  @override
  void dispose() {
    super.dispose();
    _delaySplash!.cancel();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(begin: FractionalOffset.topLeft, end: FractionalOffset.bottomRight, colors: [
            Color(0xFF67ECDF),
            Color(0xFF7386DD),
            Color(0xFFD977E4),
          ], stops: [
            0.0,
            0.5,
            1.0,
          ])
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/main_logo.svg", height: 140, width: 140,),
              SizedBox(height: 20,),
              Text("Smarty Home", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
              
            ],
          ),
          
        ),
      ),
    );

    
  }
}


