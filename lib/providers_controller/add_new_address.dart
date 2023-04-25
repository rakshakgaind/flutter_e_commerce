import 'package:demo_e_commenrce/providers_controller/base_controller.dart';

import '../models/home_screen_model.dart';

class AddNewAddressScreenController extends BaseController{

List<AddressType> addressType=[];
bool isSelected=true;

AddNewAddressScreenController(){
  addressType.add(AddressType(isSelected: isSelected,address: "Home"));
  addressType.add(AddressType(isSelected: isSelected,address: "Work"));
  addressType.add(AddressType(isSelected: isSelected,address: "Other"));
}


@override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}