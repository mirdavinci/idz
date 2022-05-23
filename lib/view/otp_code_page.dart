import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:idman/view/widget/reg_page_custom_container.dart';
import '../utils/const.dart';

class OtpCodePage extends GetView {
  const OtpCodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          const RegPageCustomContainer(),
          Container(
            // color: Colors.green,
            height: height > 750 ? 80 : 50,
            width: 350,
            margin: EdgeInsets.only(
                top: height > 750 ? 565 : 420, left: 20, right: 20),
            child: TextFormField(
              style: TextStyle(letterSpacing: width > 375 ? 45 : 40),
              keyboardType: TextInputType.number,
              maxLength: 6,
              decoration: const InputDecoration(
                counterText: "",
                hintText: Const.enterCode,
                hintStyle: TextStyle(
                  color: Const.textHintColor,
                  letterSpacing: 1,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40.0),
                  ),
                ),
              ),
              onChanged: (phoneNumber) {},
            ),
          ),
          Center(
            child: Container(
                // color: Colors.green,
                margin: EdgeInsets.only(
                    top: height < 700 ? 170 : 200,
                    right: width > 375 ? 40 : 10),
                child: const Text(
                  Const.otpText,
                  style: TextStyle(fontSize: 14, color: Const.textHintColor),
                )),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(
                top: height < 700 ? 370 : 460,
              ),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                height: height > 750 ? 50 : 40,
                minWidth: width > 375 ? 300 : 290,
                color: Const.buttonsColor,
                onPressed: () {
                  // Get.to(() => const OrderPage());
                },
                child: const Text(
                  Const.validate,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(
                  top: height < 700 ? 450 : 550, left: width < 370 ? 40 : 50),
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
              margin: EdgeInsets.only(
                  top: height > 750 ? 750 : 570, left: width > 375 ? 80 : 60),
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
          Container(
            margin: EdgeInsets.only(top: height > 750 ? 1 : 15),
            child: Center(
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
              margin: const EdgeInsets.only(top: 60, right: 15),
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
