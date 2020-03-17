import '../interfacesLikeClasses/requiredFields.dart';

class User implements RequiredFields {
  int userId;
  String names;
  String lastNames;
  String fullName;
  int gender;
  String userName;
  String avatar;

  // Interface fields
  int createUserId;
  String createdAt;
  String modifiedAt;
}