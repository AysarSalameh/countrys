import 'package:auto_route/auto_route.dart';
import 'package:countrys/model/country.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DetalisScreen extends StatelessWidget {
  const DetalisScreen({required this.country});

  final Country country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(country.name.common),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              country.name.common,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Image.network(
              country.flags.png,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
