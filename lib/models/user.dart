import '../interfacesLikeClasses/requiredFields.dart';

class User implements RequiredFields {
  int userId;
  String firstName;
  String secondName;
  String firstLastName;
  String secondLastName;
  String fullName;
  int age;
  String birthDate;
  int gender;
  String email;

  // Interface fields
  int createUserId;
  String createdAt;
  String modifiedAt;
}