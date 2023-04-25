import 'package:demo_e_commenrce/providers_controller/cart_screen_controller.dart';
import 'package:demo_e_commenrce/screens/address_screen.dart';
import 'package:demo_e_commenrce/screens/payment_method.dart';
import 'package:demo_e_commenrce/screens/payment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../models/home_screen_model.dart';


class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

List<String> indexList = [];

List<CartModel> productList=[];
int number=1;
bool isSelected=true;


class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    productList.add(CartModel(image: "assets/images/chair.jpeg", isSelected: isSelected, productName: "Chair", number: number));
    productList.add(CartModel(image: "assets/images/sofa2.webp", isSelected: isSelected, productName: "Sofa",number: number));
    productList.add(CartModel(image: "assets/images/tables.webp", isSelected: isSelected, productName: "Table",number: number));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CartScreenController>(builder: (context, value, child) {

      return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
              backgroundColor: Colors.white70,
              elevation: 0,
              title: Text("Cart Screen",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                      fontWeight: FontWeight.w100)),
            ),
            body: ListView(
              padding: const EdgeInsets.only(bottom: 60),
              shrinkWrap: true,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    children: [
                      Text(
                        "My Cart",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 40,
                          fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                        ),
                      )
                    ],
                  ),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        bottom: 10,
                      ),
                      child: Material(
                        // elevation: 9.0,
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          width: MediaQuery.of(context).size.height / 2,
                          height: MediaQuery.of(context).size.height / 6.1,
                          decoration: BoxDecoration(
                            // color: Colors.blueGrey.shade50,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Consumer<CartScreenController>(
                            builder: (context, cartScreenController, child) {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Material(
                                        elevation: 0.0,
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                          alignment: Alignment.center,
                                          width:
                                          MediaQuery.of(context).size.height /
                                              7,
                                          height:
                                          MediaQuery.of(context).size.height /
                                              7,
                                          decoration: BoxDecoration(
                                            color: Colors.blueGrey.shade50,
                                            borderRadius:
                                            BorderRadius.circular(8.0),
                                          ),
                                          child: ClipRRect(
                                              borderRadius:
                                              BorderRadius.circular(8),
                                              child: Image.asset(
                                                productList[index].image,
                                                height: MediaQuery.of(context).size.height / 2,
                                                width: MediaQuery.of(context).size.height /5,
                                                fit: BoxFit.fill,
                                              )),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                      3,
                                                  child: Text(
                                                    "A chair is a type of seat,Made with wood",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontFamily: GoogleFonts
                                                          .abhayaLibre()
                                                          .fontFamily,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "\$ 11.00(\+\$4.00 Tax)",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w100,
                                                fontFamily:
                                                GoogleFonts.abhayaLibre()
                                                    .fontFamily,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: Material(
                                                elevation: 0.0,
                                                borderRadius:
                                                BorderRadius.circular(20),
                                                child: Container(
                                                    alignment: Alignment.center,
                                                    height: MediaQuery.of(context).size.height / 20,
                                                    width: MediaQuery.of(context).size.height / 7,
                                                    decoration: BoxDecoration(
                                                      color: Colors.orangeAccent,
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            if (productList[index].number > 1){
                                                              productList[index].number--;
                                                              setState(() {});
                                                            }
                                                          },
                                                          child: Container(
                                                              alignment: Alignment
                                                                  .center,
                                                              height: MediaQuery.of(
                                                                  context)
                                                                  .size
                                                                  .height /
                                                                  30,
                                                              width: MediaQuery.of(
                                                                  context)
                                                                  .size
                                                                  .height /
                                                                  20,
                                                              decoration:
                                                              BoxDecoration(
                                                                color:
                                                                Colors.white,
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    20.0),
                                                              ),
                                                              child: Text(
                                                                  "-",
                                                                  style: TextStyle(
                                                                      fontFamily: GoogleFonts.abhayaLibre()
                                                                          .fontFamily,
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w100,
                                                                      fontSize: MediaQuery.of(context)
                                                                          .size
                                                                          .height /
                                                                          40))),
                                                        ),
                                                        Text(
                                                            productList[index].number
                                                                .toString(),
                                                            style: TextStyle(
                                                                fontFamily: GoogleFonts
                                                                    .abhayaLibre()
                                                                    .fontFamily,
                                                                fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {});
                                                            if (productList[index].number >= 1) {
                                                              setState(() {});
                                                              productList[index].number++;
                                                            }
                                                          },
                                                          child: Container(
                                                              alignment: Alignment
                                                                  .center,
                                                              height: MediaQuery.of(
                                                                  context)
                                                                  .size
                                                                  .height /
                                                                  30,
                                                              width: MediaQuery.of(
                                                                  context)
                                                                  .size
                                                                  .height /
                                                                  20,
                                                              decoration:
                                                              BoxDecoration(
                                                                color:
                                                                Colors.white,
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                    20.0),
                                                              ),
                                                              child: Text(
                                                                "+",
                                                                style: TextStyle(
                                                                    fontFamily: GoogleFonts
                                                                        .abhayaLibre()
                                                                        .fontFamily,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w100,
                                                                    fontSize: MediaQuery.of(
                                                                        context)
                                                                        .size
                                                                        .height /
                                                                        40),
                                                              )),
                                                        ),
                                                      ],
                                                    )),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                      });
                                      productList[index].isSelected = !productList[index].isSelected;
                                      productList.removeAt(index);

                                    },
                                    child: Material(
                                        elevation: 0.0,
                                        borderRadius: BorderRadius.circular(20),
                                        child: const Padding(
                                            padding: EdgeInsets.all(4.0),
                                            child:
                                            Icon(Icons.delete)
                                        )),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
                  child: Row(
                    children: [
                      Text(
                        "Delivery Location",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 40,
                          fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AddressScreen(),));

                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey.shade50,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Icon(
                                Icons.location_on_rounded,
                                size: MediaQuery.of(context).size.height / 40,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("6 Phase Mohalli St.",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                      MediaQuery.of(context).size.height / 60,
                                      fontFamily:
                                      GoogleFonts.abhayaLibre().fontFamily,
                                    )),
                                Text("1743007",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w100,
                                      // fontSize: MediaQuery.of(context).size.height/60,
                                      fontFamily:
                                      GoogleFonts.abhayaLibre().fontFamily,
                                    )),
                              ],
                            ),
                          ],
                        ),
                        const Icon(Icons.near_me)
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Row(
                    children: [
                      Text(
                        "Payment Method",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 40,
                          fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentMethod(),));

                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey.shade50,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Icon(
                                Icons.payment,
                                size: MediaQuery.of(context).size.height / 40,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Visa Classic",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                      MediaQuery.of(context).size.height / 60,
                                      fontFamily:
                                      GoogleFonts.abhayaLibre().fontFamily,
                                    )),
                                Text("****8007",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w100,
                                      // fontSize: MediaQuery.of(context).size.height/60,
                                      fontFamily:
                                      GoogleFonts.abhayaLibre().fontFamily,
                                    )),
                              ],
                            ),
                          ],
                        ),
                        const Icon(Icons.near_me)
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 80),
                  child: Row(
                    children: [
                      Text(
                        "Order Info",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 40,
                          fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal",
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                        ),
                      ),
                      Text(
                        "\$ 199.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shipping Cost",
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                        ),
                      ),
                      Text(
                        "\+\$ 10.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                        ),
                      ),
                      Text(
                        "\$ 209.00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.height / 40,
                          fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentScreen(),));
              },
              child: Material(
                elevation: 4.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 20,
                  width: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text("CheckOut(\$209.00)",
                      style: TextStyle(
                          fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ));

    },);
  }
}
