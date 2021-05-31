import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:provider/provider.dart';

import './api/api_provider.dart';
import './constants/colors.dart';
import './screens/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final AdaptiveThemeMode? savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(
    MultiProvider(
      providers: [
        Provider<ApiProvider>(create: (_) => ApiProvider()),
      ],
      child: MyApp(savedThemeMode: savedThemeMode),
    ),
  );
}

class MyApp extends StatelessWidget {
  final AdaptiveThemeMode? savedThemeMode;

  const MyApp({Key? key, this.savedThemeMode}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: backgroundColor,
        primarySwatch: Colors.red,
        accentColor: Colors.amber,
      ),
      initial: AdaptiveThemeMode.dark,
      builder: (ThemeData theme, ThemeData darkTheme) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'insanalyse',
          theme: theme,
          darkTheme: darkTheme,
          home: HomePage()),
    );
  }
}
