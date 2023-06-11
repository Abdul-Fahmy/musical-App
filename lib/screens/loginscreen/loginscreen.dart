import 'package:flutter/material.dart';
import 'package:music_app/gen/assets.gen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
             colors: [Color(0xffCA42F2),Color(0xff6A42F2),Color(0xff4294F2),Color(0xff42B5F2)],
             ),
        ),
        child:  Padding(
          padding: const EdgeInsetsDirectional.only(top: 40, start: 34, end: 34, bottom: 25),
          child: Column(
            children: [
              const SizedBox(height: 15,),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      
                    },
                    
                  child: Image.asset(Assets.images.backArrowIcon.path,width: 18,height: 18,),
                  ),
                ],
              ),
              const SizedBox(height: 80,),
        
              const Text('Log In',
              textAlign: TextAlign.center,
              style:TextStyle(fontSize:26,fontWeight: FontWeight.bold,color: Colors.white ),),
              const SizedBox(height: 65,),

              const Align(
                alignment: Alignment.topLeft,
                child:  Text('Email',style: TextStyle(fontSize:16,color: Colors.white))),
                const SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                    
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.6),
                  labelStyle: const TextStyle(fontSize: 14,color: Colors.black),
                ),
              ),
              const SizedBox(height: 19,),

              const Align(
                alignment: Alignment.topLeft,
                child:  Text('Password',style: TextStyle(fontSize:16,color: Colors.white))),

                const SizedBox(height: 10,),

                TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                    
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.6),
                  labelStyle: const TextStyle(fontSize: 14,color: Colors.black),
                ),
              ),
              const SizedBox(height: 60,),

               SizedBox(
                width: 170,
                height: 50,
                 child: ElevatedButton(
                  style:  ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff4294F2).withOpacity(0.4),
                    foregroundColor: Colors.white,
                    side: const BorderSide(
                      width: 1.0,
                      color: Colors.white,
                    )
                    
                    
                    ),
                  onPressed: (){
                 
                 },
                  child: const Text('LOG IN',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, ),)),
               ),

               const SizedBox(height: 180,),

               SizedBox(
                height: 55,
                width: 322,
                 child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff4267B2)),
                  onPressed: (){},
                 icon: Padding(
                  padding:const EdgeInsetsDirectional.only(end: 23),
                  child: Image.asset(Assets.images.facebookLogo.path,width: 11 ,height: 24,),
                             
                 ), label: const Text('Sign up with Facebook',style: TextStyle(fontSize: 16,color: Colors.white),),
                 ),
               ),
               const SizedBox(height:20 ,),
SizedBox(
  height: 55,
  width: 322,
  child:   ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffFFFFFF)),
                  onPressed: (){},
                 icon: Padding(
                  padding:const EdgeInsetsDirectional.only(end: 23),
                  child: Image.asset(Assets.images.googleIcon.path,width: 24 ,height: 24,),
                
                 ), label: const Text('Sign up with Google',style: TextStyle(fontSize: 16,color: Colors.black),),
                 ),
),




        
        
            ],
          ),
        ),
        ),
      
    );
  }

}