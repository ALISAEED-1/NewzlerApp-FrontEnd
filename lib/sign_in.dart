import 'package:flutter/material.dart';
import 'package:front_end_project/forget_password.dart';
import 'package:front_end_project/forget_username.dart';
import 'package:front_end_project/sign_up.dart';
import 'package:front_end_project/welcome_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInDemo extends StatefulWidget {
  const SignInDemo({super.key});

  @override
  State<SignInDemo> createState() => _SignInDemoState();
}

class _SignInDemoState extends State<SignInDemo> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: [
              const SizedBox(height: 100),
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
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.arrow_back, size: 30),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        email.clear();
                        password.clear();
                      });
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(Icons.clear, size: 30),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "LOGIN",
                        style: GoogleFonts.poppins(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Using your email or username and password",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
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
                controller: email,
                decoration: InputDecoration(
                  label: Text(
                    "YOUR EMAIL/USERNAME",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                      color: const Color(0xff3A3D46),
                    ),
                  ),
                  hintText: 'CRAZYGOKU@GMAIL.COM',
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: password,
                decoration: InputDecoration(
                  label: Text(
                    "YOUR PASSWORD",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 10,
                      color: const Color(0xff3A3D46),
                    ),
                  ),
                  hintText: 'GLAOEBQ122',
                  suffixIcon: const Icon(Icons.visibility_off_outlined),
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
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomeScreenDemo()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff209CEE),
                  ),
                  child: Text(
                    "LOGIN",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: const Color(0xffFFFFFF),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 180),
        
        
              Column(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordDemo()));
                    },
                    child: Text(
                      " Forgot your password?",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ),
        
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetUsernameDemo()));
                    },
                    child: Text(
                      "Forgot your username?",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account",
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpDemo()));
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: const Color(0xff209CEE),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xff209CEE),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
