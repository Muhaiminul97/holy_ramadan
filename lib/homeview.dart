import 'dart:ui';

import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:holy_ramadan/tazbi.dart';

class homeview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          child: Image.asset(
            "images/3-removebg-preview.png",
            height: 350,
          ),
        ),
        Expanded(
            child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2,

          children: <Widget>[
            Container(
                padding: const EdgeInsets.all(8),
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),

                    boxShadow: const [
                  BoxShadow(
                    color: Colors.greenAccent,
                    offset: Offset(6.0, 6.0),
                    blurRadius: 20.0,
                    inset:true
                  ),
                  BoxShadow(
                    color: Colors.white54,
                    offset: Offset(-6.0, -6.0),
                    blurRadius: 20.0,
                    inset: true

                  )
                ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
            child: ElevatedButton.icon(
                  style:  ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.greenAccent)),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => tazbiScreen())),
                  label: const Text('Tazbi',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  icon: const Icon(Icons.ac_unit_rounded),
                )
                ),),
            Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 10.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-10.0, -10.0),
                    blurRadius: 10.0,
                  )
                ]),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  label: Text('Prayer Time'),
                  icon: const Icon(Icons.wysiwyg_outlined),
                )),
            Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(6.0, 6.0),
                    blurRadius: 10.0,
                  ),
                  BoxShadow(
                    color: Colors.white60,
                    offset: Offset(-6.0, -6.0),
                    blurRadius: 10.0,
                  )
                ]),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  label: Text('Zakat'),
                  icon: const Icon(Icons.calculate_rounded),
                )),
            Container(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text('Ramadan Dua',softWrap: false),
                  icon: const Icon(Icons.article),
                ),
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(6.0, 6.0),
                  blurRadius: 10.0,
                ),
                BoxShadow(
                  color: Colors.white60,
                  offset: Offset(-6.0, -6.0),
                  blurRadius: 10.0,
                )
              ]),

            ),

          ],
        )),
      ]),
    );
  }
}
