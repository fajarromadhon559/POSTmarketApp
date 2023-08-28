import 'package:app_koperasi/screen/user.dart';
import 'package:app_koperasi/side_bar.dart';
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
      body: const Center(
        child: Text('Tutor'),
      ),
    );
  }
}
