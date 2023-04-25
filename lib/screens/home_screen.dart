import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo_e_commenrce/providers_controller/home_screen_controller.dart';
import 'package:demo_e_commenrce/screens/cart_screen.dart';
import 'package:demo_e_commenrce/screens/product_detail_screen.dart';
import 'package:demo_e_commenrce/screens/favourite_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeScreenController>(
      builder: (context, homeScreenController, child) {
        return SafeArea(
            child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: Colors.white,
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                 DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.orangeAccent,
                  ),
                  child: Center(
                    child: Text(
                      'Dukaan',
                      style: TextStyle(
                        color: Colors.white,
                          fontFamily:
                          GoogleFonts.abhayaLibre().fontFamily,
                          fontWeight: FontWeight.bold,
                        fontSize: 30
                     ),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.favorite),
                  title:  Text('Favourites',
                      style: TextStyle(
                          fontFamily:
                          GoogleFonts.abhayaLibre().fontFamily,
                          fontWeight: FontWeight.bold,
                          )
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Sliver(),));
                    // Do something
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.card_travel),
                  title:  Text('Cart',
                      style: TextStyle(
                          fontFamily:
                          GoogleFonts.abhayaLibre().fontFamily,
                          fontWeight: FontWeight.bold,
                         )
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreen(),));
                    // Do something
                  },
                ),
              ],
            ),
          ),
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
                        child: Text("Home Screen",
                            style: TextStyle(
                                fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.height / 30)),
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
                                    width: MediaQuery.of(context).size.width / 1,
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
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.height / 50,
                              top: MediaQuery.of(context).size.height / 40),
                          child: Text("Explore a wide\nselection of Handicrafts",
                            style: TextStyle(
                                fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.height / 30),
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
                          padding: EdgeInsets.zero,
                          itemCount: homeScreenController.productList.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductDetail(),));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Material(
                                  elevation: 6.0,
                                  borderRadius: BorderRadius.circular(10),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.height / 7,
                                        height: MediaQuery.of(context).size.height / 7,
                                        decoration: BoxDecoration(
                                          color: Colors.blueGrey,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            child: Image.asset(
                                                homeScreenController
                                                    .productList[index].image)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          homeScreenController
                                              .productList[index].productName,
                                          style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.abhayaLibre()
                                                    .fontFamily,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Consumer<HomeScreenController>(
                      builder: (context, value, child) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 40,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: value.categoryList.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {});
                                    for (int i = 0; i < value.categoryList.length;
                                        i++) {
                                      if (value.categoryList[index].isSelected) {
                                        value.categoryList[i].isSelected = true;
                                      }
                                    }
                                    value.categoryList[index].isSelected = false;
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color: value.categoryList[index].isSelected
                                                ? Colors.orangeAccent.shade100
                                                : Colors.orangeAccent,
                                            borderRadius: BorderRadius.circular(20)),
                                        // height: 200,
                                        width: 100,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, bottom: 5),
                                          child: Row(
                                            children: [
                                              CircleAvatar(
                                                backgroundImage: AssetImage(
                                                  value.categoryList[index]
                                                      .image,
                                                ),
                                              ),
                                              Text(
                                                  value.categoryList[index]
                                                      .productName,
                                                  style: TextStyle(
                                                      fontFamily: GoogleFonts
                                                              .abhayaLibre()
                                                          .fontFamily,
                                                      fontWeight:
                                                          FontWeight.w100)),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.height / 50,
                              top: MediaQuery.of(context).size.height / 40),
                          child: Text(
                            "Top Products",
                            style: TextStyle(
                                fontFamily:
                                    GoogleFonts.abhayaLibre().fontFamily,
                                fontWeight: FontWeight.bold,
                                fontSize:
                                    MediaQuery.of(context).size.height / 40),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 80,
                          left: MediaQuery.of(context).size.width / 35,
                          right: MediaQuery.of(context).size.width / 35,
                          bottom: MediaQuery.of(context).size.height / 2),
                      child: GridView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: homeScreenController.productList.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 180,
                                crossAxisCount: 2,
                                mainAxisSpacing: 30.0,
                                crossAxisSpacing: 30.0,
                                childAspectRatio: 25 / 10),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ProductDetail(),
                                  ));
                            },
                            child: Material(
                              borderRadius: BorderRadius.circular(10),
                              elevation: 9.0,
                              child: Container(
                                // width: MediaQuery.of(context).size.height / 4.8,
                                // height: MediaQuery.of(context).size.height / 4.4,
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade50,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.transparent,
                                            radius: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                15,
                                            backgroundImage: const AssetImage(
                                                "assets/images/chair-removebg-preview.png"),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "Weaving",
                                        style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.abhayaLibre()
                                                    .fontFamily,
                                            fontWeight: FontWeight.w100),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                80,
                                            right: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                80),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              homeScreenController
                                                  .productList[index]
                                                  .productName,
                                              style: TextStyle(
                                                  fontFamily:
                                                      GoogleFonts.abhayaLibre()
                                                          .fontFamily,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                setState(() {});
                                                homeScreenController
                                                        .productList[index]
                                                        .isSelected =
                                                    !homeScreenController
                                                        .productList[index]
                                                        .isSelected;
                                              },
                                              child: homeScreenController
                                                      .productList[index]
                                                      .isSelected
                                                  ? const Icon(
                                                      Icons
                                                          .favorite_border_rounded,
                                                    )
                                                  : const Icon(
                                                      Icons.favorite,
                                                      color: Colors.red,
                                                    ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                80,
                                            right: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                80),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "\$ 11",
                                              style: TextStyle(
                                                  fontFamily:
                                                      GoogleFonts.abhayaLibre()
                                                          .fontFamily,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.orangeAccent,
                                                ),
                                                Text(
                                                  "4.2",
                                                  style: TextStyle(
                                                    fontFamily: GoogleFonts
                                                            .abhayaLibre()
                                                        .fontFamily,
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              )),
        ));
      },
    );
  }
}
