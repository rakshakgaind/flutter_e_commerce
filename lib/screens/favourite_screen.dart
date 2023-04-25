import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../models/home_screen_model.dart';
import '../providers_controller/cart_screen_controller.dart';
import '../providers_controller/home_screen_controller.dart';

class Sliver extends StatefulWidget {
  const Sliver({Key? key}) : super(key: key);

  @override
  State<Sliver> createState() => _SliverState();
}

class _SliverState extends State<Sliver> {
 
  
  
  List<CartModel> productList=[];
  int number=1;
  bool isSelected=true;
 
  @override
  void initState() {
    productList.add(CartModel(image: "assets/images/chair.jpeg", isSelected: isSelected, productName: "Chair", number: number));
    productList.add(CartModel(image: "assets/images/sofa2.webp", isSelected: isSelected, productName: "Sofa",number: number));
    productList.add(CartModel(image: "assets/images/tables.webp", isSelected: isSelected, productName: "Table",number: number));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          physics: const NeverScrollableScrollPhysics(),
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.orangeAccent,
                expandedHeight: 200.0,
                floating: true,
                pinned: true,
                bottom: null,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text("Favourites",
                        style: TextStyle(
                            fontFamily:
                            GoogleFonts.abhayaLibre().fontFamily,
                            fontWeight: FontWeight.bold,
                            fontSize:
                            MediaQuery.of(context).size.height / 30)),
                  ),
                  background: Consumer<HomeScreenController>(
                    builder: (BuildContext context, value, Widget? child) {
                      return CarouselSlider(
                        options: CarouselOptions(
                          enlargeCenterPage: false,
                          onPageChanged: (index, _) {
                            setState(() {});
                            value.currentIndex = index;
                          },
                          initialPage: value.currentIndex,
                          autoPlay: true,
                          height: MediaQuery.of(context).size.height / 3,
                        ),
                        items: value.names.map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Image.network(
                                i,
                                width:
                                MediaQuery.of(context).size.width / 1,
                                fit: BoxFit.cover,
                              );
                            },
                          );
                        }).toList(),
                      );
                    },
                  ),
                ),
              ),
            ];
          },
          body:  ListView(
            padding: const EdgeInsets.only(bottom: 60),
            shrinkWrap: true,
            children: [
              Consumer<CartScreenController>(
                builder: (context, cartScreenController, child) {
                  return ListView.builder(
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
                                            width: MediaQuery.of(context).size.height / 7,
                                            height: MediaQuery.of(context).size.height / 7,
                                            decoration: BoxDecoration(color: Colors.blueGrey.shade50,
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
                                              Icon(Icons.favorite,color: Colors.red,)
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
                  );
                },
              ),
            ],
          )
      ),
    );
  }
}