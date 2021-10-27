import 'package:fashion_store/screens/blog_detail_screen/blog_detail_screen.dart';
import 'package:fashion_store/screens/blog_screen/blog_screen.dart';
import 'package:fashion_store/screens/categories_screen/category_screen.dart';
import 'package:fashion_store/screens/checkout_screen/checkout_screen.dart';
import 'package:fashion_store/screens/contactus_screen/contactus_screen.dart';
import 'package:fashion_store/screens/dashboard_screen/dashboard_screen.dart';
import 'package:fashion_store/screens/my_account_screen/my_account_screen.dart';
import 'package:fashion_store/screens/notification_screen/notification_screen.dart';
import 'package:fashion_store/screens/notification_setting/notification_settings.dart';
import 'package:fashion_store/screens/order_history/order_history_screen.dart';
import 'package:fashion_store/screens/order_tracking/order_tracking_screen.dart';
import 'package:fashion_store/screens/product_collection/product_collection_screen.dart';
import 'package:fashion_store/screens/product_detail_screen/product_detail_screen.dart';
import 'package:fashion_store/screens/shipping_detail/shipping_details.dart';
import 'package:fashion_store/screens/sign_in/sign_in.dart';
import 'package:fashion_store/screens/sign_up/sign_up_screen.dart';
import 'package:get/get.dart';

class CommonRoutePage{

  goToSignIn() {
    Get.off(()=> SignInScreen());
  }

  goToSignUp() {
    Get.off(()=> SignUpScreen());
  }

  goToDashBoardPage() {
    Get.off(()=> DashBoardScreen());
  }

  goToCategory() {
    Get.to(()=> CategoryScreen());
  }

  goToCheckout() {
    Get.to(()=> CheckOutScreen());
  }

  goToProductDetail() {
    Get.to(()=> ProductDetailScreen());
  }

  goToBlogScreen() {
    Get.to(()=> BlogScreen());
  }

  goToBlogDetailScreen() {
    Get.to(()=> BlogDetailScreen());
  }

  goToContactUsScreen() {
    Get.to(()=> ContactUsScreen());
  }

  goToOrderHistoryScreen() {
    Get.to(()=> OrderHistoryScreen());
  }

  goToShippingDetailScreen() {
    Get.to(()=> ShippingDetails());
  }

  goToAccountScreen() {
    Get.to(()=> MyAccount());
  }

  goToNotificationScreen() {
    Get.to(()=> NotificationScreen());
  }

  goToNotificationSettingScreen() {
    Get.to(()=> NotificationSettings());
  }

  goToOrderTrackingScreen() {
    Get.to(()=> OrderTracking());
  }

  goToProductCollectionScreen() {
    Get.to(()=> ProductCollectionScreen());
  }
}
