import 'package:flutter/material.dart';
class forms extends StatefulWidget{
  const forms ({super.key});

  @override
  State<forms> createState() => _formsState();
}

class _formsState extends State<forms> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password= '';
  final _formsKey = GlobalKey<_formsState>();
  
  //------------------------FUNCTION--------------------------------------
  trysubmit(){
    final isvalid = _formsKey.currentState!.validate();
    if(isvalid){
      submitform();
    }else{
      print('Error');
    }
  }
  
  submitform(){
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Forms", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600,color: Colors.black),),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Form(
            key: _formsKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter First Name'
                  ),
                  key:  ValueKey('firstname'),
                  validator: (value){
                    if(value.toString().isEmpty){
                      return 'First Name should not be empty';
                    }
                    else{
                      return null;
                    }
                  },
                  onSaved: (value){
                    firstname = value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter Last Name'
                  ),
                  key:  ValueKey('lastname'),
                  validator: (value){
                    if(value.toString().isEmpty){
                      return 'Last Name should not be empty';
                    }
                    else{
                      return null;
                    }
                  },
                  onSaved: (value){
                    lastname = value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter Email'
                  ),
                  key:  ValueKey('email'),
                  validator: (value){
                    if(value.toString().isEmpty){
                      return 'email should not be empty';
                    }
                    else{
                      return null;
                    }
                  },
                  onSaved: (value){
                    email = value.toString();
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Enter your Password'
                  ),
                  key:  ValueKey('password'),
                  validator: (value){
                    if(value.toString().length<=5){
                      return 'Minimum length of password should be 6';
                    }
                    else{
                      return null;
                    }
                  },
                  onSaved: (value){
                    password = value.toString();
                  },
                ),
                TextButton(onPressed: (){trysubmit();}, child: Text('Submit'))
              ],
            ),
          ),
        ),
      ),
    );
  }

  validate() {}
}