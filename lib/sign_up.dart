import 'package:flutter/material.dart';
import 'package:front_end_project/confirm_email.dart';
import 'package:front_end_project/sign_in.dart';
import 'package:google_fonts/google_fonts.dart';
 class SignUpDemo extends StatefulWidget {
   const SignUpDemo({super.key});

   @override
   State<SignUpDemo> createState() => _SignUpDemoState();
 }

 class _SignUpDemoState extends State<SignUpDemo> {
   bool isChecked = false;
   TextEditingController firstname =TextEditingController();
   TextEditingController lastname =TextEditingController();
   TextEditingController username =TextEditingController();
   TextEditingController email =TextEditingController();
   TextEditingController password =TextEditingController();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Column(
                children: [
                 SizedBox(height: 100,),
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
                                color: Colors.black,   // outline color
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:  Icon(Icons.arrow_back,size: 30,),
                          ),
                       ),
            
            
                       GestureDetector(
                         onTap: () {
                           setState(() {
                             firstname.clear();
                             lastname.clear();
                             username.clear();
                             email.clear();
                             password.clear();
                             isChecked = false; // also reset checkbox if needed
                           });
                         },
                         child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,   // outline color
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:  Icon(Icons.clear,size: 30,),
                          ),
                       ),
            
                    ],
                  ),
            
                  SizedBox(height: 30,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("SIGN UP", style:GoogleFonts.poppins(
            
                              fontSize: 32,
                              fontWeight: FontWeight.w600,
            
                            ),),
            
                            Text("Create your Newzler account", style:GoogleFonts.poppins(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
            
                            ),),
                          ],
                        ),
                     ],
                   ),
            
            
            
            
                  SizedBox(height: 30,),
                  Row(
                    children: [
            
                      Expanded(
                        child:
            
                        TextField(
                          controller: firstname,
                          decoration: InputDecoration(
                            label: Text("YOUR FIRST NAME",style: GoogleFonts.inter(
                              fontWeight: FontWeight.w700,
                              fontSize: 10,
                              color: Color(0xff3A3D46),
                            ),),
                            hintText: 'ALI',
            
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black,width: 2),
                            )
            
                          ),
                        ),
                      ),
              SizedBox(width: 20,),
                      Expanded(
                        child: TextField(
                          controller: lastname,
                          decoration: InputDecoration(
                              label: Text("YOUR LAST NAME",style: GoogleFonts.inter(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: Color(0xff3A3D46),
                              ),),
                              hintText: 'SAEED',
            
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black,width: 2),
                              )
            
                          ),
                        ),
                      )
                    ],
                  ),
            
                  SizedBox(height: 30,),
                  TextField(
                    controller: username,
                    decoration: InputDecoration(
                        label: Text("CHOOSE YOUR USERNAME",style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: Color(0xff3A3D46),
                        ),),
                        hintText: 'CRAZY GOKU',
            
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,width: 2),
                        )
            
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                        label: Text("YOUR EMAIL",style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: Color(0xff3A3D46),
                        ),),
                        hintText: 'CRAZYGOKU@GMAIL.COM',
            
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,width: 2),
                        )
            
                    ),
                  ),
                  SizedBox(height: 30,),
                  TextField(
                    controller: password,
                    decoration: InputDecoration(
                        label: Text("YOUR PASSWORD",style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: Color(0xff3A3D46),
                        ),),
                        hintText: 'GLAOEBQ122',
                        suffixIcon: Icon(Icons.visibility_off_outlined),
            
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black,width: 2),
                        )
            
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
            
                      Container(
                        width: 20,
                        height: 20,
                        child: Checkbox(value: isChecked, onChanged: (bool?value){
                          setState(() {
                                isChecked = value ??false;
                          });
                        },
                          activeColor: Colors.blue,
                          checkColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
            
                        ),
                      ),
                      SizedBox(width: 3,),
                      Text("I agree to the Newzler Terms of Service and Privacy Policy",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                        color:Colors.black,
                      ),)
                    ],
                  ),
            
                  SizedBox(height: 40,),
                  Container(
                      width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.4), // shadow color
                          blurRadius: 12, // softness of shadow
                          offset: const Offset(0, 7), // X, Y position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(12), // match button radius
                    ),
            
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmEmailDemo()));
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff209CEE),
            
                        ),
                        child:
                        Text("SIGN UP",style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Color(0xffFFFFFF),
                        ),)),
                  ),
            
            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account",style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInDemo()));
                      }, child: Text("Login",style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: Color(0xff209CEE),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xff209CEE),
                      ),),),
                    ],
                  )
            
                ],
              ),
            ),
          ),
     );
   }
 }
