import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paymentapp/constant/colors.dart';
import 'package:paymentapp/constant/textconstant.dart';
import 'package:paymentapp/functions/buttons.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
       padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Money Transfer",
          style: GoogleFonts.spectral(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
          TextButton.icon(onPressed: (){},
           style: TextButton.styleFrom(
                elevation: null,
                primary: Colors.white70,
                backgroundColor: const Color.fromARGB(111, 158, 158, 158),
                padding: const EdgeInsets.all(3),
                minimumSize: Size.zero,
              ),
           icon: const Text(
              'More',
              style: TextStyle(fontSize: 12),
              ),
               label: const Icon(
                Icons.arrow_forward_ios,
                size: 10,
              ),),
          ],
      ),const SizedBox(height: 15,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      hometabbutton(Colors.deepPurple,
                       'Scan QR Code', 
                       const Icon(Icons.qr_code_scanner)),
                       const SizedBox(width: 15,),
                       hometabbutton(Colors.green,
                       'Send To Contact', 
                      const  Icon(Icons.person_add_alt_outlined)),
                    ],
                  ),const SizedBox(height: 20,),
                  Row(
                    children: [
                      hometabbutton(Color(ColorConstant.color6),
                       'Send To Bank',
                    const Icon(Icons.account_balance_outlined)),
                    const SizedBox(
                    width: 15,
                ),
                hometabbutton(
                    Colors.purple, 'Self Transfer', const Icon(Icons.sync)),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(TextConstant.text18,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.spectral(
                       fontSize: 18,
                       fontWeight: FontWeight.bold,
                       color: Colors.white
                      ),),
                      TextButton.icon(onPressed: (){}, 
                      style: TextButton.styleFrom(
                       elevation: null,
                        primary: Colors.white70,
                      backgroundColor: const Color.fromARGB(111, 158, 158, 158),
                     padding: const EdgeInsets.all(3),
                      minimumSize: Size.zero,
                    ),
                      icon:  const Text(
                          'More',
                       style: TextStyle(fontSize: 12),
                      ),
                      label: const Icon(
                      Icons.arrow_forward_ios,
                          size: 10,
                   ),)
                    ],
                  ),
               const SizedBox(height: 15,),
               Column(
                children: [
                  Row(
                    children: [
                       hometabbutton(Color(ColorConstant.color12), 'Mobile Recharge',
                    const Icon(Icons.phone_android)),
                const SizedBox(
                  width: 15,
                ),
                hometabbutton(
                    Color(ColorConstant.color14), 'Electricity Bill', const Icon(Icons.sunny)),
                    ],
                  ),
                 const SizedBox(height: 20,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     hometabbutton(Color(ColorConstant.color16), 'DTH Recharge',
                    const Icon(Icons.play_circle_outline)),
                const SizedBox(
                  width: 15,
                ),
                hometabbutton(Color(ColorConstant.color18), 'Postpaid Bill',
                    const Icon(Icons.receipt_long)),
                  ],
                 ),
                ],
               ),const SizedBox(height: 15,),
               Row(
                children: [
                  Text(TextConstant.text19,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.spectral(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),)
                ],
               ),
               const SizedBox(height: 15,),
               Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    TicketButton(Icons.movie_creation_outlined, 'Movies', ),
                  const SizedBox(width: 15,),
                    TicketButton(Icons.train_outlined, 'Trains'),
                     const SizedBox(width: 15,),
                    TicketButton(Icons.directions_bus_rounded, 'Bus'),
                    const SizedBox(width: 15,),
                    TicketButton(Icons.flight, 'Flights'),
                    const SizedBox(width: 15,),
                    TicketButton(Icons.directions_car_rounded, 'Car'),
                    ],
                  )
                ],
               ),
                ],
              ),const SizedBox(height: 15,),
               Text(TextConstant.text25,
               textAlign: TextAlign.left,
               style: GoogleFonts.spectral(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
           ),),const SizedBox(height: 15,),
           Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TicketButton(Icons.insert_chart_outlined_sharp, 'Invest'),
                const SizedBox(
                  width: 10,
                ),
                TicketButton(Icons.attach_money, 'Loan'),
                const SizedBox(
                  width: 10,
                ),
                TicketButton(Icons.health_and_safety_rounded, 'Insurance'),
                const SizedBox(
                  width: 10,
                ),
                TicketButton(Icons.minor_crash, 'Fastag'),
                const SizedBox(
                  width: 10,
                ),
                ],
              )
            ],
           ),
           const SizedBox(height: 20,),
               Text(TextConstant.text30,
               textAlign: TextAlign.left,
               style: GoogleFonts.spectral(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
           ),),const SizedBox(height: 20,),
           Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Transactions('Superman',
                    'https://cdn.theatlantic.com/thumbor/cTP7DsiUyI81zFg8c-FDnIoCBhA=/540x0:2340x1800/540x540/media/img/mt/2016/01/superman/original.jpg'),
                const SizedBox(
                  width: 10,
                ),Transactions('Ironman',
                    'https://images.unsplash.com/photo-1623984109622-f9c970ba32fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aXJvbm1hbnxlbnwwfHwwfHw%3D&w=1000&q=80'),
                const SizedBox(
                  width: 10,
                ),
                Transactions('Peter',
                    'https://images.unsplash.com/photo-1635805737707-575885ab0820?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                const SizedBox(
                  width: 10,
                ),
                Transactions('Natasha',
                    'https://i.guim.co.uk/img/media/c3d1d8324ea3d9adb3ea91dd5a71c1760a948d6f/0_78_2861_1716/master/2861.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=48836a651742d22fb36f967767c0c94e'),
                const SizedBox(
                  width: 10,
                ),
                Transactions('Steve',
                    'https://www.ed92.org/wp-content/uploads/2021/06/captain-america-2-scaled.jpg')
                ],
              )
            ],
           ),const SizedBox(height: 40,)
    ],
    );
  }
}