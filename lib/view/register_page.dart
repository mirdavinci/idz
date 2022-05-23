import 'package:flutter/material.dart';
import 'package:fluttericon/mfg_labs_icons.dart';
import 'package:get/get.dart';
import 'package:idman/controller/register_controller.dart';
import 'package:idman/view/otp_code_page.dart';
import 'package:idman/view/widget/reg_page_custom_container.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../utils/const.dart';

class RegisterPage extends GetView {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final regController = Get.put(UserRegistrationController());
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.loose,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              Const.regPageBackGround,
              fit: BoxFit.cover,
            ),
          ),
          const CustomPaint(
            child: RegPageCustomContainer(),
          ),
          Container(
            // color: Colors.blue,
            width: 100,
            margin: EdgeInsets.only(top: height > 750 ? 520 : 380, left: 35),
            // color: Colors.brown,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  Const.phoneNumber,
                  style: TextStyle(fontSize: 13),
                ),
                Icon(
                  Icons.circle,
                  color: Colors.red,
                  size: 5,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: height > 750 ? 300 : 250, left: 20, right: 20),
            child: Obx(
              () => Center(
                child: IntlPhoneField(
                  controller: regController.phoneNumberController,
                  showDropdownIcon: true,
                  dropdownIcon: const Icon(
                    Icons.straight_sharp,
                    size: 25,
                    color: Colors.grey,
                  ),
                  dropdownIconPosition: IconPosition.trailing,
                  dropdownDecoration:
                      const BoxDecoration(shape: BoxShape.circle),
                  flagsButtonMargin: const EdgeInsets.only(left: 15),
                  decoration: InputDecoration(
                    suffixIcon: regController.isValidNumber.value
                        ? const Icon(
                            MfgLabs.ok,
                            color: Colors.green,
                            size: 14,
                          )
                        : const Icon(
                            MfgLabs.cancel,
                            color: Colors.red,
                            size: 14,
                          ),
                    hintText: Const.yourNumber,
                    hintStyle: const TextStyle(color: Const.textHintColor),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40.0),
                      ),
                    ),
                  ),
                  onChanged: (phone) {
                    regController.checkPhoneNumLength();
                    // print(Const.deviceHeight);
                    // print(Const.deviceWidth);
                  },
                  onCountryChanged: (country) {
                    print('Country changed to: ' + country.name);
                  },
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: height < 750 ? 460 : 520),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                height: height > 750 ? 50 : 35,
                minWidth: 280,
                color: Const.buttonsColor,
                onPressed: () {
                  Get.off(() => const OtpCodePage());
                },
                child: const Text(
                  Const.enter,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: height > 750 ? 400 : 370, left: 50),
              // color: Colors.green,
              child: Row(
                children: [
                  const Text(
                    Const.doNotHaveAcc,
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      Const.contactSpecialist,
                      style: TextStyle(color: Const.buttonsColor, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: height > 750 ? 700 : 550, left: 80),
              // color: Colors.green,
              child: Row(
                children: [
                  const Text(
                    Const.havingIssue,
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      Const.reachOut,
                      style: TextStyle(color: Const.buttonsColor, fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: height < 750 ? 10 : 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    Const.idMan,
                    style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(Const.regPageSmallCircle),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 55, right: 20),
              child: const Text(
                Const.loginToYourAcc,
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
