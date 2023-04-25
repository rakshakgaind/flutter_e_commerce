class ProductModel {
  String image = "";
  String productName = "";
  bool isSelected = false;

  ProductModel(
      {required this.image,
      required this.isSelected,
      required this.productName});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(image: '', isSelected: false, productName: '');
  }
}

class CartModel {
  String image = "";
  String productName = "";
  bool isSelected = false;
  int number = 0;

  CartModel(
      {required this.image,
      required this.isSelected,
      required this.number,
      required this.productName});

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(image: '', isSelected: false, productName: '', number: 0);
  }
}

class AddressModel {
  String userName = "";
  String userPhone = "";
  String userPinCode = "";
  String userAddress = "";
  bool isSelected = false;

  AddressModel(
      {required this.isSelected,
      required this.userAddress,
      required this.userName,
      required this.userPhone,
      required this.userPinCode});

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
        isSelected: false,
        userAddress: '',
        userName: '',
        userPhone: '',
        userPinCode: '');
  }
}

class AddressType {
  String address = "";

  bool isSelected = false;

  AddressType({required this.isSelected, required this.address});

  factory AddressType.fromJson(Map<String, dynamic> json) {
    return AddressType(isSelected: false, address: "");
  }
}

class PaymentMethodModel {
  String paymentMethodName="";
  String image="";
  bool isSelected=false;

  PaymentMethodModel({required this.isSelected,required this.image,required this.paymentMethodName});

  factory PaymentMethodModel.fromJson(Map<String, dynamic> json) {
    return PaymentMethodModel(isSelected: false, image: '', paymentMethodName: ''
        );
  }
}


class CategoryModel {
  String image = "";
  String productName = "";
  bool isSelected = false;

  CategoryModel(
      {required this.image,
        required this.isSelected,
        required this.productName});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(image: '', isSelected: false, productName: '');
  }
}