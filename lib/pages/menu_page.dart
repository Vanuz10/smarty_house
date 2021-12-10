import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smarty_house/widgets/card_widget.dart';



class MenuPage extends StatelessWidget {
  const MenuPage({ Key? key }) : super(key: key);

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
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/main_logo.svg", height: 100, width: 100,),
                  SizedBox(
                    width: 300,
                    child: Text(
                      "Bienvenido a Smarty Home",
                      style: TextStyle(
                        fontSize: 30, 
                        fontWeight: FontWeight.bold, 
                        color: Colors.white
                      ),
                  
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              generateCards()
            ]
          ),
        ),
      ),
    );
    
  }

  Wrap generateCards() {

    return Wrap(
      spacing: 16,
            runSpacing: 16,
      children: [
        SmartyCard(
          title: "Temperatura",
          svgName: "temperature",
        ),
        SmartyCard(
          title: "Humedad",
          svgName: "humidity",
        ),
        SmartyCard(
          title: "Gas",
          svgName: "gas",
        ),
        SmartyCard(
          title: "Desagüe",
          svgName: "drain",
        ),
      ]

    );
  }
}