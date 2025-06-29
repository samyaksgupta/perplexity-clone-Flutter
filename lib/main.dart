import 'package:flutter/material.dart';
import 'package:horizon_perplex/pages/home_page.dart';
import 'package:horizon_perplex/themes/colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Horizon Beta',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.submitButton),
        textTheme: GoogleFonts.jetBrainsMonoTextTheme(
          ThemeData.dark().textTheme,
        ).copyWith(
          bodyMedium: const TextStyle(
            fontSize: 15,
            color: AppColors.whiteColor,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}
