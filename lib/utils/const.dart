import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Const extends GetxController {
  late Size? size = WidgetsBinding.instance?.window.physicalSize;


  ///Device Size
  static final deviceHeight = Get.height;
  static final deviceWidth = Get.width;

  ///Strings
  static const idMan = "IDMAN";
  static const loginToYourAcc = "Login to your account";
  static const phoneNumber = "Phone Number";
  static const yourNumber = "Your number";
  static const enter = "Enter";
  static const doNotHaveAcc = "Don't have an account!";
  static const contactSpecialist = "Contact A Specialist";
  static const reachOut = "Reach Out";
  static const havingIssue = "Having issues logging in?";
  static const enterCode = "Enter Code";
  static const validate = "Validate";
  static const otpText =
      "To proceed, a One-time password (OTP) has been\nsent to your phone number.";
  static const newText = "New";
  static const project = "Project";
  static const location = "Location";
  static const status = "Status";
  static const cardIdMan = "IDMan";
  static const goodMorning = "Good Morning";
  static const noProjectToShow = "There are no projects to show";
  static const userInfo = "User Info";
  static const shareProfile = "Share Profile";
  static const signOut = "Sign Out";
  static const scanQr = "Scan the QR code.";
  static const designBrief = "Design Brief";
  static const deliveryTime = "Delivery time";
  static const briefStatus = "Brief Status";
  static const noNotificationToShow = "There are no notifications to show.";
  static const notifications = "Notifications";
  static const zeroNotif = "0 Notification";
  static const brief = "Brief";
  static const projectOverView = "Project overview";
  static const rooms = "Rooms";
  static const numberOfRooms = "Number of room(s)";
  static const preliminaries = "Preliminaries";
  static const estimatedBudget = "Estimated budget";
  static const projectBudget = "Project budget :";
  static const remarks = "Remarks :";
  static const files = "Files";
  static const designQr = "Design (QR)";
  static const qrCode = "QR Code";
  static const scanQrCode = "Scan the design's QR code.";
  static const images = "Images";
  static const placeTheQr = "Place the QR code inside the area";
  static const scanningWillStart = "Scanning will start automatically";
  static const contactInfo = "Contact Info";
  static const productManager = "Product manager";
  static const accept = "Accept";
  static const reject = "Reject";
  static const payment = "Payment";

  ///assets
  static const regPageBackGround = "assets/pictures/image.png";
  static const regPageSmallCircle = "assets/pictures/idMan_circle.png";
  static const modalBottomSheet = "assets/pictures/modal.svg";
  static const noProject = "assets/pictures/no_project.svg";
  static const noNotification = "assets/pictures/no_notification.svg";
  static const jpg = "assets/pictures/pic_jpg.svg";
  static const mp4 = "assets/pictures/pic_mp4.svg";
  static const pdf = "assets/pictures/pic_pdf.svg";
  static const ppt = "assets/pictures/pic_ppt.svg";
  static const qrCodePic = "assets/pictures/qr_code.svg";
  static const paymentDottedCard = "assets/pictures/payment_dotted_card.svg";

  ///Colors
  static const textHintColor = Color(0xff999999);
  static const buttonsColor = Color(0xff288CFF);
  static const titleColors = Color(0xff808080);
  static const textColor = Colors.black;
  static const pendingCardShadow = Colors.orangeAccent;
  static const submitCardShadow = Colors.green;
  static const briefListViewCard = Color(0xffF1F1F1);

  ///Base Url
  static const BASE_URL = '';
}
