import 'package:bankingapp/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        // centerTitle: true,
        // title: const Text(
        //   "Super Bank",
        //   style: TextStyle(
        //     color: kPrimaryColor,
        //   ),
        // ),
        // leading: const Padding(
        //   padding: EdgeInsets.all(8.0),
        //   child: CircleAvatar(
        //     backgroundColor: kDarkGreyColor,
        //   ),
        // ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_active_outlined,
                color: kDarkGreyColor,
                size: 27,
              ))
        ],
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to",
                style: GoogleFonts.inter(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: kDarkGreyColor),
              ),
              Text(
                "Super Bank",
                style: GoogleFonts.inter(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: kPrimaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
