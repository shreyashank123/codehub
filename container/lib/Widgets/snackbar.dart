import'package:flutter/material.dart';
class snack extends StatelessWidget{
  const snack({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Center(child: Text("Snack Bar", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),)),
      ),
      body: Container(
        color: Colors.blueGrey,
        child: Center(
          child: ElevatedButton(
            child: Text("Show Snackbar", style: (TextStyle(color: Colors.white)),),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.zero
              ),
              backgroundColor: Colors.black54
            ),
            onPressed: (){
                final snackbar = SnackBar(
                  action: SnackBarAction(
                    label: 'Undo',
                    textColor: Colors.pinkAccent,
                    onPressed: (){
                    },
                  ),
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  // padding: EdgeInsets.all(20),
                  duration: const Duration(milliseconds: 3000), //3seconds
                  backgroundColor: Colors.black54,
                    content: Text("This is an error"));
                ScaffoldMessenger.of(context).showSnackBar(snackbar);
            },
          ),
        ),
      )
    );
  }
}