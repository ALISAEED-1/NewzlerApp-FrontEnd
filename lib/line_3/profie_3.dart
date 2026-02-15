import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Profie3Demo extends StatefulWidget {
  const Profie3Demo({super.key});

  @override
  State<Profie3Demo> createState() => _Profie3DemoState();
}

class _Profie3DemoState extends State<Profie3Demo> {
  bool isChecked = false;
  TextEditingController firstname =TextEditingController();
  TextEditingController lastname =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Column(
          children: [
            SizedBox(height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,   // outline color
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:  Icon(Icons.arrow_back,size: 30,),
                  ),
                ),


                GestureDetector(
                  onTap: () {
                    setState(() {
                      firstname.clear();
                      lastname.clear();
                    });
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,   // outline color
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:  Icon(Icons.clear,size: 30,),
                  ),
                ),

              ],
            ),

            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Your name", style:GoogleFonts.poppins(

                      fontSize: 32,
                      fontWeight: FontWeight.w600,

                    ),),


                  ],
                ),
              ],
            ),




            SizedBox(height: 30,),
            Row(
              children: [

                Expanded(
                  child:

                  TextField(
                    controller: firstname,
                    decoration: InputDecoration(
                        label: Text("YOUR FIRST NAME",style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: Color(0xff3A3D46),
                        ),),
                        hintText: 'ALI',

                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,width: 2),
                        )

                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: TextField(
                    controller: lastname,
                    decoration: InputDecoration(
                        label: Text("YOUR LAST NAME",style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: Color(0xff3A3D46),
                        ),),
                        hintText: 'SAEED',

                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,width: 2),
                        )

                    ),
                  ),
                )
              ],
            ),


            SizedBox(height: 30,),


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
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff209CEE),

                  ),
                  child:
                  Text("Update",style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: Color(0xffFFFFFF),
                  ),)),
            ),


          ],
        ),
      ),
    );
  }
}
