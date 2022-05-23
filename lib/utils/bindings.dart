import 'package:get/get.dart';

import '../controller/register_controller.dart';
import 'const.dart';
import 'package:flutter/material.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut(()=>UserRegistrationController());
    Get.put(() => Const());

  }



 }
