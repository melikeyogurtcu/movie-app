import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_app/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    navigateGoHome();
  }
  navigateGoHome() async {
    await Future.delayed(const Duration(seconds: 6), (){});
    // ignore: use_build_context_synchronously
   //Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  const home_page()));
    // ignore: use_build_context_synchronously
    
    Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const home_page())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
//Lottie animation is added a child widget
              child: Lottie.asset("images/animation_lldtbs8j.json"),
            ),
        ),
      ),
    );
  }
}