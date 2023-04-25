import 'package:demo_e_commenrce/providers_controller/payment_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);
  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}
class _PaymentScreenState extends State<PaymentScreen> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<PaymentScreenController>(builder: (context, value, child) {
      bool keyboardIsOpen = MediaQuery.of(context).viewInsets.bottom != 0;
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
          title: Text("Payment Screen",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                  fontWeight: FontWeight.w100)),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/credit-card.png",width: MediaQuery.of(context).size.width/1,height: 300,),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: const EdgeInsets.all(10),
                    filled: true,
                    hintStyle:  TextStyle(
                        color: Colors.grey,
                        fontFamily: GoogleFonts.abhayaLibre().fontFamily),
                        hintText: "Name on card",
                        fillColor: Colors.grey.shade300)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    contentPadding: const EdgeInsets.all(10),
                    filled: true,
                    hintStyle:  TextStyle(
                        color: Colors.grey,
                        fontFamily: GoogleFonts.abhayaLibre().fontFamily),
                        hintText: "Card number",
                        fillColor: Colors.grey.shade300)
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
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          filled: true,
                          hintStyle:  TextStyle(color: Colors.grey,fontFamily: GoogleFonts.abhayaLibre().fontFamily),
                          hintText: "Expiry date",
                          fillColor: Colors.grey.shade300)
                  ),
                ),
                const SizedBox(width: 20.0,),
                Flexible(
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          contentPadding: const EdgeInsets.all(10),
                          filled: true,
                          hintStyle:  TextStyle(color: Colors.grey,fontFamily: GoogleFonts.abhayaLibre().fontFamily),
                          hintText: "CCV",
                          fillColor: Colors.grey.shade300)
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              setState(() {});
              value.isSelected= !value.isSelected;
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children:[
                  GestureDetector(
                      onTap: () {
                        setState(() {});
                        value.isSelected= !value.isSelected;
                      },
                      child: value.isSelected ?
                      const Icon(Icons.check_circle) : const Icon(Icons.circle_outlined)),
                      const SizedBox(width: 5,),
                  Text("Save card details",style: TextStyle(fontFamily: GoogleFonts.abhayaLibre().fontFamily, fontWeight: FontWeight.bold))],
              ),
            ),
          ),
        ],),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Visibility(
          visible: !keyboardIsOpen,
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text("\$ 22.00",style: TextStyle(
                   fontSize: 25,
                    fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                    fontWeight: FontWeight.bold)),
                GestureDetector(
                  onTap: () {
                  },
                  child: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height / 20,
                      width: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text("Pay",
                          style: TextStyle(
                              fontFamily: GoogleFonts.abhayaLibre().fontFamily,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ));
    },);
  }
}
