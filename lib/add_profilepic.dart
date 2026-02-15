import 'package:flutter/material.dart';
import 'package:front_end_project/onboarding_select.dart';
import 'package:front_end_project/welcome_screen.dart';
import 'package:google_fonts/google_fonts.dart';
class AddProfilepicDemo extends StatefulWidget {
  const AddProfilepicDemo({super.key});

  @override
  State<AddProfilepicDemo> createState() => _AddProfilepicDemoState();
}

class _AddProfilepicDemoState extends State<AddProfilepicDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Text("How you will appear?",style:GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),),


            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Container(
                width: 200,
                height: 200,
                child: Stack(
                   children: [
                    Image.asset('assets/images/profile.png',width: 150,height: 150,),
                     Padding(
                       padding: const EdgeInsets.only(top: 60,left: 60),
                       child: Image.asset('assets/images/camera 1.png',width: 30,height: 30,),
                     )
                  ],
                ),
              ),
            ),

            SizedBox(height: 30,),
            Container(
              width: 300,
              height: 50,
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingSelectDemo()));
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff209CEE),

                  ),
                  child:
                  Text("CONTINUE",style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color(0xffFFFFFF),
                  ),)),
            ),

            SizedBox(height: 20,),
            Container(
              width: 300,
              height: 50,

              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreenDemo()));
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFFFFFF),
                  ),
                  child:
                  Text("SKIP",style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Colors.black,
                  ),)),
            ),
          ],
        ),
      ),
    );
  }
}
