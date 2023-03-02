import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late final Locale deviceLocale;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biblioteca mobile',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      localeResolutionCallback: (myLocale, supportedLocales) {
        deviceLocale = myLocale!;
        return myLocale;
      },
      theme: ThemeData(
        primaryColor: Colors.green.shade800,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.green.shade600),
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      body: Center(
        child: Text(
          localizations.greetings,
        ),
      ),
    );
  }
}
