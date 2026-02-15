import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile7Demo extends StatefulWidget {
  const Profile7Demo({super.key});

  @override
  State<Profile7Demo> createState() => _Profie7DemoState();
}

class _Profie7DemoState extends State<Profile7Demo> {
  String selectedDay = "01";
  String selectedMonth = "January";
  String selectedYear = "2021";

  final List<String> days =
  List.generate(31, (index) => (index + 1).toString().padLeft(2, '0'));
  final List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  final List<String> years =
  List.generate(100, (index) => (2025 - index).toString());

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
                      selectedDay = "01";
                      selectedMonth = "January";
                      selectedYear = "2021";
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
              "Your birthday",
              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 30),

            // Label
            Text(
              "YOUR BIRTHDAY",
              style: GoogleFonts.inter(
                fontSize: 10,
                fontWeight: FontWeight.w700,
                color: const Color(0xff3A3D46),
              ),
            ),

            const SizedBox(height: 8),

            // Dropdown row
            Row(
              children: [
                // Day
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedDay,
                    items: days
                        .map((day) =>
                        DropdownMenuItem(value: day, child: Text(day)))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        selectedDay = val!;
                      });
                    },
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      isDense: true,
                    ),
                  ),
                ),
                const SizedBox(width: 12),

                // Month
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedMonth,
                    items: months
                        .map((month) => DropdownMenuItem(
                      value: month,
                      child: Text(month),
                    ))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        selectedMonth = val!;
                      });
                    },
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      isDense: true,
                    ),
                  ),
                ),
                const SizedBox(width: 12),

                // Year
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedYear,
                    items: years
                        .map((year) =>
                        DropdownMenuItem(value: year, child: Text(year)))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        selectedYear = val!;
                      });
                    },
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      isDense: true,
                    ),
                  ),
                ),
              ],
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
                  onPressed: () {
                    debugPrint(
                        "Birthday: $selectedDay $selectedMonth $selectedYear");
                  },
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
