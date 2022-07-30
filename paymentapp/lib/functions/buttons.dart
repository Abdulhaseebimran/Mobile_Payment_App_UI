import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

hometabbutton(Color color, String text, Icon icon) {
  return Expanded(
    child: Container(
      // padding: const EdgeInsets.only(top: 3, bottom: 3, left: 5),
      height: 50,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(12.0)),
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 40,
            color: const Color.fromARGB(123, 0, 0, 0),
            child: IconTheme(
              data: const IconThemeData(color: Colors.white70),
              child: icon,
            ),
          ),
          TextButton(
            style: ElevatedButton.styleFrom()
                .copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
            onPressed: () {},
            child: Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
        ],
      ),
    ),
  );
}

TicketButton(IconData icon, String text) {
  return Expanded(
      child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Container(
          height: 60,
          width: double.maxFinite,
          decoration: const BoxDecoration(
            color: Color(0xFF3F3397),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
            ),
            onPressed: () {},
            child: Icon(
              icon,
              color: const Color(0xffFA4D96),
              size: 30,
            ),
          )),
      const SizedBox(
        height: 5,
      ),
      Text(
        text,
        style: GoogleFonts.spectral(
          fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)
      ),
    ],
  ));
}

Transactions(String name, String link) {
  return Expanded(
      child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Container(
          height: 60,
          width: double.maxFinite,
          decoration: const BoxDecoration(),
          child: CircleAvatar(
            backgroundImage: NetworkImage(link),
          )),
      const SizedBox(
        height: 5,
      ),
      Text(
        name,
        style: const TextStyle(color: Colors.white, fontSize: 13),
      ),
    ],
  ));
}

BalancesAccount(String bank, int accNum, String balance, Color color) {
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      children: [
        Text(
          bank,
          style: const TextStyle(
              fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(
          '$accNum',
          style: const TextStyle(fontSize: 12, color: Colors.white),
        ),
        const SizedBox(height: 10),
        Text(
          '\$$balance',
          style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
      ],
    ),
  );
}

offersButton(
    image, String offer, String code, String description, Color color,) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    padding: const EdgeInsets.all(10),
    height: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: color,
    ),
    child: Row(
      children: [
        Container(
          width: 100,
          child: Center(
              child: Image(image: AssetImage(image))),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                offer,
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  code,
                  style: GoogleFonts.lato(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    letterSpacing: 1,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Flexible(
                child: Text(
                  description,
                  style: GoogleFonts.lato(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  )
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

rewardsCard() {
  return Expanded(
    child: Container(
        margin: const EdgeInsets.all(5),
        height: 100,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          color: Color(0xFF3F3397),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: TextButton(
            style: TextButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
            ),
            onPressed: () {},
            child: const Image(
              image: NetworkImage('https://i.gifer.com/origin/09/09fd35b35da1d556f7716228a16f5b43_w200.webp'),
              width: 50,
            ))),
  );
}

collect(String reward, String description, String image, Color colorr) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(10),
    height: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: colorr,
    ),
    child: Row(
      children: [
        SizedBox(
          width: 100,
          child: Center(
              child: Image(image: AssetImage(image))),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              reward,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              description,
              style: const TextStyle(color: Colors.white, fontSize: 11),
            ),
            TextButton(
                style: TextButton.styleFrom(
                  splashFactory: NoSplash.splashFactory,
                  backgroundColor: Colors.purple,
                ),
                onPressed: () {},
                child: const Text(
                  'Collect Now',
                  style: TextStyle(color: Colors.pinkAccent),
                )),

          ],
        )
      ],
    ),
  );
}

notificationButton(String title, String message, String dateTime, context) {
  return ListTile(
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          textScaleFactor: 1.1,
          style: GoogleFonts.lato(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white
          )
        ),
        const Divider(height: 8,),
        Text(
          message,
          style: GoogleFonts.lato(
            fontSize: 12, fontWeight: FontWeight.bold,
            color: Colors.grey
          )
        ),
        const Divider(height: 5,),
        Text(
          dateTime,
          style: const TextStyle(
              fontSize: 11, color: Color.fromARGB(255, 200, 200, 200)),
        ),
        const Divider(),
      ],
    ),
    trailing: IconButton(
        onPressed: () {},
        icon: const CircleAvatar(
            backgroundColor: Color(0x63B0BEC5),
            child: Icon(
              Icons.notifications_outlined,
              color: Colors.white,
              size: 30,
            ))),
    selected: true,
    onTap: () {
      const snackBar = SnackBar(
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
        content: Text(
          'Button Clicked',
          style: TextStyle(color: Colors.black),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    },
  );
}

profileButton(String text, IconData icon) {
  return TextButton.icon(
    style: TextButton.styleFrom(
      splashFactory: NoSplash.splashFactory,
      primary: Colors.white,
      padding: const EdgeInsets.all(6),
      backgroundColor: const Color.fromARGB(255, 95, 101, 114),
    ),
    onPressed: () {},
    icon: Text(
      text, style: GoogleFonts.lato(
        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white
      ),
    ),
    label: Icon(icon),
  );
}

profileButton2(String title, IconData icon, context) {
  return ListTile(
    leading: Icon(
      icon,
      color: Colors.white,
    ),
    title: Text(
      title,
      textScaleFactor: 1.1,
      style: GoogleFonts.lato(
        color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600
      )
    ),
    trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
    selected: true,
    onTap: () {
      const snackBar = SnackBar(
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
        content: Text(
          'Button Clicked',
          style: TextStyle(color: Colors.black),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    },
  );
}
