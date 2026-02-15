import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreatePasswordDemo extends StatefulWidget {
  const CreatePasswordDemo({super.key});

  @override
  State<CreatePasswordDemo> createState() => _CreatePasswordDemoState();
}

class _CreatePasswordDemoState extends State<CreatePasswordDemo> {
  TextEditingController Npassword = TextEditingController();
  TextEditingController CNpassword = TextEditingController();

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
          const Divider(
            height: 5,
            thickness: 1,
            color: Color(0xffE0E0E0), // light grey (you can change)
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [

                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Change password",
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                // ✅ Removed that wrong Row, now just use Column elements
                TextField(
                  controller: Npassword,
                  decoration: InputDecoration(
                    label: Text(
                      "your NEW password",
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
                  controller: CNpassword,
                  decoration: InputDecoration(
                    label: Text(
                      "CONFIRM YOUR NEW password",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: const Color(0xff3A3D46),
                      ),
                    ),
                    hintText: '*****************',
                    suffixIcon: const Icon(Icons.visibility_outlined),
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
                      "Create",
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
        ],
      ),
    );
  }
}
