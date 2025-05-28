import 'package:container/Widgets/alert.dart';
import 'package:container/Widgets/animatedText.dart';
import 'package:container/Widgets/bottomSheetWidget.dart';
import 'package:container/Widgets/button.dart';
import 'package:container/Widgets/colsrows.dart';
import 'package:container/Widgets/decoration.dart';
import 'package:container/Widgets/dismissible.dart';
import 'package:container/Widgets/drawerwidget.dart';
import 'package:container/Widgets/dropdownlist.dart';
import 'package:container/Widgets/expandedwidget.dart';
import 'package:container/Widgets/forms.dart';
import 'package:container/Widgets/iimages.dart';
import 'package:container/Widgets/img.dart';
import 'package:container/Widgets/imgpicker.dart';
import 'package:container/Widgets/infosys.dart';
import 'package:container/Widgets/learngridview.dart';
import 'package:container/Widgets/learninginkwell.dart';
import 'package:container/Widgets/learnlistview.dart';
import 'package:container/Widgets/listtile.dart';
import 'package:container/Widgets/location.dart';
import 'package:container/Widgets/marginpadding.dart';
import 'package:container/Widgets/navigationBottom.dart';
import 'package:container/Widgets/prac.dart';
import 'package:container/Widgets/scrollview.dart';
import 'package:container/Widgets/shimmarEffect.dart';
import 'package:container/Widgets/snackbar.dart';
import 'package:container/Widgets/stack.dart';
import 'package:container/Widgets/tabbar.dart';
import 'package:flutter/material.dart';

import 'Widgets/container_SIzed.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        brightness: Brightness.light, primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,//ThemeData
        home: Shimmareffect()
    );//MaterialApp
  }
}



