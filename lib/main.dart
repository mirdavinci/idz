import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'utils/bindings.dart';
import 'view/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends GetView {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Lato',
        primarySwatch: Colors.blue,
      ),
      home: const RegisterPage(),
      initialBinding: AppBindings(),
    );
  }
}
