import '../interfacesLikeClasses/requiredFields.dart';
import './product.dart';

class Expense implements RequiredFields{
  int expenseId;
  int cost;
  String name;
  String comments;
  List<Product> products;

  // Interface fields
  int createUserId;
  String createdAt;
  String modifiedAt;
}