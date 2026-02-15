import 'package:flutter/material.dart';
import 'package:front_end_project/onboarding_1.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashscreenDemo extends StatefulWidget {
  const SplashscreenDemo({super.key});

  @override
  State<SplashscreenDemo> createState() => _SplashscreenDemoState();
}

class _SplashscreenDemoState extends State<SplashscreenDemo> {
  @override
  void initState() {
    super.initState();

    // ⏳ Delay for 5 seconds, then navigate
    Future.delayed(const Duration(seconds: 15), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Onboarding1Demo()), // 👈 replace with your page
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 280, left: 10, bottom: 30),
            child: SizedBox(
              width: 200,
              height: 150,
              child: Image.asset("assets/images/icon-text-newzler 2.png"),
            ),
          ),
          const SizedBox(height: 70),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              "Newzler",
              style: GoogleFonts.quando(
                fontSize: 36,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 180),

          // 🔄 Spinner (Throbber)
          const Center(
            child: CircularProgressIndicator(
              color: Colors.blue, // change color if you like
              strokeWidth: 3, // thickness
            ),
          ),
        ],
      ),
    );
  }
}

// 👉 Replace this with your actual page
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("This is Home Page 🚀")),
    );
  }
}
