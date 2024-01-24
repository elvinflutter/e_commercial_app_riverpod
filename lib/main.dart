import 'package:e_commercial_app_riverpod/constants/themes.dart';
import 'package:e_commercial_app_riverpod/views/detail_page.dart';
import 'package:e_commercial_app_riverpod/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'E-Commercial App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: kAppBgColor,
          appBarTheme: const AppBarTheme(
              backgroundColor: kSecondaryColor,
              iconTheme: IconThemeData(color: kWhiteColor)),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const DetailPage(),
      ),
    );
  }
}
