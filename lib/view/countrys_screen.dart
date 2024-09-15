import 'package:auto_route/auto_route.dart';
import 'package:countrys/Route/app_route.dart';
import 'package:countrys/model/country.dart';
import 'package:flutter/material.dart';
import 'package:countrys/viewmodel/country_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CountryScreen extends StatefulWidget {
  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CountryCubit>(context).fetchAllCountries();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Countries'),
      ),
      body: BlocBuilder<CountryCubit, CountryState>(
        builder: (context, state) {
          if (state is CountryLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CountryLoaded) {
            return ListView.separated(
                itemCount: state.country.length,
                itemBuilder: (context, index) {
                  final country = state.country[index];
                  return ListTile(
                    onTap: () {
                      context.router.push(DetalisRoute(country: country));
                    },
                    title: Text(country.name.common),
                    leading: Image.network(
                      country.flags.png,
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 30,
                    ));
          } else if (state is CountryError) {
            return Center(
              child: Text(state.error),
            );
          }
          return Container();
        },
      ),
    );
  }
}
