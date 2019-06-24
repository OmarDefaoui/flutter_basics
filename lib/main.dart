import 'package:flutter/material.dart';
import 'package:flutter_app/ui/CenterWidget.dart';
import 'package:flutter_app/ui/ContainerWidget.dart';
import 'package:flutter_app/ui/ColumnWidget.dart';
import 'package:flutter_app/ui/RowWidget.dart';
import 'package:flutter_app/ui/ScaffoldWidget.dart';
import 'package:flutter_app/ui/ScaffoldBottomNavigationBarWidget.dart';
import 'package:flutter_app/elements/ButtonWidget.dart';
import 'package:flutter_app/elements/TextInputCheckBoxWidget.dart';
import 'package:flutter_app/choose_page/DrawerWidget.dart';
import 'package:flutter_app/dialog/AlertDialogWidget.dart';
import 'package:flutter_app/dialog/BottomSheetWidget.dart';
import 'package:flutter_app/dialog/SimpleDialogWidget.dart';
import 'package:flutter_app/dialog/SnackBarWidget.dart';
import 'package:flutter_app/container/CardWidget.dart';
import 'package:flutter_app/navigation/pages.dart';
import 'basicWidgets/ContainerWidget.dart';
import 'basicWidgets/RowWidget.dart';
import 'basicWidgets/ImageWidget.dart';
import 'basicWidgets/TextWidget.dart';
import 'basicWidgets/ButtonWidget.dart';
import 'basicWidgets/DropDownButton.dart';

void main() {
  runApp(MaterialApp(
    color: Colors.white,
    title: "Flutter app",

    //**print hello world using center widget
    home: CenterWidget(),

    //**print text using container widget
    //home: ContainerWidget(),

    //**vertical linear layout, where you can display children below each other
    //home: ColumnWidget(),

    //**horizontal linear layout
    //home: RowWidget(),

    //**where we can add drawer, appbar ,...
    //home: ScaffoldWidget(),

    //**navigation bar and floating action button
    //home: ScaffoldBottomNavigationBarWidget(),

    //**3 types of button
    //home: ButtonWidget(),

    //**Text input, checkbox, switch
    //home: TextInputCheckBoxWidget(),

    //**A simple implementation of drawer
    //home: DrawerWidget(),

    //**Alert dialog pop up
    //home: AlertDialogWidget(),

    //**widget that appear from the bottom of the screen
    //home: BottomSheetWidget(),

    //**dialog where we display choices and we wait for user choice
    //home: SimpleDialogWidget(),

    //**A message widget
    //home: SnackBarWidget(),

    //**A card where we can put widgets
    //home: CardWidget(),

    //**Navigation between pages, and pass value between first and second page
    //home: Pages(),

    //** add some basic widgets
    //home: TextWidget(),
    //home: ButtonWidget(),
    //home: ContainerWidget(),
    //home: DropDownButtonWidget(),
    //home: ImageWidget(),
    //home: RowWidget(),
  ));
}
