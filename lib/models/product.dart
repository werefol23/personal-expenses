import '../interfacesLikeClasses/requiredFields.dart';

class Product implements RequiredFields {
  int productId;
  int productType;
  String productName;
  String productTypeName;

  // Interface fields
  int createUserId;
  String createdAt;
  String modifiedAt;
}