import 'package:demo_e_commenrce/providers_controller/add_new_address.dart';
import 'package:demo_e_commenrce/providers_controller/address_screen_controller.dart';
import 'package:demo_e_commenrce/providers_controller/cart_screen_controller.dart';
import 'package:demo_e_commenrce/providers_controller/home_screen_controller.dart';
import 'package:demo_e_commenrce/providers_controller/payment_method_screen_controller.dart';
import 'package:demo_e_commenrce/providers_controller/payment_screen_controller.dart';
import 'package:demo_e_commenrce/providers_controller/product_detail_controller.dart';
import 'package:demo_e_commenrce/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:provider/provider.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // set the publishable key for Stripe - this is mandatory
  Stripe.publishableKey = "pk_test_51MEVh8AlS7nJXeGf8pOz2e3fx7aQIZS8G84uQHJRHrqozKdJJch79N9zU0lmRiSiQWwRfe5QSEuks9kaUXp8Yzpv008evPgzaI";
  Stripe.urlScheme = 'flutterstripe';
  await Stripe.instance.applySettings();


  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<HomeScreenController>(create: (context) => HomeScreenController()),
    ChangeNotifierProvider<ProductDetailController>(create: (context) => ProductDetailController()),
    ChangeNotifierProvider<CartScreenController>(create: (context) => CartScreenController()),
    ChangeNotifierProvider<AddressScreenController>(create: (context) => AddressScreenController()),
    ChangeNotifierProvider<AddNewAddressScreenController>(create: (context) => AddNewAddressScreenController()),
    ChangeNotifierProvider<PaymentMethodScreenController>(create: (context) => PaymentMethodScreenController()),
    ChangeNotifierProvider<PaymentScreenController>(create: (context) => PaymentScreenController()),
  ],
  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      ),
      home:  const HomeScreen(),
    );
  }
}


