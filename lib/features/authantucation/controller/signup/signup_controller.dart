import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:t_app/data/respositories/authentication/auth_repository.dart';
import 'package:t_app/data/respositories/user/user_repository.dart';
import 'package:t_app/features/authantucation/views/signup/verfy_email.dart';
import 'package:t_app/features/pesonalization/model/user_model.dart';
import 'package:t_app/utils/constant/image_string.dart';
import 'package:t_app/utils/helpers/network_manager.dart';
import 'package:t_app/utils/popups/full_screen_loader.dart';
import 'package:t_app/utils/popups/loader.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Variable
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // Signup
  void signup() async {
    try {
      // Start Loading
      FullScreenLoader.openLoadingDialog("We are processing your information...", AppImages.docerAnimation);
      // Check internet connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;
      // Form Validation
      if(!signupFormKey.currentState!.validate())return;
      // Privacy Policy Check
      if(!privacyPolicy.value){
        AppLoader.warningSnackBar(
          title: 'Accept Privacy Policy',
          message: 'In order to create account, you must have to read and accept the Privacy policy & Therm os use.'
        );
        return ;
      }
      // Register user in the firebase authentication & Save user data in firebase
///      final userCredential = await AuthRepository.instance.registerWithEmailAndPassword(email.text.trim(), password.text.trim());
      // Save the user data in Firebase FireStore
/*      final newUser = UserModel(
          id: userCredential.user!.uid,
          firstName: firstName.text.trim(),
          lastName: lastName.text.trim(),
          username: userName.text.trim(),
          email: email.text.trim(),
          phoneNumber: phoneNumber.text.trim(),
          profilePicture: '',
      );
*/
      final userRepository = Get.put(UserRepository());
      // await userRepository.saveUserRecord(newUser);
      // Show success message
      AppLoader.successSnackBar(title: 'Congratulation',message: 'Your account has been created! verify email to continue.',);
      // Move to verify screen
      Get.to(()=> VerifyEmailScreen());
    } catch(e) {
      // Show some generic error to the user
      AppLoader.errorSnackBar(title: 'Oh Snap!',message: e.toString());
    } finally {
      // Remove Loader
      FullScreenLoader.stopLoading();
    }
  }
}