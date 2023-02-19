import 'package:black_market/pages/add_balance.dart';
import 'package:black_market/pages/all_listings.dart';
import 'package:black_market/pages/auth.dart';
import 'package:black_market/pages/create_profile.dart';
import 'package:black_market/pages/my_listings.dart';
import 'package:black_market/pages/new_listing.dart';
import 'package:black_market/pages/profile_settings.dart';
import 'package:black_market/pages/registration.dart';
import 'package:black_market/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const BlackMarket());
}

class BlackMarket extends StatelessWidget {
  const BlackMarket({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => AuthorizationPage(),
        '/reg': (context) => RegistrationPage(),
        '/create_profile': (context) => CreateProfilePage(),
        '/all_listings': (context) => AllListingsPage(),
        '/my_listings': (context) => MyListingsPage(),
        '/new_listing': (context) => NewListingPage(),
        '/add_balance': (context) => AddBalancePage(),
        '/settings': (context) => SettingsPage(),
        '/my_profile': (context) => MyProfilePage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: 'Доска объявлений',

      /*home: Scaffold(
        body: AuthorizationPage(),
      ),*/
    );
  }
}
