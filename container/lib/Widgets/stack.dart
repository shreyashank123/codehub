import 'package:flutter/material.dart';

class stackexample extends StatefulWidget {
  const stackexample({super.key});

  @override
  State<stackexample> createState() => _stackexampleState();
}

class _stackexampleState extends State<stackexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Stack",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          backgroundColor: Colors.green,
        ),
        body: Stack(
          children: [
            Positioned(
                child: Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://th.bing.com/th/id/R.931b695c0935bd88e95e9d62a3216c85?rik=c7xlxvPUq3fing&riu=http%3a%2f%2fpluspng.com%2fimg-png%2fheart-png-hd-transparent-background-heart-png-image-free-download-heart-png-3054.png&ehk=hQhEi%2fsEVcAEWKivQ0O3qlSsrzIeSd3OW6kRBdu4zwY%3d&risl=&pid=ImgRaw&r=0"),
                          fit: BoxFit.cover)),
                ),
                ),
            Positioned(
                left:20,
            top: 20,
            child: Container(
              height: 50,width: 50,color: Colors.yellow,
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,width: 50,color: Colors.yellow,
              ),
            )
          ],
        ));
  }
}
