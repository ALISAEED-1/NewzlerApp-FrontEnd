import 'package:flutter/material.dart';
import 'package:front_end_project/models/onboarding_model.dart';
import 'package:front_end_project/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding2Demo extends StatefulWidget {
  const Onboarding2Demo({super.key});

  @override
  State<Onboarding2Demo> createState() => _Onboarding2DemoState();
}

class _Onboarding2DemoState extends State<Onboarding2Demo> {
  PageController controller = PageController();

List<OnboardingModel> onboardinglist = [
  OnboardingModel(image: 'assets/images/Work scene illustration Pack-07 2.png', text: 'Trending News'),
  OnboardingModel(image: 'assets/images/Work scene illustration Pack-05 1.png', text: 'React, Save & Share News'),
  OnboardingModel(image: 'assets/images/Work scene illustration Pack-06 1.png', text: 'Videos & Live News From YouTube'),
  OnboardingModel(image: 'assets/images/Work scene illustration Pack-04 1.png', text: 'Browse News From Variety Of Categories'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body:Column(
            children: [

             Container(
               height: 550,
               child: Expanded(
                 child: PageView.builder(
                          controller: controller,
                          itemCount: onboardinglist.length,
                          itemBuilder: (context, i){
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(onboardinglist[i].image.toString()),
                                Text(onboardinglist[i].text.toString(),style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,

                                ),textAlign: TextAlign.center,),
                              ],
                            );
                          }

                        ),
               ),
             ),

              Container(
                height: 10,
                child: SmoothPageIndicator(
                    controller: controller,  // PageController
                    count:  onboardinglist.length,
                    effect:  JumpingDotEffect(),  // your preferred effect
                    onDotClicked: (index){
                    }
                ),
              ),

              SizedBox(height: 90,),


              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpDemo()));
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff27272E),
                    elevation: 10,
                  ),
                  child: Container(
                    width: 300, height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/message 1.png',width: 30,height: 30,),
                        Text("    Continue with Email",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
              ),

              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  SizedBox(width: 30,),
                  Container(
                    width: 100,
                    height: 60,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        child: Image.asset('assets/images/Facebook.png',width: 40,height: 40,)),
                  ),

                  SizedBox(width: 10,),
                  Container(
                    width: 100,
                  height: 60,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                            child: Image.asset('assets/images/google.png',width: 30,height: 30,)
                    ),
                  ),

                  SizedBox(width: 10,),
                 Container(
                    width: 100,
                    height: 60,
                    child: ElevatedButton(onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        child: Image.asset('assets/images/Twitter.png',width: 33,height: 33,)),
                  ),

                  SizedBox(width: 30,),

                ],
              )
              

              
            ],
          )
    );
  }
}
