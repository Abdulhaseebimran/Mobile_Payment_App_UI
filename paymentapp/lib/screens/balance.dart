import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paymentapp/constant/colors.dart';
import 'package:paymentapp/constant/textconstant.dart';
import 'package:paymentapp/functions/buttons.dart';
import 'package:paymentapp/screens/home_page.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        child: Container(
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
         margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 47, 51, 61),
              borderRadius: BorderRadius.circular(25)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Align(
                  alignment: Alignment.topCenter,
                  child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onPressed: (){
                       Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Home()));
                    }, 
                  icon: const Icon(Icons.arrow_circle_left_outlined),
                    color: Colors.white,),
                  ),const Align(
                    alignment: Alignment.topCenter,
                    child: Text("Portfolio Value",
                   style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  ),
                 Align(alignment: Alignment.topRight,
                 child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    onPressed: (){},
                    icon: const Icon(Icons.bar_chart_rounded),
                    color: Colors.white,
                  ),)
                    ],
                  ),Center(
                    child: Text(TextConstant.text37,
                    style: GoogleFonts.raleway(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                  ),
                 const SizedBox(height: 8,),
                 Center(
                  child: Text(TextConstant.text38,
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(ColorConstant.color27))
                  ),
                  ),Container(
                    margin: const EdgeInsets.all(8.0),
                    child: GridView.count(
                    crossAxisCount: 2,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: (1 / 0.8),
                  children: [
                 BalancesAccount(
                        'Federal Bank', 1142524899652, '16,456.05', Color(ColorConstant.color16),),
                    BalancesAccount(
                        'States Bank', 1142524899652, '2045.05', Color(ColorConstant.color24)),
                    BalancesAccount(
                      'Best Bank', 1142521547852, '35873.5', Color(ColorConstant.color28)),
                      IconButton(onPressed: (){}, 
                      icon: const Icon(Icons.arrow_forward_ios_outlined)),
                  ],
                    )
                  ), 
                  TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(
                  primary: Colors.white,
                backgroundColor: const Color.fromARGB(255, 79, 84, 97),
                 shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),) ,
                  child: Text(TextConstant.text48))
                 ])
              ),
      ),
      );
  }
}