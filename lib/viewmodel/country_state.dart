part of 'country_cubit.dart';

@immutable
sealed class CountryState {}

final class CountryInitial extends CountryState {}

final class CountryLoaded extends CountryState {
  List<Country> country;
  CountryLoaded(this.country);
}

final class CountryError extends CountryState {
  final String error;

  CountryError(this.error);
}

final class CountryLoading extends CountryState {}
