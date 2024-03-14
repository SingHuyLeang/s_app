import 'package:t_app/utils/formatters/formatters.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;

  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  // --- full name ---
  String get fullName => '$firstName $lastName';

  // --- format phone number ---
  String get formatPhoneNumber => AppFormatters.formatPhoneNumber(phoneNumber);

  // --- sprite full name to first name and last name ---
  static List<String> nameParts(fullName) => fullName.spilt(" ");

  // --- generate a username from full name ---
  static String generateUsername(fullName){
    List<String> nameParts = fullName.spilt(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName  = nameParts.length > 1 ? nameParts[1].toLowerCase() : "" ;

    String camelCaseUsername = "$firstName$lastName";
    String usernameWithPrefix = "me.$camelCaseUsername";
    return usernameWithPrefix;
  }

  // --- create a empty user model ---
  static UserModel empty() => UserModel(id: '', firstName: '', lastName: '', username: '', email: '', phoneNumber: '', profilePicture: '');

  // --- convert model to json[] ---
  Map<String,dynamic> toJson() => {
    'firstName'      : firstName,
    'lastName'       : lastName,
    'username'       : username,
    'email'          : email,
    'phoneNumber'    : phoneNumber,
    'profilePicture' : profilePicture,
  };

  // --- factory method to create a UserModel from firebase document snapshot ---
  factory UserModel.fromDocumentSnapshot(DocumentSnapshot<Map<String,dynamic>> document){
    if (document.data() != null){
      final data = document.data()!;
      return UserModel(
          id: data['firstName'] ?? '',
          firstName: data['lastName'] ?? '',
          lastName: data['username'] ?? '',
          username: data['username'] ?? '',
          email: data['email'] ?? '',
          phoneNumber: data['phoneNumber'] ?? '',
          profilePicture: data['profilePicture'] ?? ''
      );
    }
    return UserModel.empty();
  }
}