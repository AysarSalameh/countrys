import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:countrys/model/country.dart';
part 'country_api.g.dart';

@RestApi(baseUrl: 'https://restcountries.com/v3.1')
abstract class CountryApi {
  factory CountryApi(Dio dio, {String baseUrl}) = _CountryApi;

  @GET('/all')
  Future<List<Country>> getAllCountries();
}
