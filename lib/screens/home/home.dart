import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  
  @override
  State<HomeScreen> createState() => _HomeScreen();
  
  
}
class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: IconButton(icon: const Icon(Icons.menu) ,onPressed: () {
          print("menuButtonClicked");

        },),

        title: const Text('Musical App'),

       ),

    );
  }

}