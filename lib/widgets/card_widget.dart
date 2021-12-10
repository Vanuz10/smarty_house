import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SmartyCard extends StatelessWidget {
  final String? title;
  final String? svgName;
  const SmartyCard({ Key? key, this.title, this.svgName = "" }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double widthCard= (size.width<500)?size.width*0.4375:180.0;
    double heightCard= (size.width<500)?size.width*0.5590:230.0;

    return RawMaterialButton(
          elevation: 4.5,
          shape: RoundedRectangleBorder(
            side: BorderSide(color:Colors.white, width: 3),
            borderRadius: BorderRadius.circular(16)
          ),
          splashColor: Colors.white.withOpacity(0.1),
          highlightColor: Colors.white.withOpacity(0.1),
          onPressed: (){


          },
          child: Container(
            width: widthCard,
            height: heightCard,
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container()
                ),
                Flexible(
                  flex: 2,
                  child: Text(
                    title!, 
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  ),
                ),
                Flexible(
                  flex: 6,
                  child: SvgPicture.asset("assets/$svgName.svg", height: heightCard*0.45,),
                ),
                Flexible(
                  flex: 1,
                  child: Text(
                    "Valor", 
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container()
                ),
                Flexible(
                  flex: 1,
                  child: Text(
                    "Estado", 
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.greenAccent
                    ),
                  ),
                ),
              ],
            )
          ),
        );
  }
}