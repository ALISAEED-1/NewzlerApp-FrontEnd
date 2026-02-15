import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Theme1Demo extends StatefulWidget {
  const Theme1Demo({super.key});

  @override
  State<Theme1Demo> createState() => _Theme1DemoState();
}

class _Theme1DemoState extends State<Theme1Demo> {


  int _selectedIndex = -1;

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
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    children: [
      ListTile(
        title: Text("DAY", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
        trailing: _selectedIndex == 0
            ? const Icon(Icons.check_circle_outline, color: Colors.blue)
            : null,
        onTap: () => setState(() => _selectedIndex = 0),
      ),
      Divider(
        height: 7,
        color: Color(0xff2124491A),
      ),
      ListTile(
        title: Text("NIGHT", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
        trailing: _selectedIndex == 1
            ? const Icon(Icons.check_circle_outline, color: Colors.blue)
            : null,
        onTap: () => setState(() => _selectedIndex = 1),
      ),

      Divider(
        height: 7,
        color: Color(0xff2124491A),
      ),
      ListTile(
        title: Text("AUTO", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
        trailing: _selectedIndex == 2
            ? const Icon(Icons.check_circle_outline, color: Colors.blue)
            : null,
        onTap: () => setState(() => _selectedIndex = 2),
      ),
    ],
  ),
)


        ],
      ),
    );
  }
}
