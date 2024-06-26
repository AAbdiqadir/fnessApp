import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfitnessapp/screens/caloriespage/caloriespage.dart';
import 'package:myfitnessapp/screens/caloriespage/ttcal.dart';
import '../../constants.dart';
import '../dashboard/chart.dart';
import 'chartcard.dart';

class caltodqqq extends StatefulWidget {
   caltodqqq({Key? key,
  required this.carbcont,
    required this.proteincont,
    required this.fatcont
  }) : super(key: key);
  double carbcont;
  double proteincont;
  double fatcont;
  @override
  State<caltodqqq> createState() => _caltodqqqState();
}

class _caltodqqqState extends State<caltodqqq> {
  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return  Container(

          margin : EdgeInsets.all(14.0),

          height: 220,
          width: double.infinity,


          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: const BorderRadius.all(Radius.circular(0)),
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


                 // Chart(),

              SizedBox(
                height: 20,
              ),


              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text("Overview analytics for today",
                  style:GoogleFonts.openSans(
                    color: Colors.black,

                  ),
                ),
              ),




              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Expanded(
                  flex: 1,
                  child: Column(

                      children: [

                        InfoCard(
                          image: "images/avocado.png",
                          title: "Protein",
                          total: "${double.parse((widget.proteincont).toStringAsFixed(2))}%",

                        ),
                        InfoCard(
                          image: "images/avocado.png",
                          title: "Fat",
                          total: "${double.parse((widget.carbcont).toStringAsFixed(2))}%",


                        ),
                        InfoCard(
                          image: "images/avocado.png",
                          title: "Carbs",
                          total: "${double.parse((widget.fatcont).toStringAsFixed(2))}%" ,

                        ),


                      ]
                  ),
                ),
              )

            ],


          )
      );
  }
}
