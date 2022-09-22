const String tableCustomers = 'customers';

class CustomerField {
  static const String id = '_id';
  static const String name = 'name';
  static const String email = 'email';
  static const String nationality = 'nationality';
  static const String ssn = 'ssn';
  static const String balance = 'balance';
}

class CustomerModel {
  String? id;
  String? name;
  String? email;
  String? nationality;
  String? ssn;
  double? balance;
  CustomerModel({
    this.id,
    required this.name,
    required this.email,
    required this.nationality,
    required this.ssn,
    required this.balance,
  });

  @override
  String toString() {
    return 'CustomerModel(id: $id, name: $name, email: $email, nationality: $nationality, ssn: $ssn, balance: $balance)';
  }
}
