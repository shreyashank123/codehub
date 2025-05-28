import 'package:container/Widgets/alert.dart';
import 'package:container/Widgets/dismissible.dart';
import 'package:container/Widgets/img.dart';
import 'package:container/Widgets/snackbar.dart';
import'package:flutter/material.dart';




class bottomnavi extends StatefulWidget{
  const bottomnavi ({super.key});

  @override
  State<bottomnavi> createState() => _bottomnaviState();
}

class _bottomnaviState extends State<bottomnavi> {

  int selectedindex = 0;
  PageController pageController = PageController();

  // List <Widget>widgets = [
  //   Text("Home"),
  //   Text("Search"),
  //   Text("Add"),
  //   Text("Profile"),
  // ];

  void onItemTapped(int index){
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Bottom Navigation",
      //     style: TextStyle(
      //         fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
      //   ),
      //   backgroundColor: Colors.deepPurple,
      // ),
      // body: Center(child: widgets.elementAt(selectedindex)),
      body: PageView(
        controller: pageController,
        children: [
          alert(),
          dismis(),
          img(),
          snack(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home,),label: "Home",),
        BottomNavigationBarItem(
          icon: Icon(Icons.search,),label: "Search",),
        BottomNavigationBarItem(
          icon: Icon(Icons.add,),label: "Add",),
        BottomNavigationBarItem(
          icon: Icon(Icons.person,),label: "Profile",)
      ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onItemTapped,
      ),

    );
  }
}