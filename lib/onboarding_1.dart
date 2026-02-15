import 'package:flutter/material.dart';
import 'package:front_end_project/onboarding_2.dart';
import 'package:google_fonts/google_fonts.dart';
class Onboarding1Demo extends StatefulWidget {
  const Onboarding1Demo({super.key});

  @override
  State<Onboarding1Demo> createState() => _Onboarding1DemoState();
}

class _Onboarding1DemoState extends State<Onboarding1Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/images/Work scene illustration Pack-01 1.png"),

          SizedBox(height: 100,),

          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Discover Daily News",style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color(0xff209CEE),

                  ),),
                  Text("We bring you\ncloser to the\nnews.",style: GoogleFonts.poppins(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff1E1A15),
                  )),
                  SizedBox(height: 10,),
                  Container(

                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.4), // shadow color
                          blurRadius: 12, // softness of shadow
                          offset: const Offset(0, 7), // X, Y position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12), // match button radius
                    ),

                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Onboarding2Demo()));
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff209CEE),

                        ),
                        child:
                        Text("Get Started",style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xffFFFFFF),
                        ),)),
                  ),

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
