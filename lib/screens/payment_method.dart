import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_e_commenrce/providers_controller/payment_method_screen_controller.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PaymentMethodScreenController>(builder: (context, paymentScreenController, child) {
      return SafeArea(child: Scaffold(
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
          title: Text("Payment Method",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                  fontWeight: FontWeight.w100)),
        ),
        body: ListView(children: [
          CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: true,
              onPageChanged: (index, _) {
                  setState(() {});
                  paymentScreenController.currentIndex=index;
                },
                initialPage: paymentScreenController.currentIndex,
                autoPlay: true,
                height: MediaQuery.of(context).size.height/3,
            ),
            items: paymentScreenController.names.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Image.asset(i,width: MediaQuery.of(context).size.width/1,);
                },
              );
            }).toList(),
          ),
          DotsIndicator(
            decorator: DotsDecorator(
              size: const Size.square(5.0),
              activeSize: const Size(14.0, 4.0),
              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
            ),
            dotsCount: paymentScreenController.names.length,
            position: paymentScreenController.currentIndex.toDouble(),
          ),
          const SizedBox(height: 20,),
           Center(child: Text("Other Payment Methods",style: TextStyle(
            fontWeight: FontWeight.w800,
            // fontSize: MediaQuery.of(context).size.height/60,
            fontFamily:
            GoogleFonts.abhayaLibre().fontFamily,
          ))),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(10),
            itemCount: paymentScreenController.paymentMethods.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return  GestureDetector(
                onTap: () {
                  setState(() {});
                  for(int i=0;i<paymentScreenController.paymentMethods.length;i++){
                    if(paymentScreenController.paymentMethods[index].isSelected){
                      paymentScreenController.paymentMethods[i].isSelected=true;
                    }
                  }   paymentScreenController.paymentMethods[index].isSelected=false;

                },
                child: Column(
                  children: [
                    Material(
                      elevation: 1.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 10,bottom: 10),
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
                                  child: Image.asset(paymentScreenController.paymentMethods[index].image),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              Text(paymentScreenController.paymentMethods[index].paymentMethodName,style: TextStyle(
                                fontWeight: FontWeight.w100,
                                // fontSize: MediaQuery.of(context).size.height/60,
                                fontFamily:
                                GoogleFonts.abhayaLibre().fontFamily,
                              )),
                              ],
                            ),
                            !paymentScreenController.paymentMethods[index].isSelected ?
                            const Icon(Icons.check_circle,
                            ) : const Icon(Icons.circle_outlined)

                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,)
                  ],
                ),
              );
            },),
        ],),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text("Add Card",
                    style: TextStyle(
                        fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ),
      ));
    },);

  }
}
