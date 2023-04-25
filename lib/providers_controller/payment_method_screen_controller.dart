import 'package:demo_e_commenrce/providers_controller/base_controller.dart';

import '../models/home_screen_model.dart';

class PaymentMethodScreenController extends BaseController{

  List<PaymentMethodModel> paymentMethods=[];
  bool isSelected=true;

  PaymentMethodScreenController(){
    paymentMethods.add(PaymentMethodModel(isSelected: isSelected, image: "assets/images/visa.png", paymentMethodName: "Visa / MasterCard"));
    paymentMethods.add(PaymentMethodModel(isSelected: isSelected, image: "assets/images/paypal.png", paymentMethodName: "PayPal"));
    paymentMethods.add(PaymentMethodModel(isSelected: isSelected, image: "assets/images/credit-card.png", paymentMethodName: "Credit Card"));
  }

  List<String> names=["assets/images/credit-card.png","assets/images/paypal.png" , "assets/images/visa.png",];
  int currentIndex = 0;





}