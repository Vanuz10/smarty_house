
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

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
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  SvgPicture.asset("assets/main_logo.svg", height: 120, width: 120,),
                  Text(
                      "Smarty Home",
                      style: TextStyle(
                        fontSize: 30, 
                        fontWeight: FontWeight.bold, 
                        color: Colors.white
                      ),
                  
                    ),
                  SizedBox(height: 30,),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      focusColor: Colors.white,
                      labelText: 'Email',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)
                      ),
                      enabledBorder: OutlineInputBorder(
                        
                        borderSide: BorderSide(color: Colors.white,),
                        borderRadius: BorderRadius.circular(16)
                      ),

                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      focusColor: Colors.white,
                      labelText: 'Contraseña',
                      // alignLabelWithHint: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)
                      ),
                      enabledBorder: OutlineInputBorder(
                        
                        borderSide: BorderSide(color: Colors.white,),
                        borderRadius: BorderRadius.circular(16)
                      ),

                    ),
                  ),
                  SizedBox(height: 30,),
                  ElevatedButton(
                    
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF67ECDF),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),),
                    onPressed: (){
                      Navigator.pushNamed(context, "menu");
                    }, 
                    child: Text("Continuar")
                  ),
                ]
              ),
            ),
          ),
        ),
      ),
    );
    
  }

}