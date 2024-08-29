import 'package:flutter/material.dart';
import 'package:movie_app/app/ui/theme.dart';
import 'package:movie_app/feature/landing/view/landing_page.dart';
import 'package:movie_app/l10n/l10n.dart';
import 'package:sizer/sizer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          theme: lightTheme,
          darkTheme: darkTheme,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: const LandingPage(),
        );
      },
    );
  }
}
