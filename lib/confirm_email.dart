import 'package:flutter/material.dart';
import 'package:front_end_project/add_profilepic.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmEmailDemo extends StatefulWidget {
  const ConfirmEmailDemo({super.key});

  @override
  State<ConfirmEmailDemo> createState() => _ConfirmEmailDemoState();
}

class _ConfirmEmailDemoState extends State<ConfirmEmailDemo> {
  TextEditingController emial = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text("Confirm your email address",style: GoogleFonts.poppins(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),),

            SizedBox(height: 30,),
            TextField(
              controller:   emial,
              decoration: InputDecoration(
                  label: Text("CONFIRMATION CODE",style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                    color: Color(0xff3A3D46),
                  ),),
                  hintText: '5  0   5   8   2',
                  suffixIcon: Icon(Icons.cancel_rounded),

                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black,width: 2),
                  )

              ),
            ),

            SizedBox(height: 30,),
            Text("Please check your email svarup03@gmail.com to confirm your registration",style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 11,
            ),),


            SizedBox(height: 40,),
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
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddProfilepicDemo()));
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
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffFFFFFF),
                  ),
                  child:
                  Text("RESEND",style: GoogleFonts.inter(
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
