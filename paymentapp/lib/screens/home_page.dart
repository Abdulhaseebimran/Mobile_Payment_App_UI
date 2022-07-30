import 'package:flutter/material.dart';
import 'package:paymentapp/constant/colors.dart';
import 'package:paymentapp/screens/balance.dart';
import 'package:paymentapp/screens/home_tab.dart';
import 'package:paymentapp/screens/notification.dart';
import 'package:paymentapp/screens/offers.dart';
import 'package:paymentapp/screens/profile.dart';
import 'package:paymentapp/screens/recieve_money.dart';
import 'package:paymentapp/screens/rewards.dart';

class Home extends StatefulWidget {
 const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

   TextEditingController tabController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20),
          bottomLeft: Radius.circular(20)),
          ),
          elevation: 0.0,
          backgroundColor: Color(ColorConstant.basecolor),
          leading: Padding(
            padding: EdgeInsets.only(left: 16.0),
           child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
              child: const CircleAvatar(
                child: ClipOval(
                    child: Image(image: AssetImage('assets/images/profile.png'))),
              ),
            ),),
            title: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(100, 176, 190, 197),
              borderRadius: BorderRadius.circular(25),
            ),height: 40,
            child: TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  hintText: " Search Users, ID's etc",
                  hintStyle: const TextStyle(color: Colors.white),
                  isDense: true,
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                  suffixIcon: IconButton(
                    color: Colors.white,
                    iconSize: 25,
                    icon: const Icon(Icons.search),
                    onPressed: () {

                    },
                  )),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          actions: [
             Padding(
              padding:const EdgeInsets.only(right: 16),
               child: CircleAvatar(
                radius: 20,
                backgroundColor: Color(ColorConstant.grey2),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Notifications()));
                  },
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
              ),
              ),
          ], bottom: TabBar(
            // controller: _tabController,
            labelColor: Color(ColorConstant.white),
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 4.0, color: Color.fromARGB(255, 153, 153, 153)),
            ),
            tabs: const [
              Tab(
              iconMargin: EdgeInsets.all(0),
              text: 'Home',
              ),
              Tab(
                text: "Balance",
              ),
              Tab(
                text: "Offers",
              ),
              Tab(
                text: "Rewards",
              )
            ]),
        ),floatingActionButton: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // <-- Radius
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Recieve()));
        },
        backgroundColor: Color(ColorConstant.blue),
        label: const Text('Receive Money'),
      ),
        body: Container(
          child: TabBarView(
            children: [
           HomeTab(),
           Balance(),
           Offers(),
           Rewards(),
       ]),
        ),
        ), 
     );
  }
}