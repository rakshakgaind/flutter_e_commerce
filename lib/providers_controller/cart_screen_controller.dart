import 'package:demo_e_commenrce/providers_controller/base_controller.dart';
import 'package:flutter/cupertino.dart';

import '../models/home_screen_model.dart';

class CartScreenController extends BaseController{

  List<CartModel> productList=[];
  int number=1;
  bool isSelected=true;

  CartScreenController(){
    productList.add(CartModel(image: "assets/images/chair.jpeg", isSelected: isSelected, productName: "Chair", number: number));
    productList.add(CartModel(image: "assets/images/sofa2.webp", isSelected: isSelected, productName: "Sofa",number: number));
    productList.add(CartModel(image: "assets/images/tables.webp", isSelected: isSelected, productName: "Table",number: number));
    notifyListeners();
  }



}