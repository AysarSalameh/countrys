import 'package:bloc/bloc.dart';
import 'package:countrys/model/country.dart';
import 'package:countrys/repository/country_repository.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';
part 'country_state.dart';

class CountryCubit extends Cubit<CountryState> {
  final CountryRepository countryrepository;
  List<Country>? country;

  CountryCubit(this.countryrepository) : super(CountryInitial());

  Future<List<Country>> fetchAllCountries() async {
    emit(CountryLoading());

    try {
      final countries = await countryrepository.getAllCountries();
      emit(CountryLoaded(countries));
      return countries;
    } catch (e) {
      print(e);
      emit(CountryError(e.toString()));
      return [];
    }
  }
}
