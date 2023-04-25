import 'package:demo_e_commenrce/providers_controller/add_new_address.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  State<AddNewAddress> createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AddNewAddressScreenController>(builder: (context, addNewAddressController, child) {
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
          title: Text("Add new address",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                  fontWeight: FontWeight.w100)),
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              elevation: 2.0,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Add NEW Address",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize:
                          MediaQuery.of(context).size.height / 45,
                          fontFamily:
                          GoogleFonts.abhayaLibre().fontFamily,
                        )),
                    const SizedBox(height: 10,),
                    Text("Your Location",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          // fontSize: MediaQuery.of(context).size.height/60,
                          fontFamily:
                          GoogleFonts.abhayaLibre().fontFamily,
                        )),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Ray Super Market Mohalli",
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              // fontSize: MediaQuery.of(context).size.height/60,
                              fontFamily:
                              GoogleFonts.abhayaLibre().fontFamily,
                            )),
                        GestureDetector(
                          onTap: () {},
                          child: Text("Change",
                              style: TextStyle(
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.w800,
                                // fontSize: MediaQuery.of(context).size.height/60,
                                fontFamily:
                                GoogleFonts.abhayaLibre().fontFamily,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
            Padding(
               padding: const EdgeInsets.all(10.0),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Flexible(
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle:  TextStyle(color: Colors.grey,fontFamily: GoogleFonts.abhayaLibre().fontFamily),
                            hintText: "First Name",
                            fillColor: Colors.white70)
                    ),
                  ),
                  const SizedBox(width: 20.0,),
                  Flexible(
                    child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle:  TextStyle(color: Colors.grey,fontFamily: GoogleFonts.abhayaLibre().fontFamily),
                            hintText: "Last Name",
                            fillColor: Colors.white70)
                    ),
                  ),

                ],
            ),
             ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle:  TextStyle(color: Colors.grey,fontFamily: GoogleFonts.abhayaLibre().fontFamily),
                      hintText: "Email Address",
                      fillColor: Colors.white70)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle:  TextStyle(color: Colors.grey,fontFamily: GoogleFonts.abhayaLibre().fontFamily),
                      hintText: "Mobile Number",
                      fillColor: Colors.white70)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle:  TextStyle(color: Colors.grey,fontFamily: GoogleFonts.abhayaLibre().fontFamily),
                      hintText: "House No/Flat No/Floor",
                      fillColor: Colors.white70)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle:  TextStyle(
                          fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                          color: Colors.grey),
                      hintText: "Society/Street Name",

                      fillColor: Colors.white70)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: addNewAddressController.addressType.length,
                  itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                      });
                      for(int i=0; i<addNewAddressController.addressType.length; i++){
                        if(addNewAddressController.addressType[index].isSelected){
                          addNewAddressController.addressType[i].isSelected=true;
                        }
                      }addNewAddressController.addressType[index].isSelected=false;
                    },
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: addNewAddressController.addressType[index].isSelected?
                              Colors.orangeAccent.shade100 :  Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(20) ),
                        height: 40,
                        width: 100,
                          child: Text(addNewAddressController.addressType[index].address,
                              style: TextStyle(
                                  fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                                  fontWeight: FontWeight.w100)
                          ),),
                        const SizedBox(width: 10,)
                      ],
                    ),
                  );
                },),
              ),
            )
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
              child: Text("Save Address",
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
