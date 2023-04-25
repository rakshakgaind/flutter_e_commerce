import 'package:demo_e_commenrce/providers_controller/product_detail_controller.dart';
import 'package:demo_e_commenrce/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imageview360/imageview360.dart';
import 'package:provider/provider.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  List<ImageProvider> imageList = <ImageProvider>[];
  bool autoRotate = true;
  int rotationCount = 2;
  int swipeSensitivity = 2;
  bool allowSwipeToRotate = true;
  RotationDirection rotationDirection = RotationDirection.anticlockwise;
  Duration frameChangeDuration = const Duration(milliseconds: 50);
  bool imagePrecached = false;
  int number = 1;

  /// method to update assets images------>
  void updateImageList(BuildContext context) async {
    for (int i = 1; i <= 52; i++) {
      imageList.add(AssetImage('assets/images/$i.png'));

      ///* To precache images so that when required they are loaded faster.
      await precacheImage(AssetImage('assets/images/$i.png'), context);
    }
    setState(() {
      imagePrecached = true;
    });
  }

  @override
  void initState() {
    ///* To load images from assets after first frame build up.
    WidgetsBinding.instance
        .addPostFrameCallback((_) => updateImageList(context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductDetailController>(
      builder: (context, productDetailController, child) {

        debugPrint("<-----product detail screen--->");
        return SafeArea(
            child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("Product Detail",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                    fontWeight: FontWeight.w100)),
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
            actions: [
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width / 15),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width / 20),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.share,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Material(
                    elevation: 9.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        alignment: Alignment.center,
                        //    width: MediaQuery.of(context).size.height / 2,
                        //   height: MediaQuery.of(context).size.height / 3,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 12),
                          child: Container(
                            child: (imagePrecached == true)
                                ? ImageView360(
                                    key: UniqueKey(),
                                    imageList: imageList,
                                    autoRotate: autoRotate,
                                    rotationCount: 1,
                                    rotationDirection: RotationDirection.clockwise,
                                    frameChangeDuration:
                                        const Duration(milliseconds: 35),
                                    swipeSensitivity: swipeSensitivity,
                                    allowSwipeToRotate: allowSwipeToRotate,
                                    /*  onImageIndexChanged: (currentImageIndex) {
                            print("currentImageIndex: $currentImageIndex");
                          },*/
                                  )
                                : const CircularProgressIndicator(),
                          ),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 50),
                      child: Text(
                        "Ceramic",
                        style: TextStyle(
                            fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                            fontWeight: FontWeight.w100),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 50),
                      child: Text(
                        "Maruti Suzuki Ciaz",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 40,
                            fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Material(
                        elevation: 9.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height / 20,
                            width: MediaQuery.of(context).size.height / 7,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    if (number > 1) {
                                      number--;
                                      setState(() {});
                                    }
                                    debugPrint("<----number--->$number");
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              30,
                                      width:
                                          MediaQuery.of(context).size.height /
                                              20,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Text("-",
                                          style: TextStyle(
                                              fontFamily:
                                                  GoogleFonts.abhayaLibre()
                                                      .fontFamily,
                                              fontWeight: FontWeight.w100,
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  40))),
                                ),
                                Text(number.toString(),
                                    style: TextStyle(
                                        fontFamily: GoogleFonts.abhayaLibre()
                                            .fontFamily,
                                        fontWeight: FontWeight.bold)),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {});
                                    if (number >= 1) {
                                      setState(() {});
                                      number++;
                                      productDetailController.notifyListeners();
                                    }
                                  },
                                  child: Container(
                                      alignment: Alignment.center,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              30,
                                      width:
                                          MediaQuery.of(context).size.height /
                                              20,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Text(
                                        "+",
                                        style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.abhayaLibre()
                                                    .fontFamily,
                                            fontWeight: FontWeight.w100,
                                            fontSize: MediaQuery.of(context)
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
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 50),
                      child: const Icon(
                        Icons.star,
                        color: Colors.orangeAccent,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 50),
                      child: Text(
                        "4.2",
                        style: TextStyle(
                            fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                            fontWeight: FontWeight.w100),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Image result for ciaz car The Ciaz is a premium sedan from NEXA that combines the best of premium looks, revolutionary technology and luxury. It's innovative at its heart, it's elegant from the outside and indulgent from the inside",
                    style: TextStyle(
                        fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 50,
                          top: MediaQuery.of(context).size.height / 80),
                      child: Text(
                        "Frequently Bought Together",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.height / 40,
                            fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 80,
                      left: MediaQuery.of(context).size.width / 35,
                      right: MediaQuery.of(context).size.width / 35),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 4.7,
                    child: ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: productDetailController.productList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            elevation: 6.0,
                            borderRadius: BorderRadius.circular(10),
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.height / 7,
                                  height: MediaQuery.of(context).size.height / 7,
                                  decoration: BoxDecoration(color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(productDetailController.productList[index].image)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    productDetailController.productList[index].productName,
                                    style: TextStyle(fontFamily: GoogleFonts.abhayaLibre().fontFamily,),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Price",
                              style: TextStyle(
                                  fontFamily:
                                      GoogleFonts.abhayaLibre().fontFamily,
                                  fontWeight: FontWeight.w100)),
                          Text("\$ 11",
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.height / 30,
                                  fontFamily:
                                      GoogleFonts.abhayaLibre().fontFamily,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const CartScreen(),
                              ));
                        },
                        child: Material(
                          elevation: 9.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height / 20,
                            width: MediaQuery.of(context).size.height / 4,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Text("+ Add to Cart",
                                style: TextStyle(
                                    fontFamily:
                                        GoogleFonts.abhayaLibre().fontFamily,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
      },
    );
  }
}
