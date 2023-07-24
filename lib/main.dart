import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tocktick_app/config/theme/app_theme.dart';
import 'package:tocktick_app/presentation/providers/discover_provider.dart';
import 'package:tocktick_app/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          /* lazy: true, *///para que se carge aunque no se necesite desde un principio
          create: (_)=>DiscoverProvider()..loadNextPage()),
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().themeData(),
        home: const DiscoverScreen()
      ),
    );
  }
}