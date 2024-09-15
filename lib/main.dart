import 'package:countrys/Route/app_route.dart';
import 'package:countrys/repository/country_repository.dart';
import 'package:countrys/services/country_api.dart';
import 'package:countrys/view/countrys_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:countrys/viewmodel/country_cubit.dart'; // تأكد من استيراد `country_cubit`

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Dio dio;
  late CountryApi countryApi;
  late CountryRepository countryRepository;
  late AppRouter approuter;

  @override
  void initState() {
    super.initState();
    dio = Dio();
    countryApi = CountryApi(dio);
    countryRepository = CountryRepository(countryApi);
    approuter = AppRouter();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CountryCubit(countryRepository),
      child: MaterialApp.router(
        routerConfig: approuter.config(),
      ),
    );
  }
}
