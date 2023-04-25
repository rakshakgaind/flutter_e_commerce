import 'package:demo_e_commenrce/providers_controller/base_controller.dart';

import '../models/home_screen_model.dart';

class AddressScreenController extends BaseController{

  List<AddressModel> addressList=[];
  bool isSelected=true;
  AddressScreenController(){

    addressList.add(AddressModel(isSelected: isSelected, userAddress: "PAP CHOWK JALANDHAR", userName: "AMAN RANA", userPhone: "987654321", userPinCode: "174307"));
    addressList.add(AddressModel(isSelected: isSelected, userAddress: "Dyananad CHOWK Mohalli", userName: "Rahul RANA", userPhone: "123456789", userPinCode: "174567"));
    addressList.add(AddressModel(isSelected: isSelected, userAddress: "Rama mandi jalandhar", userName: "Akshay kumar", userPhone: "8894033905", userPinCode: "897654"));
  }


  @override
  void notifyListeners() {
    addressList.add(AddressModel(isSelected: isSelected, userAddress: "PAP CHOWK JALANDHAR", userName: "AMAN RANA", userPhone: "987654321", userPinCode: "174307"));
    addressList.add(AddressModel(isSelected: isSelected, userAddress: "Dyananad CHOWK Mohalli", userName: "Rahul RANA", userPhone: "123456789", userPinCode: "174567"));
    addressList.add(AddressModel(isSelected: isSelected, userAddress: "Rama mandi jalandhar", userName: "Akshay kumar", userPhone: "8894033905", userPinCode: "897654"));
    super.notifyListeners();
  }
}