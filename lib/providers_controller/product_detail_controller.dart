import 'package:demo_e_commenrce/providers_controller/base_controller.dart';
import 'package:flutter/cupertino.dart';

import '../models/home_screen_model.dart';

class ProductDetailController extends BaseController{
  List<ProductModel> productList=[];
  int number=1;

  ProductDetailController(){
    productList.add(ProductModel(image: "assets/images/chair.jpeg", isSelected: isSelected, productName: "Chair"));
    productList.add(ProductModel(image: "assets/images/sofa2.webp", isSelected: isSelected, productName: "Sofa"));
    productList.add(ProductModel(image: "assets/images/tables.webp", isSelected: isSelected, productName: "Table"));
    productList.add(ProductModel(image: "assets/images/chair.jpeg", isSelected: isSelected, productName: "Chair"));
    productList.add(ProductModel(image: "assets/images/sofa2.webp", isSelected: isSelected, productName: "Sofa"));
    productList.add(ProductModel(image: "assets/images/tables.webp", isSelected: isSelected, productName: "Table"));
    productList.add(ProductModel(image: "assets/images/chair.jpeg", isSelected: isSelected, productName: "Chair"));
    productList.add(ProductModel(image: "assets/images/sofa2.webp", isSelected: isSelected, productName: "Sofa"));
    productList.add(ProductModel(image: "assets/images/tables.webp", isSelected: isSelected, productName: "Table"));
    productList.add(ProductModel(image: "assets/images/chair.jpeg", isSelected: isSelected, productName: "Chair"));
    productList.add(ProductModel(image: "assets/images/sofa2.webp", isSelected: isSelected, productName: "Sofa"));
    productList.add(ProductModel(image: "assets/images/tables.webp", isSelected: isSelected, productName: "Table"));
    productList.add(ProductModel(image: "assets/images/chair.jpeg", isSelected: isSelected, productName: "Chair"));
    productList.add(ProductModel(image: "assets/images/sofa2.webp", isSelected: isSelected, productName: "Sofa"));
    productList.add(ProductModel(image: "assets/images/tables.webp", isSelected: isSelected, productName: "Table"));
    productList.add(ProductModel(image: "assets/images/chair.jpeg", isSelected: isSelected, productName: "Chair"));
    productList.add(ProductModel(image: "assets/images/sofa2.webp", isSelected: isSelected, productName: "Sofa"));
    productList.add(ProductModel(image: "assets/images/tables.webp", isSelected: isSelected, productName: "Table"));
    productList.add(ProductModel(image: "assets/images/chair.jpeg", isSelected: isSelected, productName: "Chair"));
    productList.add(ProductModel(image: "assets/images/sofa2.webp", isSelected: isSelected, productName: "Sofa"));
    productList.add(ProductModel(image: "assets/images/tables.webp", isSelected: isSelected, productName: "Table"));
    productList.add(ProductModel(image: "assets/images/chair.jpeg", isSelected: isSelected, productName: "Chair"));
    productList.add(ProductModel(image: "assets/images/sofa2.webp", isSelected: isSelected, productName: "Sofa"));
    productList.add(ProductModel(image: "assets/images/tables.webp", isSelected: isSelected, productName: "Table"));
    notifyListeners();
    debugPrint("Product screen controller");
    debugPrint("product List length-->${productList.length}");
  }
  bool isSelected=false;

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}