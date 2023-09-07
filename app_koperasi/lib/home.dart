import 'package:app_koperasi/side_bar.dart';
import 'package:app_koperasi/widget/list_widget_item.dart';
import 'package:app_koperasi/widget/menu_box.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 55.0,
        items: const [
          Icon(
            Icons.description,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          )
        ],
        color: Colors.blue.shade200,
        backgroundColor: Colors.black.withOpacity(0.01),
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      drawer: const SideBar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/bg_home_fix.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset('assets/bg_home_fix.png'),
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset('assets/bg_home_fix.png'),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                  child: Row(
                    children: [
                      Text(
                        'Kategory Item',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MenuBox(icon: Icons.liquor, text: "Air Mineral"),
                          MenuBox(icon: Icons.coffee, text: "Coffe Hangat"),
                          MenuBox(icon: Icons.restaurant, text: "Makan Berat"),
                          MenuBox(icon: Icons.restaurant, text: "Makan Berat"),
                          MenuBox(icon: Icons.restaurant, text: "Makan Berat"),
                          MenuBox(
                              icon: Icons.local_pizza, text: "Makan Ringan"),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(16, 16, 0, 0),
                        ),
                        Text(
                          'List Item',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 300,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          ListItemWidget(
                              foto: AssetImage("assets/menu_asset/coffe1.jpg"),
                              nameItem: "Hot Coffe",
                              category: "Minuman"),
                          ListItemWidget(
                              foto: AssetImage("assets/menu_asset/coffe1.jpg"),
                              nameItem: "Hot Coffe",
                              category: "Minuman"),
                          ListItemWidget(
                              foto: AssetImage("assets/menu_asset/coffe1.jpg"),
                              nameItem: "Hot Coffe",
                              category: "Minuman"),
                          ListItemWidget(
                              foto: AssetImage("assets/menu_asset/coffe1.jpg"),
                              nameItem: "Hot Coffe",
                              category: "Minuman"),
                          ListItemWidget(
                              foto: AssetImage("assets/menu_asset/coffe1.jpg"),
                              nameItem: "Hot Coffe",
                              category: "Minuman"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
