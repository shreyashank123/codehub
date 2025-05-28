import 'package:flutter/material.dart';

class prac extends StatelessWidget {
  const prac({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Center(
            child: Text(
          'Pattern',
          style: TextStyle(color: Colors.white, fontSize: 30),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.yellow,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Education is not preparation for life; education is life itself.', style: TextStyle(color:Colors.black,fontSize: 20, fontWeight: FontWeight.w500),),
                        )),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.pink,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Education is not the filling of a pail, but rather the lighting of a fire.',style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w500)),
                        )),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.yellow,
                        margin: EdgeInsets.only(right: 10),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text('We cannot direct the wind, but we can adjust the sails.', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),)),
                        ),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.pink,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('In the end, it is not the years in your life that count. It is the life in your years.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white)),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.purple,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('The way to get started is to quit talking and begin doing.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white)),
                        )),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.grey,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Courage is being scared to death, but saddling up anyway',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black)),
                        )),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.purple,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('To succeed in life, you need three things: a wishbone, a backbone, and a funny bone.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white)),
                        )),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.grey,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('If you cannot do great things, do small things in a great way.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black)),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.green,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('You will face many defeats in life, but never let yourself be defeated.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black)),
                        )),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.blue,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Keep calm and carry on.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white)),
                        )),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.green,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Life isn’t about waiting for the storm to pass, it’s about learning to dance in the rain.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black)),
                        )),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.blue,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Do not let making a living prevent you from making a life.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white)),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.orangeAccent,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Dream as if you’ll live forever, live as if you’ll die today.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black)),
                        )),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.brown,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('The world is a stage and the play is badly cast.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white)),
                        )),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.orangeAccent,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('I find that the harder I work, the more luck I seem to have.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black)),
                        )),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.brown,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('The secret to getting ahead is getting started.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white)),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.black12,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('If you love life, don’t waste time, for time is what life is made up of.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black)),
                        )),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.grey,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Life becomes easier when you learn to accept the apology you never got.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.deepPurpleAccent)),
                        )),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.black12,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('In order to write about life first you must live it.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black)),
                        )),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.grey,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Whether you think you can or you think you can’t, you’re right.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.deepPurpleAccent)),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.lime,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Character is power.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black)),
                        )),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.cyanAccent,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Don’t cry because it’s over, smile because it happened.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.deepOrange)),
                        )),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.lime,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('We become what we think about most of the time.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.black)),
                        )),
                      ),
                      Container(
                        height: 180,
                        width: 180,
                        color: Colors.cyanAccent,
                        margin: EdgeInsets.only(right: 10),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('A problem is a chance for you to do your best.',style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.deepOrange)),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
