import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_app/app/ui/theme.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/feature/landing/view/landing_page.dart';
import 'package:movie_app/l10n/l10n.dart';
import 'package:sizer/sizer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return ValueListenableBuilder(
          valueListenable:
              Hive.box<String>(Constants.hiveThemeModeBox).listenable(),
          builder: (context, box, widget) {
            final followSystem = box.get('followSystem', defaultValue: 'true');
            final themeMode = box.get('themeMode', defaultValue: 'light');
            final systemMode = followSystem == 'true';
            final darkMode = themeMode == 'dark';

            return MaterialApp(
              themeMode: systemMode
                  ? ThemeMode.system
                  : darkMode
                      ? ThemeMode.dark
                      : ThemeMode.light,
              theme: lightTheme,
              darkTheme: darkTheme,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              home: const LandingPage(),
            );
          },
        );
      },
    );
  }
}
