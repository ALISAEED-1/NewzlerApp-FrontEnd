import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notification2Demo extends StatefulWidget {
  const Notification2Demo({super.key});

  @override
  State<Notification2Demo> createState() => _Notification2DemoState();
}

class _Notification2DemoState extends State<Notification2Demo> {

  bool _notificationsEnabled = false;
  bool _soundEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:Icon(Icons.arrow_back_ios)
        ),
        title: Text("Notifications",style: GoogleFonts.poppins(
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
          SwitchListTile(

            activeColor: Colors.blue, // color when switch is ON// leading icon
            title: Text(
              "Enable Notifications",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            value: _notificationsEnabled,
            onChanged: (bool newValue) {
              setState(() {
                _notificationsEnabled = newValue;
              });
            },
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Divider(
              height: 7,
              color: Color(0xff2124491A),
            ),
          ),

          SwitchListTile(

            activeColor: Colors.blue, // color when switch is ON// leading icon
            title: Text(
              "Enable Notifications",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            value: _soundEnabled,
            onChanged: (bool newValue) {
              setState(() {
                _soundEnabled = newValue;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Divider(
              height: 7,
              color: Color(0xff2124491A),
            ),
          ),
        ],
      ),
    );
  }
}
