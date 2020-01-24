import 'package:flutter/material.dart';
import 'package:flutter_components/pages/button_page.dart';
import 'package:flutter_components/pages/card_page.dart';
import 'package:flutter_components/pages/dropdown_button_page.dart';
import 'package:flutter_components/pages/hello_world_page.dart';
import 'package:flutter_components/pages/home_page.dart';
import 'package:flutter_components/pages/icon_button_page.dart';
import 'package:flutter_components/pages/icon_page.dart';
import 'package:flutter_components/pages/text_field_page.dart';
import 'package:flutter_components/pages/text_page.dart';

final routes = <String, WidgetBuilder>{
  '/': (context) => HomePage(),
  '/hello_world': (context) => HelloWorldPage(),
  '/button': (context) => ButtonPage(),
  '/icon': (context) => IconPage(),
  '/icon_button': (context) => IconButtonPage(),
  '/text': (context) => TextPage(),
  '/card': (context) => CardPage(),
  '/dropdown_button': (context) => DropdownButtonPage(),
  '/text_field': (context) => TextFieldPage(),
};
