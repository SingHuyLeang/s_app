import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:t_app/features/authantucation/views/login/login_screen.dart';
import 'package:t_app/features/authantucation/views/onboarding/onboarding.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:t_app/utils/exceptions/exceptions.dart';

import '';

class AuthRepository extends GetxController{
  static AuthRepository get instance => Get.find();

//   -- Variable --
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

//  -- Called from main.dart on app launch --
  @override
  void onReady() {
    // -- Remove Native Splash Screen --
    FlutterNativeSplash.remove();
    // -- Redirect to the appropriate screen --
    screenRedirect();
  }
  screenRedirect() async {
    // -- Local storage --
    deviceStorage.writeIfNull('isFirstTime', true);
    // -- check if it's the first time launching the app
    deviceStorage.read('isFirstTime') != true 
        ? Get.to(()=> LoginScreen())
        : Get.to(()=> OnboardingScreen());
  }

  /* --------------------- Email & Password Sign-in ------------------------ */
  /// [EmailAuthentication] - Sign in
  /// [EmailAuthentication] - Register
  Future<UserCredential> registerWithEmailAndPassword(String email,String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthExceptions(e.code).message;
    } on FirebaseException catch (e) {
      // throw
    } on FormatException catch (e) {
      log('FormatException -> ${e.toString()}');
    } on PlatformException catch (e) {
      log('PlatformException -> ${e.toString()}');
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }
  /// [EmailVerification] - Mail Verification
  Future<void> sendEmailVerification()  async {
    try {
      await _auth.currentUser?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      log('FirebaseAuthException -> ${e.stackTrace}');
    } on FirebaseException catch (e) {
      log('FirebaseException -> ${e.stackTrace}');
    } on FormatException catch (e) {
      log('FormatException -> ${e.toString()}');
    }  on PlatformException catch (e) {
      log('PlatformException -> ${e.toString()}');
    } catch (e) {
      throw 'Something went wrong. Please try again.';
    }
  }
  ///
}