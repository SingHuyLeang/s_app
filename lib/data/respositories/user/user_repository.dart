import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:t_app/features/pesonalization/model/user_model.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // --- Save user data to firebase ---
  Future<void> saveUserRecord(UserModel user) async {
    try{
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      // throw AppFirebaseException(e.code).message;
    } on FormatException catch (e) {
      // throw AppFormatException(e.code).message;
    // } on PlatformException catch (e) {
      // throw AppPlatformException(e.code).message;
    } catch (e) {
      throw 'Something want wrong. Please try again';
    }
  }
}