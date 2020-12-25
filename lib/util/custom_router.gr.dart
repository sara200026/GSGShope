// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/about.dart';
import '../ui/box.dart';
import '../ui/call.dart';
import '../ui/cond.dart';
import '../ui/detpro.dart';
import '../ui/edit.dart';
import '../ui/home.dart';
import '../ui/massege.dart';
import '../ui/product.dart';
import '../ui/reSto.dart';
import '../ui/reg.dart';
import '../ui/rgc.dart';
import '../ui/splash.dart';
import '../ui/store.dart';

class Routes {
  static const String splash = '/';
  static const String home = '/Home';
  static const String conditions = '/Conditions';
  static const String productDetails = '/product-details';
  static const String product = '/Product';
  static const String regClinet = '/reg-clinet';
  static const String registerStore = '/register-store';
  static const String store = '/Store';
  static const String tyReges = '/ty-reges';
  static const String massage = '/Massage';
  static const String call = '/Call';
  static const String box = '/Box';
  static const String aboutApp = '/about-app';
  static const String edit = '/Edit';
  static const all = <String>{
    splash,
    home,
    conditions,
    productDetails,
    product,
    regClinet,
    registerStore,
    store,
    tyReges,
    massage,
    call,
    box,
    aboutApp,
    edit,
  };
}

class CustomRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splash, page: Splash),
    RouteDef(Routes.home, page: Home),
    RouteDef(Routes.conditions, page: Conditions),
    RouteDef(Routes.productDetails, page: ProductDetails),
    RouteDef(Routes.product, page: Product),
    RouteDef(Routes.regClinet, page: RegClinet),
    RouteDef(Routes.registerStore, page: RegisterStore),
    RouteDef(Routes.store, page: Store),
    RouteDef(Routes.tyReges, page: TyReges),
    RouteDef(Routes.massage, page: Massage),
    RouteDef(Routes.call, page: Call),
    RouteDef(Routes.box, page: Box),
    RouteDef(Routes.aboutApp, page: AboutApp),
    RouteDef(Routes.edit, page: Edit),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    Splash: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Splash(),
        settings: data,
      );
    },
    Home: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Home(),
        settings: data,
      );
    },
    Conditions: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Conditions(),
        settings: data,
      );
    },
    ProductDetails: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProductDetails(),
        settings: data,
      );
    },
    Product: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Product(),
        settings: data,
      );
    },
    RegClinet: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegClinet(),
        settings: data,
      );
    },
    RegisterStore: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegisterStore(),
        settings: data,
      );
    },
    Store: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Store(),
        settings: data,
      );
    },
    TyReges: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TyReges(),
        settings: data,
      );
    },
    Massage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Massage(),
        settings: data,
      );
    },
    Call: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Call(),
        settings: data,
      );
    },
    Box: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Box(),
        settings: data,
      );
    },
    AboutApp: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AboutApp(),
        settings: data,
      );
    },
    Edit: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => Edit(),
        settings: data,
      );
    },
  };
}
