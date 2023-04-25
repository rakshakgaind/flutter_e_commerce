import 'package:demo_e_commenrce/providers_controller/base_controller.dart';
import 'package:flutter/cupertino.dart';

import '../models/home_screen_model.dart';

class HomeScreenController extends BaseController {
  List<ProductModel> productList = [];
  List<CategoryModel> categoryList = [];

  HomeScreenController() {

    categoryList.add(CategoryModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    categoryList.add(CategoryModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    categoryList.add(CategoryModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    categoryList.add(CategoryModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    categoryList.add(CategoryModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    categoryList.add(CategoryModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    categoryList.add(CategoryModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    productList.add(ProductModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    productList.add(ProductModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    productList.add(ProductModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    productList.add(ProductModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    productList.add(ProductModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    productList.add(ProductModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    productList.add(ProductModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    productList.add(ProductModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    productList.add(ProductModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    productList.add(ProductModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    productList.add(ProductModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    productList.add(ProductModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    productList.add(ProductModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    productList.add(ProductModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    productList.add(ProductModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));

    debugPrint("Home screen controller");
    debugPrint("product List length-->${productList.length}");
  }

  @override
  void notifyListeners() {
    categoryList.add(CategoryModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    categoryList.add(CategoryModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    categoryList.add(CategoryModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    categoryList.add(CategoryModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    categoryList.add(CategoryModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    categoryList.add(CategoryModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    categoryList.add(CategoryModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    productList.add(ProductModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    productList.add(ProductModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    productList.add(ProductModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    productList.add(ProductModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    productList.add(ProductModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    productList.add(ProductModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    productList.add(ProductModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    productList.add(ProductModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    productList.add(ProductModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    productList.add(ProductModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    productList.add(ProductModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    productList.add(ProductModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    productList.add(ProductModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    productList.add(ProductModel(
        image: "assets/images/chair.jpeg",
        isSelected: isSelected,
        productName: "Chair"));
    productList.add(ProductModel(
        image: "assets/images/sofa2.webp",
        isSelected: isSelected,
        productName: "Sofa"));
    productList.add(ProductModel(
        image: "assets/images/tables.webp",
        isSelected: isSelected,
        productName: "Table"));
    notifyListeners();

    super.notifyListeners();
  }

  bool isSelected = true;
  int currentIndex = 0;
  List<String> names = [
    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350"
  ];
}
