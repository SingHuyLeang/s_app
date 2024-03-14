import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_app/bindings/general_bindings.dart';
import 'package:t_app/features/authantucation/views/onboarding/onboarding.dart';
import 'package:t_app/utils/constant/colors.dart';
import 'package:t_app/utils/themes/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialBinding: GeneralBindings(),
      home: Scaffold(backgroundColor: AppColors.primary,body: Center(child: CircularProgressIndicator(color: Colors.white,),),),
    );
  }
}
