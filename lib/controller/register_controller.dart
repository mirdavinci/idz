import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class UserRegistrationController extends GetxController {
  final phoneNumberController = TextEditingController();
  final isValidNumber = false.obs;

  bool checkPhoneNumLength() {
    if (phoneNumberController.text.toString().length < 10) {
      return  isValidNumber.value = false;
    } else {
      return  isValidNumber.value = true;
    }
  }



  Future<void> registerUser() async {
    //TODO: reg user API
  }

}
