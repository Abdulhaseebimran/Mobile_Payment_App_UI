import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paymentapp/constant/colors.dart';

class Recieve extends StatelessWidget {
  const Recieve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Container(
             margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(16.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                  color: Color(ColorConstant.color19),
                  borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                           Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Receive Money',
                            style: GoogleFonts.lato(
                              fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white
                            )
                          ),),const SizedBox(width: 100,),
                           Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.highlight_remove_rounded),
                            color: Colors.white,
                          ),),
                        ],
                      ),const SizedBox(height: 10,),
                      Container(
                         height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Color(ColorConstant.color19),
                          width: 8.0),
                      borderRadius: BorderRadius.circular(25.0),
                     ),
                     child: const 
                    Image(image: AssetImage("assets/images/qrcode1.png"),
                    fit: BoxFit.cover,),
                      )
                    ],
                  ),
          ), Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Other Options",
                    style: GoogleFonts.lato(
                      fontSize: 20, fontWeight: FontWeight.bold,
                      color: Colors.white
                    )
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                   DefaultTextStyle(
                    style: GoogleFonts.lato(fontWeight: FontWeight.bold, color: Colors.white),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Color(ColorConstant.color19),
                        borderRadius: BorderRadius.circular(10),
                      ),child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Your Pay ID",
                          style: GoogleFonts.lato(
                            fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white
                          ),), Row(
                            children: [
                              Text(
                                "xyz@524899652",
                                style: GoogleFonts.lato(
                                  fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white
                                )),
                              const SizedBox(width: 10),
                               IconButton(
                                  onPressed: () {
                                    Clipboard.setData(
                                            ClipboardData(text: ""))
                                        .then((result) {
                                      const snackBar = SnackBar(
                                        backgroundColor: Colors.white,
                                        behavior: SnackBarBehavior.floating,
                                        margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
                                        content: Text(
                                          'Copied to Clipboard',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      );
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.copy,
                                    color: Colors.white,
                                  )),
                        ],
                      ), 
                ])),
              ),const SizedBox(height: 15),
                       SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(left: 20, right: 10),
                          primary: Colors.white,
                          backgroundColor: Color(ColorConstant.color19),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Show bank account details',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        )),),
              ]
        )
      ),
    ])
  ));
  }
}