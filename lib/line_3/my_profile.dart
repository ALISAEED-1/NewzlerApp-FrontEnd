import 'package:flutter/material.dart';
import 'package:front_end_project/line_3/profie_3.dart';
import 'package:front_end_project/line_3/profile_4.dart';
import 'package:front_end_project/line_3/profile_6.dart';
import 'package:front_end_project/line_3/profile_7.dart';
import 'package:front_end_project/line_3/profile_8.dart';
import 'package:front_end_project/line_3/profile_9.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfileDemo extends StatefulWidget {
  const MyProfileDemo({super.key});

  @override
  State<MyProfileDemo> createState() => _MyProfileDemoState();
}

class _MyProfileDemoState extends State<MyProfileDemo> {


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
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(
              color: Colors.grey.shade400,
              thickness: 1,
              height: 5,
            ),
        
             Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
        
                    // search bar
                    const SizedBox(height: 30),
        
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Row
                                (mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Profile",
                                    style: GoogleFonts.poppins(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
        
                    const SizedBox(height: 30),
                    // full line divider
        
        
                    // language list
                    ListTile(
                      leading: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Name", // what would normally be subtitle
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: Color(0xff3A3D46),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "Darrell Chan", // your actual title
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profie3Demo()),
                        );
                      },
                    ),
        
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right:30 ),
                      child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 1,
                        height: 5,
                      ),
                    ),
                    SizedBox(height: 20,),
        
                    ListTile(
                      leading: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "username", // what would normally be subtitle
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: Color(0xff3A3D46),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "darrell", // your actual title
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),

                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 15,right:30 ),
                      child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 1,
                        height: 5,
                      ),
                    ),
                    SizedBox(height: 20,),
        
                    ListTile(
                      leading: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "email address", // what would normally be subtitle
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: Color(0xff3A3D46),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "abc123@example.com", // your actual title
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile4Demo()),
                        );
                      },
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 15,right:30 ),
                      child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 1,
                        height: 5,
                      ),
                    ),
                    SizedBox(height: 20,),
        
                    ListTile(
                      leading: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "mobile number", // what would normally be subtitle
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: Color(0xff3A3D46),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "+91-1234567890", // your actual title
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profie6Demo()),
                        );
                      },
        
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 15,right:30 ),
                      child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 1,
                        height: 5,
                      ),
                    ),
                    SizedBox(height: 20,),
        
                    ListTile(
                      leading: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "birthday", // what would normally be subtitle
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: Color(0xff3A3D46),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "December 8, 1990", // your actual title
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),

                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile7Demo()),
                        );
                      },

        
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 15,right:30 ),
                      child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 1,
                        height: 5,
                      ),
                    ),
                    SizedBox(height: 20,),
        
                    ListTile(
                      leading: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "gender", // what would normally be subtitle
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: Color(0xff3A3D46),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "Male", // your actual title
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile8Demo()),
                        );
                      },
        
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 15,right:30 ),
                      child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 1,
                        height: 5,
                      ),
                    ),
                    SizedBox(height: 20,),
        
                    ListTile(
                      leading: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "country", // what would normally be subtitle
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: Color(0xff3A3D46),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "India (भारत)", // your actual title
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profile9Demo()),
                        );
                      },
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 15,right:30 ),
                      child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 1,
                        height: 5,
                      ),
                    ),
                    SizedBox(height: 20,),
        
                    ListTile(
                      leading: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "timezone", // what would normally be subtitle
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: Color(0xff3A3D46),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "Asia/Kolkata", // your actual title
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),

                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 15,right:30 ),
                      child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 1,
                        height: 5,
                      ),
                    ),
                    SizedBox(height: 20,),
        
                    ListTile(
                      leading: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "last login", // what would normally be subtitle
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: Color(0xff3A3D46),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "January 18, 2021 02:32 PM", // your actual title
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
        
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 15,right:30 ),
                      child: Divider(
                        color: Colors.grey.shade400,
                        thickness: 1,
                        height: 5,
                      ),
                    ),
                    SizedBox(height: 20,),
        
                    ListTile(
                      leading: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "member since", // what would normally be subtitle
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: Color(0xff3A3D46),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "January 18, 2021", // your actual title
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),

        
                    ),
                  ],
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}
