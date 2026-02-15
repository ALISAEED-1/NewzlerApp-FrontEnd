import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile9Demo extends StatefulWidget {
  const Profile9Demo({super.key});

  @override
  State<Profile9Demo> createState() => _Profie7DemoState();
}

class _Profie7DemoState extends State<Profile9Demo> {
  String selectedcountry = "PAKISTAN";
  final List<String> countries = [
    "PAKISTAN",
    "INDIA",
    "USA",
    "ENGLAND",
    "SPAIN",
    "NEDERLAND",
    "AUSTRALIA",
    "NEWZELAND",
    "NEPAL",
    "SOUTH AFRICA",
    "CANADA",
    "BRAZIL",
    "PORTUGAL",
    "ARGENTINA",
    "RUSSIA",
    "CHINA",
    "SOUTH KOREA",
    "BANGLADESH",
    "NORTH KOREA",
    "IRAN",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),

            // Top row with back and close
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
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.arrow_back, size: 24),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedcountry = "PAKISTAN";
                    });
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.clear, size: 24),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Title
            Text(
              "Your country",
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 30),

            // Label
            Text(
              "YOUR COUNTRY",
              style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: const Color(0xff3A3D46),
              ),
            ),

            const SizedBox(height: 8),

            DropdownButtonFormField<String>(
              value: selectedcountry,
              items: countries
                  .map((country) => DropdownMenuItem(
                value: country,
                child: Text(country),
              ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  selectedcountry = val!;
                });
              },
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                isDense: true,
              ),
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 50),

            // Update button
            Center(
              child: Container(
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
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff209CEE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    "Update",
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
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
