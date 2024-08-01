import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:summise/Core/Routes/app_routes.dart';
import 'package:summise/UI/Auth/auth_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  static const double _designWidth = 360;
  static const double _designHeight = 800;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(_designWidth, _designHeight),
        builder: (context, widget) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Summise',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: AppRoutes.home,
          routes: AppRoutes.getRoutes(),
        ),
      ),
    );
  }
}
