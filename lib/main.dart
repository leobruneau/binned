import 'package:flutter/material.dart';

import './theme/custom_theme.dart';
import './screens/settings_screen.dart';
import './screens/qr_code_scanner_screen.dart';
import './screens/tabs_screen.dart';
import './screens/user_profile_screen.dart';
import './screens/profile_page.dart';
import './screens/qr_code_scanned_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Binned',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme().lightTheme,
      // home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(),
        SettingsScreen.routeName: (context) => SettingsScreen(),
        QrCodeScannerScreen.routeName: (context) => QrCodeScannerScreen(),
        UserProfileScreen.routeName: (context) => UserProfileScreen(),
        ProfilePage.routeName: (context) => ProfilePage(),
        QrCodeScannedScreen.routeName: (context) => QrCodeScannerScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
