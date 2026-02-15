import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Profie6Demo extends StatefulWidget {
  const Profie6Demo({super.key});

  @override
  State<Profie6Demo> createState() => _Profie6DemoState();
}

class _Profie6DemoState extends State<Profie6Demo> {
  TextEditingController mobilecontroller = TextEditingController();

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
                      mobilecontroller.clear();

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
                    Text("Your mobile\nnumber", style:GoogleFonts.poppins(

                      fontSize: 32,
                      fontWeight: FontWeight.w600,

                    ),),
                    SizedBox(height: 40,),
                    Text(
                      "YOUR MOBILE NUMBER",
                      style: GoogleFonts.inter(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff3A3D46),
                      ),
                    ),

                    ],
                ),
              ],
            ),




            SizedBox(height: 30,),

            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.black26, width: 1),
                ),
              ),
              child: Row(
                children: [
                  Text(
                    "+92",
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 1,
                    height: 20,
                    color: Colors.black26,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(

                      controller: mobilecontroller,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        isDense: true,
                      ),
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
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
