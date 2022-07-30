import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paymentapp/constant/colors.dart';
import 'package:paymentapp/screens/home_page.dart';

class LoginImages extends StatelessWidget {
  const LoginImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              // width: MediaQuery.of(context).size.width * 0.1,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/login1.png"), 
                  fit: BoxFit.fill)
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // bottom: 180,
                      top: 240,
                      right: 100,
                      child: SizedBox(
                        // height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width * 0.7,
                        
                        child: const Image(image: AssetImage("assets/images/login3.png"),)
                      ),),
                      Positioned(
                        top: 100,
                        left: 40,
                        child: Text("LOGIN WITH YOUR\n MOBILE PHONE\n NUMBER",
                        style: GoogleFonts.raleway(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(ColorConstant.white)
                        ),
                         ) ),
                 ],
                ),
            ), SizedBox(
              height: 15,
            ), 
            SizedBox(
              width: MediaQuery.of(context).size.width *0.8,
              height: 50,
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Color(ColorConstant.basecolor)
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixText: "+92 ",
                  prefixStyle: GoogleFonts.spaceMono(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(ColorConstant.blue),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                    hintText: " Enter Mobile Number",
                    hintStyle: GoogleFonts.spaceMono(
                     fontSize: 15,
                     fontWeight: FontWeight.bold,
                     color: Color(ColorConstant.grey)
                    )
                ),
              ),
            ), const SizedBox(
              height: 10,
            ), ElevatedButton(onPressed: (){
              Navigator.push(context,   MaterialPageRoute(
                    builder: (context) => const Home(),
                  ),);
            }, style: ElevatedButton.styleFrom(
              fixedSize: const Size(400, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  ),primary: const Color.fromRGBO(77, 93, 250, 1),
            ), 
            child: Text("Verify",
            style: GoogleFonts.spectral(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(ColorConstant.white)
            )
            )), const SizedBox(
              height: 15,
            ), SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text("Your personal details are safe with us",
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(ColorConstant.grey)
              )),
            ), const SizedBox(
              height: 5,
            ), 
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text("Read our Privacy Policy and Terms and Condition",
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(ColorConstant.grey)
              )),
            )
          ],
        );
  }
}