import 'package:flutter/material.dart';
import 'package:front_end_project/line_3/change_password.dart';
import 'package:front_end_project/line_3/create_password.dart';
import 'package:front_end_project/line_3/edit_profile.dart';
import 'package:front_end_project/line_3/my_profile.dart';
import 'package:front_end_project/onboarding_2.dart';
import 'package:front_end_project/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreenDemo extends StatefulWidget {
  const SettingScreenDemo({super.key});

  @override
  State<SettingScreenDemo> createState() => _SettingScreenDemoState();
}

class _SettingScreenDemoState extends State<SettingScreenDemo> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back_ios)
        ),
        title: Text("Account Settings",style: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Divider(
            height: 7,
            color: Color(0xff2124491A),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                ListTile(
                  title: Text("Profile", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
                  trailing:Icon(Icons.arrow_forward_ios_sharp),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyProfileDemo()),
                    );
                  },
                ),
                Divider(
                  height: 7,
                  color: Color(0xff2124491A),
                ),
                ListTile(
                  title: Text("Profile Photo", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditProfileDemo()),
                    );
                  },
                ),

                Divider(
                  height: 7,
                  color: Color(0xff2124491A),
                ),
                ListTile(
                  title: Text("Change Password", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
                  trailing:Icon(Icons.arrow_forward_ios_sharp),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChangePasswordDemo()),
                    );
                  },
                ),

                Divider(
                  height: 7,
                  color: Color(0xff2124491A),
                ),
                ListTile(
                  title: Text("Create Password", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
                  trailing:Icon(Icons.arrow_forward_ios_sharp),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreatePasswordDemo()),
                    );
                  },
                ),
                Divider(
                  height: 7,
                  color: Color(0xff2124491A),
                ),
                ListTile(
                  title: Text("Logout", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpDemo()),
                    );
                  },

                ),

                Divider(
                  height: 7,
                  color: Color(0xff2124491A),
                ),
                ListTile(
                  title: Text("Logout From All Devices", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),

                ),

                Divider(
                  height: 7,
                  color: Color(0xff2124491A),
                ),
                ListTile(
                  title: Text("Delete Account", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500,color: Color(0xffEA4235))),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Onboarding2Demo()),
                    );
                  },
                ),
              ],
            ),
          )


        ],
      ),
    );
  }
}
