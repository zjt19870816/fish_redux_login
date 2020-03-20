import 'package:fish_demo/list/page.dart';
import 'package:fish_demo/splash/page.dart';
import 'package:fish_demo/store/state.dart';
import 'package:fish_demo/store/store.dart';
import 'package:fish_demo/login/page.dart';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'entrance/page.dart';
import 'grid/page.dart';

Widget createApp() {
  final AbstractRoutes routes = PageRoutes(
    pages: <String, Page<Object, dynamic>>{
      'splash_page': SplashPage(),
      'login_page' : LoginPage(),
      'entrance_page': EntrancePage(),
      'grid_page': GridPage(),
      'list_page': ListPage(),
    },
    visitor: (String path, Page<Object, dynamic> page) {
      if (page.isTypeof<GlobalBaseState>()) {
        page.connectExtraStore<GlobalState>(GlobalStore.store,
            (Object pageState, GlobalState appState) {
          final GlobalBaseState p = pageState;
          if (p.themeColor != appState.themeColor) {
            if (pageState is Cloneable) {
              final Object copy = pageState.clone();
              final GlobalBaseState newState = copy;
              newState.themeColor = appState.themeColor;
              return newState;
            }
          }
          return pageState;
        });
      }
    },
  );

  return  MaterialApp(
        title: 'FishDemo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xFF009274),
          brightness: Brightness.light
        ),
        home: routes.buildPage('splash_page', null),
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute<Object>(builder: (BuildContext context) {
            return routes.buildPage(settings.name, settings.arguments);
          });
        },
  );
}
