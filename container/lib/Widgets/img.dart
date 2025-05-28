import 'package:flutter/material.dart';

class img extends StatelessWidget {
  const img({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          "MoonLovers",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: Container(
          height: 450,
          width: 250,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 10,color: Colors.grey.shade900,spreadRadius: 5.0)],
            image: DecorationImage(
              image: NetworkImage(
                'https://i.pinimg.com/474x/4a/92/1d/4a921d7953863a939a8f772c9543bee3.jpg',
              ),
              fit: BoxFit.cover,
            ),
            color: Colors.red,
            borderRadius: BorderRadius.circular(200)
          ),
        ),
      ),
    );
  }
}
