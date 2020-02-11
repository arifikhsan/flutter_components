import 'package:flutter/material.dart';
import 'package:flutter_components/pages/animations/animated_builder_page.dart';
import 'package:flutter_components/pages/animations/animated_container_page.dart';
import 'package:flutter_components/pages/animations/animated_cross_fade.dart';
import 'package:flutter_components/pages/animations/animated_widget_page.dart';
import 'package:flutter_components/pages/animations/opacity_animation_page.dart';
import 'package:flutter_components/pages/layouts/appbar_page.dart';
import 'package:flutter_components/pages/layouts/bottom_tabbar_page.dart';
import 'package:flutter_components/pages/layouts/sliver_appbar_page.dart';
import 'package:flutter_components/pages/layouts/tabbar_page.dart';
import 'package:flutter_components/pages/lists/grid_list_page.dart';
import 'package:flutter_components/pages/lists/list_tile_page.dart';
import 'package:flutter_components/pages/lists/list_view_builder_two_page.dart';
import 'package:flutter_components/pages/network/chopper_page.dart';
import 'package:flutter_components/pages/persistents/shared_preferences_page.dart';
import 'package:flutter_components/pages/state/counter_page.dart';
import 'package:flutter_components/pages/widgets/button_page.dart';
import 'package:flutter_components/pages/widgets/card_page.dart';
import 'package:flutter_components/pages/widgets/clip_page.dart';
import 'package:flutter_components/pages/widgets/dialog_page.dart';
import 'package:flutter_components/pages/widgets/dropdown_button_page.dart';
import 'package:flutter_components/pages/widgets/flexible_page.dart';
import 'package:flutter_components/pages/layouts/floating_action_button.dart';
import 'package:flutter_components/pages/widgets/flushbar_page.dart';
import 'package:flutter_components/pages/widgets/form_page.dart';
import 'package:flutter_components/pages/widgets/future_builder_page.dart';
import 'package:flutter_components/pages/widgets/hello_world_page.dart';
import 'package:flutter_components/pages/widgets/home_page.dart';
import 'package:flutter_components/pages/widgets/icon_button_page.dart';
import 'package:flutter_components/pages/widgets/icon_page.dart';
import 'package:flutter_components/pages/lists/list_view_builder_page.dart';
import 'package:flutter_components/pages/layouts/safe_area_page.dart';
import 'package:flutter_components/pages/widgets/sizedbox_page.dart';
import 'package:flutter_components/pages/widgets/snackbar_page.dart';
import 'package:flutter_components/pages/widgets/stack_page.dart';
import 'package:flutter_components/pages/widgets/stateful_widgets_page.dart';
import 'package:flutter_components/pages/widgets/stateless_widgets_page.dart';
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

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (BuildContext context) => HomePage(),
  '/hello_world': (BuildContext context) => HelloWorldPage(),
  '/button': (BuildContext context) => ButtonPage(),
  '/icon': (BuildContext context) => IconPage(),
  '/icon_button': (BuildContext context) => IconButtonPage(),
  '/text': (BuildContext context) => TextPage(),
  '/card': (BuildContext context) => CardPage(),
  '/dropdown_button': (BuildContext context) => DropdownButtonPage(),
  '/text_field': (BuildContext context) => TextFieldPage(),
  '/stateful_widgets': (BuildContext context) => StatefulWidgetsPage(),
  '/stateless_widgets': (BuildContext context) => StatelessWidgetsPage(),
  '/form': (BuildContext context) => FormPage(),
  '/placeholder': (BuildContext context) => PlaceholderPage(),
  '/align': (BuildContext context) => AlignPage(),
  '/spacer': (BuildContext context) => SpacerPage(),
  '/container': (BuildContext context) => ContainerPage(),
  '/wrap': (BuildContext context) => WrapPage(),
  '/chip': (BuildContext context) => ChipPage(),
  '/floating_action_button': (BuildContext context) =>
      FloatingActionButtonPage(),
  '/tooltip': (BuildContext context) => TooltipPage(),
  '/flexible': (BuildContext context) => FlexiblePage(),
  '/stack': (BuildContext context) => StackPage(),
  '/clip': (BuildContext context) => ClipPage(),
  '/sizedbox': (BuildContext context) => SizedboxPage(),
  '/snackbar': (BuildContext context) => SnackbarPage(),
  '/flushbar': (BuildContext context) => FlushbarPage(),
  '/dialog': (BuildContext context) => DialogPage(),
  '/future_builder': (BuildContext context) => FutureBuilderPage(),

  // * Layouts
  '/page_view_horizontal': (BuildContext context) => PageViewHorizontalPage(),
  '/page_view_vertical': (BuildContext context) => PageViewVerticalPage(),
  '/unsafe_area': (BuildContext context) => UnsafeAreaPage(),
  '/safe_area': (BuildContext context) => SafeAreaPage(),
  '/appbar': (BuildContext context) => AppbarPage(),
  '/tabbar': (BuildContext context) => TabbarPage(),
  '/bottom_tabbar': (BuildContext context) => BottomTabbarPage(),
  '/sliver_appbar': (BuildContext context) => SliverAppbarPage(),

  // * Lists
  '/list_view': (BuildContext context) => ListViewBuilderPage(),
  '/list_view_two': (BuildContext context) => ListViewBuilderTwoPage(),
  '/list_tile': (BuildContext context) => ListTilePage(),
  '/grid_list': (BuildContext context) => GridListPage(),

  // * State Management
  '/bloc': (BuildContext context) => CounterPage(),

  // * Animations
  '/opacity_animation': (BuildContext context) => OpacityAnimationPage(),
  '/animated_widget': (BuildContext context) => AnimatedWidgetPage(),
  '/animated_builder': (BuildContext context) => AnimatedBuilderPage(),
  '/animated_container': (BuildContext context) => AnimatedContainerPage(),
  '/animated_cross_fade': (BuildContext context) => AnimatedCrossFadePage(),

  // * Network
  '/chopper': (BuildContext context) => ChopperPage(),

  // * Shared Preferences
  '/shared_preferences': (BuildContext context) => SharedPreferencesPage(),
};
