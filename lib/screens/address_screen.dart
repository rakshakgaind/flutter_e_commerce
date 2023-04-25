import 'package:demo_e_commenrce/providers_controller/address_screen_controller.dart';
import 'package:demo_e_commenrce/screens/add_new_address.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return  Consumer<AddressScreenController>(builder: (context, addressScreenController, child) {
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
          title: Text("Address Screen",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                  fontWeight: FontWeight.w100)),
        ),

        body: ListView(
          shrinkWrap: true,
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              itemCount: addressScreenController.addressList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return  GestureDetector(
                  onTap: () {
                    setState(() {});
                    for(int i=0;i<addressScreenController.addressList.length;i++){
                      if(addressScreenController.addressList[index].isSelected){
                        addressScreenController.addressList[i].isSelected=true;
                      }
                    }
                    addressScreenController.addressList[index].isSelected=false;
                  },
                  child: Stack(children: [
                    Column(
                      children: [
                        Material(
                          elevation: 5.0,
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
                                        Text(addressScreenController.addressList[index].userName,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.height / 60, fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                                            )),
                                        Text(addressScreenController.addressList[index].userPhone,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w100,
                                              // fontSize: MediaQuery.of(context).size.height/60,
                                              fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                                            )),
                                        Text(addressScreenController.addressList[index].userAddress,
                                            style: TextStyle(fontWeight: FontWeight.w100,
                                              // fontSize: MediaQuery.of(context).size.height/60,
                                              fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                                            )),
                                        Text("PIN CODE : ${addressScreenController.addressList[index].userPinCode}",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w100,
                                              // fontSize: MediaQuery.of(context).size.height/60,
                                              fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                                !addressScreenController.addressList[index].isSelected ?
                                const Icon(Icons.check_circle,
                                ) : const Icon(Icons.circle_outlined)

                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,)
                      ],
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.height/2.23,
                      child: InkWell(
                        onTap:  () {
                            setState(() {});
                          addressScreenController.addressList.removeAt(index);
                        },
                        child: const Icon(Icons.cancel),
                      ),
                    )
                  ],),
                );
              },),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AddNewAddress(),));
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.orangeAccent, borderRadius: BorderRadius.circular(10)), margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10,bottom: 10),
                child: Column(
                  children:  [
                    const Icon(Icons.add),
                    Text("Add new address", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.height / 60,
                      fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                    ))
                  ],
                ),
              ),
            ),

          ],),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: GestureDetector(
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
              child: Text("Continue", style: TextStyle(fontFamily: GoogleFonts.abhayaLibre().fontFamily, fontWeight: FontWeight.bold)),
            ),
          ),
        ),

      ));
    },);
  }
}
