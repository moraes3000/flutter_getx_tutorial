import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';

class RouteMiddleware extends GetMiddleware {
  RouteMiddleware({super.priority});

  @override
  GetPage? onPageCalled(GetPage? page) {
    debugPrint('Executando middleware onPageCalled');
    return super.onPageCalled(page);
  }

  // s
  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    debugPrint('Executando middleware onPageBuildStart');
    // TODO: implement onPageBuildStart
    return super.onPageBuildStart(page);
  }
}
