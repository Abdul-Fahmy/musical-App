import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:music_app/gen/assets.gen.dart';

class SignUpScreen extends StatefulWidget{
  const SignUpScreen({super.key});


  @override
  State<SignUpScreen> createState() => _SignUpScreen();

}
class _SignUpScreen extends State<SignUpScreen>{
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  
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
                child:  Text('Your email',style: TextStyle(fontSize:16,color: Colors.white))),
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
                child:  Text('Create a password',style: TextStyle(fontSize:16,color: Colors.white))),

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
              const Row(
                children: [
                  Text('Date of birth',style: TextStyle(fontSize: 16,color: Colors.white),),
                  SizedBox(width:107 ,),
                  Text('Gender',style: TextStyle(fontSize: 16,color: Colors.white),),
                ],
              ),
              SizedBox(height:10 ,),
              Row(
                children: [
                  SizedBox(
                    width: 165,
                    height: 50,
                    child: TextField(
                      
                      controller: dateInput,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.white),

                        enabledBorder: OutlineInputBorder(     
                    borderRadius: BorderRadius.circular(8),
                    borderSide:  const BorderSide(
                    
                      width: 1.5,
                      color: Color(0xffFFFFFF)
                    ),
                    
                    
                  ),
                        suffixIcon: const Icon(Icons.keyboard_arrow_down_sharp),
                        suffixIconColor: Colors.white
                      ),
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await  showDatePicker(context: context,
                         initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                           lastDate: DateTime(2101)
                           );
                           if(pickedDate != null ){
                      print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); 
                      print(formattedDate); //formatted date output using intl package =>  2021-03-16
                        //you can implement different kind of Date Format here according to your requirement

                      setState(() {
                         dateInput.text = formattedDate; //set output date to TextField value. 
                      });
                  }else{
                      print("Date is not selected");
                      
                  }
                      },

                    ),
                  ),
                  SizedBox(width: 35,),
                  
                ],
              ),
              const SizedBox(height: 60,),



               SizedBox(
                height:50 ,
                width: 171,
                 child: ElevatedButton(
                  style:  ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                  foregroundColor: Colors.white,
                  side: const BorderSide(
                    width: 1.0,
                    color: Colors.white,
                    )
                    
                    
                    ),
                  onPressed: (){
                 
                 },
                  child: const Text('Done',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, ),)),
               ),

               

              





        
        
            ],
          ),
        ),
        ),

    );
  }

}