import 'package:flutter/material.dart';
import 'package:flutter_components/pages/lists/grid_list_page.dart';
import 'package:flutter_components/pages/lists/list_tile_page.dart';
import 'package:flutter_components/pages/lists/list_view_builder_two_page.dart';
import 'package:flutter_components/pages/widgets/button_page.dart';
import 'package:flutter_components/pages/widgets/card_page.dart';
import 'package:flutter_components/pages/widgets/clip_page.dart';
import 'package:flutter_components/pages/widgets/dropdown_button_page.dart';
import 'package:flutter_components/pages/widgets/flexible_page.dart';
import 'package:flutter_components/pages/layouts/floating_action_button.dart';
import 'package:flutter_components/pages/widgets/form_page.dart';
import 'package:flutter_components/pages/widgets/hello_world_page.dart';
import 'package:flutter_components/pages/widgets/home_page.dart';
import 'package:flutter_components/pages/widgets/icon_button_page.dart';
import 'package:flutter_components/pages/widgets/icon_page.dart';
import 'package:flutter_components/pages/lists/list_view_builder_page.dart';
import 'package:flutter_components/pages/layouts/safe_area_page.dart';
import 'package:flutter_components/pages/widgets/sizedbox_page.dart';
import 'package:flutter_components/pages/widgets/stack_page.dart';
import 'package:flutter_components/pages/widgets/stateful_widgets_page.dart';
import 'package:flutter_components/pages/widgets/text_field_page.dart';
import 'package:flutter_components/pages/widgets/text_page.dart';
import 'package:flutter_components/pages/widgets/align_page.dart';
import 'package:flutter_components/pages/widgets/chip_page.dart';
import 'package:flutter_components/pages/widgets/container_page.dart';
import 'package:flutter_components/pages/layouts/page_view_horizontal_page.dart';
import 'package:flutter_components/pages/layouts/page_view_vertical_page.dart';
import 'package:flutter_components/pages/widgets/placeholder_page.dart';
import 'package:flutter_components/pages/widgets/spacer_page.dart';
import 'package:flutter_components/pages/widgets/tooltip_page.dart';
import 'package:flutter_components/pages/layouts/unsafe_area_page.dart';
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
  '/floating_action_button': (context) => FloatingActionButtonPage(),
  '/tooltip': (context) => TooltipPage(),
  '/flexible': (context) => FlexiblePage(),
  '/stack': (context) => StackPage(),
  '/clip': (context) => ClipPage(),
  '/sizedbox': (context) => SizedboxPage(),

  // * Layouts
  '/page_view_horizontal': (context) => PageViewHorizontalPage(),
  '/page_view_vertical': (context) => PageViewVerticalPage(),
  '/unsafe_area': (context) => UnsafeAreaPage(),
  '/safe_area': (context) => SafeAreaPage(),

   // * Lists
  '/list_view': (context) => ListViewBuilderPage(),
  '/list_view_two': (context) => ListViewBuilderTwoPage(),
  '/list_tile': (context) => ListTilePage(),
  '/grid_list': (context) => GridListPage(),
};
