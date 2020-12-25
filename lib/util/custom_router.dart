import 'package:auto_route/auto_route_annotations.dart';
import 'package:gsgtrining/ui/about.dart';
import 'package:gsgtrining/ui/box.dart';
import 'package:gsgtrining/ui/call.dart';
import 'package:gsgtrining/ui/cond.dart';
import 'package:gsgtrining/ui/detpro.dart';
import 'package:gsgtrining/ui/edit.dart';
import 'package:gsgtrining/ui/home.dart';
import 'package:gsgtrining/ui/massege.dart';
import 'package:gsgtrining/ui/product.dart';
import 'package:gsgtrining/ui/reSto.dart';
import 'package:gsgtrining/ui/reg.dart';
import 'package:gsgtrining/ui/rgc.dart';
import 'package:gsgtrining/ui/splash.dart';
import 'package:gsgtrining/ui/store.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: Splash, initial: true),
    MaterialRoute(page: Home),
    MaterialRoute(page: Conditions),
    MaterialRoute(page: ProductDetails),
    MaterialRoute(page: Product),
    MaterialRoute(page: RegClinet),
    MaterialRoute(page: RegisterStore),
    MaterialRoute(page: Store),
    MaterialRoute(page: TyReges),
    MaterialRoute(page: Massage),
    MaterialRoute(page: Call),
    MaterialRoute(page: Box),
    MaterialRoute(page: AboutApp),
    MaterialRoute(page: Edit),
  ],
)
class $CustomRouter {}
