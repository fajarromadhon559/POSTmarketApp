import 'package:app_koperasi/screen/user.dart';
import 'package:app_koperasi/side_bar.dart';
import 'package:app_koperasi/widget/menu_box.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const User();
                }));
              },
              icon: const Icon(
                Icons.account_circle_outlined,
                size: 28,
              ))
        ],
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: const SideBar(),
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Card(
          elevation: 4.0,
          child: Column(
            children: [
              Image.asset('assets/bg_home_fix.png'),
              const Padding(
                padding: EdgeInsets.all(6.0),
                child: Column(
                  children: [
                    Text(
                      'Kategory Item',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MenuBox(icon: Icons.liquor, text: "Air Mineral"),
                    MenuBox(icon: Icons.coffee, text: "Coffe Hangat"),
                    MenuBox(icon: Icons.restaurant, text: "Makan Berat"),
                    MenuBox(icon: Icons.local_pizza, text: "Makan Ringan"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
