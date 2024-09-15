import 'package:countrys/model/country.dart';
import 'package:countrys/services/country_api.dart';

class CountryRepository {
  final CountryApi countryApi;

  CountryRepository(this.countryApi);

  Future<List<Country>> getAllCountries() async {
    try {
      List<Country>? countries = await countryApi.getAllCountries();
      return countries;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
