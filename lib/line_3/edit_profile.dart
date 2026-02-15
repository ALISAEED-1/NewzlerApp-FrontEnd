import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfileDemo extends StatefulWidget {
  const EditProfileDemo({super.key});

  @override
  State<EditProfileDemo> createState() => _EditProfileDemoState();
}

class _EditProfileDemoState extends State<EditProfileDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back_ios)
        ),
        title: Text(
          "Account Settings",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          // Divider right after AppBar
          const Divider(
            height: 5,
            thickness: 1,
            color: Color(0xffE0E0E0), // light grey (you can change)
          ),

          // Now your padded content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  Text(
                    "How you will appear??",
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 70),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/Group 328.png',
                            width: 150,
                            height: 150,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 60, left: 60),
                            child: Image.asset(
                              'assets/images/camera 1.png',
                              width: 30,
                              height: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
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
                        "UPDATE",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: const Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffFFFFFF),
                      ),
                      child: Text(
                        "REMOVE",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),
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
