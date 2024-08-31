import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/utils/extensions/string_ext.dart';
import 'package:sizer/sizer.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'Settings'.raw,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            ValueListenableBuilder(
              valueListenable:
                  Hive.box<String>(Constants.hiveThemeModeBox).listenable(),
              builder: (context, box, widget) {
                final followSystem =
                    box.get('followSystem', defaultValue: 'true');
                final themeMode = box.get('themeMode', defaultValue: 'light');
                final systemMode = followSystem == 'true';
                final darkMode = themeMode == 'dark';

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Theme'.raw,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                      ),
                    ),
                    ListTile(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      title: Text('System'.raw),
                      subtitle: Text('Follow system theme'.raw),
                      trailing: Switch(
                        value: systemMode,
                        onChanged: (val) {
                          box.put(
                            'followSystem',
                            systemMode ? 'false' : 'true',
                          );
                        },
                      ),
                    ),
                    ListTile(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                      title: Text('Dark Theme'.raw),
                      trailing: Switch(
                        value: darkMode,
                        onChanged: systemMode
                            ? null
                            : (val) {
                                box.put(
                                  'themeMode',
                                  darkMode ? 'light' : 'dark',
                                );
                              },
                      ),
                    ),
                  ],
                );
              },
            ),
            Divider(indent: 16, endIndent: 16),
            SizedBox(
              height: 16.px,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'About'.raw,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              title: Text('Created by'.raw),
              subtitle: Text('ChiaMin Lim'.raw),
            ),
          ],
        ),
      ),
    );
  }
}
