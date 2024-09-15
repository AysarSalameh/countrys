import 'package:auto_route/auto_route.dart';
import 'package:countrys/model/country.dart';
import 'package:countrys/repository/country_repository.dart';
import 'package:countrys/services/country_api.dart';
import 'package:countrys/view/countrys_screen.dart';
import 'package:countrys/view/detalis_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
part 'app_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: CountryRoute.page, initial: true),
        AutoRoute(page: DetalisRoute.page),
      ];
}
