import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile5Demo extends StatefulWidget {
  const Profile5Demo({super.key});

  @override
  State<Profile5Demo> createState() => _Profile5DemoState();
}

class _Profile5DemoState extends State<Profile5Demo> {
  TextEditingController Cpassword = TextEditingController();
  TextEditingController Epassword = TextEditingController();
  TextEditingController CEpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30,top: 50),
        child: Column(
          children: [

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
                      CEpassword.clear();
                      Epassword.clear();
                      CEpassword.clear();
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

            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your email address",
                      style: GoogleFonts.poppins(
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    SizedBox(height: 10,),
                    Container(
                      width: 350,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Color(0xffF8D7DA),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text("Create password ",style: GoogleFonts.poppins(
                                color: Color(0xff721C24),
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                              ),),
                              Text("to update your email address.",style: GoogleFonts.poppins(
                                color: Color(0xff721C24),
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),),
                            ],
                          ),
                        ))

                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),

            // ✅ Removed that wrong Row, now just use Column elements
            TextField(
              controller: Cpassword,
              decoration: InputDecoration(
                label: Text(
                  "your CURRENT password",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                    color: const Color(0xff3A3D46),
                  ),
                ),
                hintText: 'HD#729hmGkJ~!',
                suffixIcon: const Icon(Icons.visibility_off_outlined),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: Epassword,
              decoration: InputDecoration(
                label: Text(
                  "your new email address",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                    color: const Color(0xff3A3D46),
                  ),
                ),
                hintText: 'abc456@example.com',
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: CEpassword,
              decoration: InputDecoration(
                label: Text(
                  "CONFIRM YOUR NEW email address",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                    color: const Color(0xff3A3D46),
                  ),
                ),
                hintText: 'abc456@example.com',

                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
              ),
            ),

            const SizedBox(height: 40),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.4),
                    blurRadius: 12,
                    offset: const Offset(0, 7),
                  ),
                ],
                borderRadius: BorderRadius.circular(12),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff209CEE),
                ),
                child: Text(
                  "Update",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
