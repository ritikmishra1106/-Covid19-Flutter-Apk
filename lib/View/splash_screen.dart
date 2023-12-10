import 'dart:async';

import 'package:covid19_project/View/world_states.dart';
import 'package:flutter/material.dart';
import 'dart:math'as math;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{

  late final AnimationController _controller = AnimationController(duration:Duration(seconds: 3),vsync: this)..repeat();
  @override

  void dispose(){
    super.dispose();
    _controller.dispose();
  }
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 5),
        ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>WorldStatesScreen()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            AnimatedBuilder(
                animation: _controller,
                child: Container(
                  height: 200,
                  width: 200,
                  child: Center(
                    child: Image(image: AssetImage('images/virus.png'),),
                  ),
                ),
                builder: (BuildContext context,Widget? child){
                  return Transform.rotate(
                    angle: _controller.value *2.0* math.pi,
                    child: child,
                  );
                }),
            SizedBox(height: MediaQuery.of(context).size.height *0.08,),
            const Align(
              alignment: Alignment.center,
                child: Column(
                  children: [
                    Text('Covid-19\nTracker App',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text('Designed by: ',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                        SizedBox(width: 2,),
                        Text('Ritik Mishra(Frontend Developer)',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.red),),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
