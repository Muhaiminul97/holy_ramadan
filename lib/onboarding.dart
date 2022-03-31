


import 'package:flutter/material.dart';
import 'package:flutter_overboard/flutter_overboard.dart';
import 'package:holy_ramadan/homeview.dart';


class onboardingScreen extends StatelessWidget
{
  final _pages = [
    PageModel(
        color: const Color(0xffdf0450),
        imageAssetPath: 'images/2.png',
        title: 'Ahlan O Shlan',
        body: ' Ahlan Wa Sahlan Ya Ramadan',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFF536DFE),
        imageAssetPath: 'images/52eef7126386173.Y3JvcCw0NTAwLDM1MTksMCw0OTA.png',
        title: 'Ramadan Calendar',
        body: 'Ramadan calendar with Iftar & Sahri notifications',
        doAnimateImage: true),
    PageModel(
        color: const Color(0xFF9B90BC),
        imageAssetPath: 'images/3-removebg-preview.png',
        title: 'Zakat Calculation',
        body: 'Calculate your zakat',
        doAnimateImage: true),
  ];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(

       body: OverBoard(
         pages:  _pages,
         showBullets: true,
         skipCallback:() => Navigator.push(context, MaterialPageRoute(builder: (_) => homeview())),
         finishCallback: () => Navigator.push(context, MaterialPageRoute(builder: (_) => homeview())), // => Navigator.push(context, MaterialPageRoute(builder: (_) => HomeView())),
       ),

    );


  }

}
