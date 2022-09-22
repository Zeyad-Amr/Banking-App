import 'package:bankingapp/constants/color_constants.dart';
import 'package:bankingapp/models/customer_model.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  List<CustomerModel> customers = [
    CustomerModel(
        id: "500010001",
        balance: 50250,
        email: "zeyad@gmail.com",
        name: "Zeyad Amr",
        nationality: "Egypt",
        ssn: "12345678901234"),
    CustomerModel(
        id: "500010003",
        balance: 45862,
        email: "raneen@gmail.com",
        name: "Raneen Gaber",
        nationality: "Russia",
        ssn: "12345678901779"),
    CustomerModel(
        id: "500010004",
        balance: 24524,
        email: "mohamed@gmail.com",
        name: "Mohamed Amr",
        nationality: "USA",
        ssn: "12345678901789"),
    CustomerModel(
        id: "500010005",
        balance: 44251,
        email: "adam@gmail.com",
        name: "Adam Amr",
        nationality: "Italty",
        ssn: "12345678901456"),
    CustomerModel(
        id: "500010006",
        balance: 4821,
        email: "moamen@gmail.com",
        name: "Mo'men Mohamed",
        nationality: "India",
        ssn: "12345678901237"),
    CustomerModel(
        id: "500010007",
        balance: 7854,
        email: "raouf@gmail.com",
        name: "Ahmed Raouf",
        nationality: "Japan",
        ssn: "12345678901782"),
    CustomerModel(
        id: "500010008",
        balance: 44251,
        email: "anwar@gmail.com",
        name: "Omar Anwar",
        nationality: "China",
        ssn: "12345678901451"),
    CustomerModel(
        id: "500010009",
        balance: 54515,
        email: "saad@gmail.com",
        name: "Omar Saad",
        nationality: "Mexico",
        ssn: "12345678901233"),
    CustomerModel(
        id: "500010010",
        balance: 11453,
        email: "amr@gmail.com",
        name: "Amr Fekry",
        nationality: "France",
        ssn: "12345678901722"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: Row(
                children: [
                  Container(
                    color: kPrimaryColor,
                    width: 6,
                    height: 25,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Transactions",
                    style: GoogleFonts.inter(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: kDarkGreyColor),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: customers.length,
                itemBuilder: (context, index) {
                  CustomerModel c = customers[index];
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: ListTile(
                        title: Text(c.name!),
                        subtitle: Text(c.nationality!),
                        trailing: Text(
                          "${c.balance!.toInt()} \$",
                          style: GoogleFonts.inter(
                              // fontSize: 40,
                              // fontWeight: FontWeight.w700,
                              color: Colors.red),
                        ),
                        leading:
                            const CircleAvatar(backgroundColor: kPrimaryColor),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
