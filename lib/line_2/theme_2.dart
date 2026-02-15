import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Theme2Demo extends StatefulWidget {
  const Theme2Demo({super.key});

  @override
  State<Theme2Demo> createState() => _Theme2DemoState();
}

class _Theme2DemoState extends State<Theme2Demo> {


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
                Column(
                  children: [
                    ListTile(
                      title: Text("AUTO", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
                      trailing: _selectedIndex == 2
                          ?const Icon(Icons.check_circle_outline, color: Colors.blue)
                          : null,
                      onTap: () => setState(() => _selectedIndex = 2),

                    ),

                    if(_selectedIndex == 2)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 3,),
                          Text("your night mode time", style: GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w700)),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("07 : 00 PM", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),

                              Text("TO",style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),

                              Text("07 : 00 AM", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500)),
                            ],
                          ),

                        ],),

                    )
                  ],
                ),
                SizedBox(height: 10,),
                Divider(
                  height: 7,
                  color: Color(0xff2124491A),
                ),

              ],
            ),
          )


        ],
      ),
    );
  }
}
