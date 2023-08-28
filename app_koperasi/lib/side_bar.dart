import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset(
                  'assets/bukit_asam.jpeg',
                  // width: 160,
                  // height: 100,
                ),
                const SizedBox(height: 10.0),
              ],
            ),
          ),
          InkWell(
            splashColor: Colors.amber,
            highlightColor: Colors.indigo,
            child: ListTile(
              leading: const Icon(
                Icons.home_filled,
                size: 26,
              ),
              title: const Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueGrey,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              onTap: () {
                // Aksi saat item dipilih
              },
            ),
          ),
          InkWell(
            highlightColor: Colors.indigo,
            splashColor: Colors.amber,
            child: ListTile(
              leading: const Icon(
                Icons.person,
                size: 26,
              ),
              title: const Text(
                'Account Setting',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueGrey,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              onTap: () {
                // Aksi saat item dipilih
              },
            ),
          ),
          const ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Icons.remove,
              color: Colors.indigo,
            ),
            title: Text(
              'TRANSAKSI',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.indigo,
                  fontWeight: FontWeight.w400),
            ),
          ),
          InkWell(
            highlightColor: Colors.indigo,
            splashColor: Colors.amber,
            child: ListTile(
              leading: const Icon(
                Icons.shopping_cart,
                size: 26,
              ),
              title: const Text(
                'Transaksi',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueGrey,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              onTap: () {
                // Aksi saat item dipilih
              },
            ),
          ),
          const ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Icons.remove,
              color: Colors.indigo,
            ),
            title: Text(
              'BARANG MASUK & KELUAR',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.indigo,
                  fontWeight: FontWeight.w400),
            ),
          ),
          InkWell(
            highlightColor: Colors.indigo,
            splashColor: Colors.amber,
            child: ListTile(
              leading: const Icon(
                Icons.shopping_cart_checkout,
                size: 26,
              ),
              title: const Text(
                'Pembelian',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueGrey,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              onTap: () {
                // Aksi saat item dipilih
              },
            ),
          ),
          const ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Icon(
              Icons.remove,
              color: Colors.indigo,
            ),
            title: Text(
              'USER',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.indigo,
                  fontWeight: FontWeight.w400),
            ),
          ),
          InkWell(
            highlightColor: Colors.indigo,
            splashColor: Colors.amber,
            child: ListTile(
              leading: const Icon(
                Icons.person_outline,
                size: 26,
              ),
              title: const Text(
                'Users',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueGrey,
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
              onTap: () {
                // Aksi saat item dipilih
              },
            ),
          ),
        ],
      ),
    );
  }
}
