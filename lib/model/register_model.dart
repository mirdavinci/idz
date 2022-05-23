class UserRegistrationModel {
  UserRegistrationModel({required this.phoneNumber});

  String phoneNumber = '';

  factory UserRegistrationModel.fromJson(Map<String, dynamic> json) =>
      UserRegistrationModel(phoneNumber: json['phoneNumber']);

  Map<String, dynamic> toJson() => {'phoneNumber': phoneNumber};
}
