import 'package:flutter/material.dart';
import 'package:flutter_components/pages/button_page.dart';
import 'package:flutter_components/pages/card_page.dart';
import 'package:flutter_components/pages/dropdown_button_page.dart';
import 'package:flutter_components/pages/form_page.dart';
import 'package:flutter_components/pages/hello_world_page.dart';
import 'package:flutter_components/pages/home_page.dart';
import 'package:flutter_components/pages/icon_button_page.dart';
import 'package:flutter_components/pages/icon_page.dart';
import 'package:flutter_components/pages/list_view_builder_page.dart';
import 'package:flutter_components/pages/stateful_widgets_page.dart';
import 'package:flutter_components/pages/text_field_page.dart';
import 'package:flutter_components/pages/text_page.dart';
import 'package:flutter_components/pages/widgets/align_page.dart';
import 'package:flutter_components/pages/widgets/chip_page.dart';
import 'package:flutter_components/pages/widgets/container_page.dart';
import 'package:flutter_components/pages/widgets/placeholder_page.dart';
import 'package:flutter_components/pages/widgets/spacer_page.dart';
import 'package:flutter_components/pages/widgets/wrap_page.dart';

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
  '/stateful_widgets': (context) => StatefulWidgetsPage(),
  '/form': (context) => FormPage(),
  '/placeholder': (context) => PlaceholderPage(),
  '/align': (context) => AlignPage(),
  '/spacer': (context) => SpacerPage(),
  '/container': (context) => ContainerPage(),
  '/wrap': (context) => WrapPage(),
  '/chip': (context) => ChipPage(),
  '/listview': (context) => ListViewBuilderPage(),
};
