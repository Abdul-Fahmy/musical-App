
import 'package:flutter/material.dart';
import 'package:music_app/gen/assets.gen.dart';
import 'package:music_app/screens/loginscreen/loginscreen.dart';
import 'package:music_app/screens/signup/signupscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  @override
  State<SplashScreen> createState() => _SplashScreen();
}
class _SplashScreen extends State<SplashScreen>{




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Assets.images.bgImg.path)
          ),
          
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(top: 40, start: 34, end: 34, bottom: 25),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 200,),
              Image.asset(Assets.images.logoBg.path,width: 160,height:80 ,),
              const SizedBox(height: 52,),
              const Text("Play your favorite songs and artists.",style: TextStyle(fontSize: 18,color: Colors.white ),textAlign: TextAlign.center,),
        
              const SizedBox(height: 140,),
        
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff4267B2)),
                onPressed: (){},
               icon: Padding(
                padding:const EdgeInsetsDirectional.only(end: 23),
                child: Image.asset(Assets.images.facebookLogo.path,width: 11 ,height: 24,),
              
               ), label: const Text('Sign up with Facebook',style: TextStyle(fontSize: 18,color: Colors.white),),
               ),
               const SizedBox(height:20 ,),
        
               ElevatedButton.icon(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffFFFFFF)),
                onPressed: (){},
               icon: Padding(
                padding:const EdgeInsetsDirectional.only(end: 23),
                child: Image.asset(Assets.images.googleIcon.path,width: 24 ,height: 24,),
              
               ), label: const Text('Sign up with Google',style: TextStyle(fontSize: 18,color: Colors.black),),
               ),
               const SizedBox(height: 60,),

               ElevatedButton(
                style:  ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  foregroundColor: Colors.white,
                  side: const BorderSide(
                    width: 1.0,
                    color: Colors.white,
                  )
                  
                  
                  ),
                onPressed: (){
                  Navigator.push(context,
                   MaterialPageRoute(builder: (context) => const SignUpScreen()));

               },
                child: const Text('Sign up with Email',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, ),)),

                const SizedBox(height: 40,),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?',style: TextStyle(color: Color(0xffD5D5D5),fontSize: 16),),

                    const SizedBox(width: 30,),

                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                         MaterialPageRoute(builder: (context) => const LoginScreen(),)
                         );
                      },
                      child: const Text('Log In',style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),),

                    )
                  ],
                ),

              //   Center(
              //   child: Text.rich(TextSpan(children: [
              //      const TextSpan(
              //         text: 'Already have an account?',
              //         style:
              //            TextStyle( color: Color(0xffD5D5D5))),




              //     WidgetSpan(
              //         child: GestureDetector(
              //       onTap: () {
              //         Navigator.push(
              //           context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
              //       },
              //       child:  Text(
              //        'Log In',
              //         style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
              //       ),
              //     ),
      
              //   ]),
              //   style: const TextStyle(fontSize: 12),
              //   ),
              // ),


        
            ]),
        ),
      ),

    );
  }

}