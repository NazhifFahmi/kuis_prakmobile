import 'package:flutter/material.dart';
import 'package:foodapp/data/listmenu.dart';
import 'package:foodapp/pages/login.dart';
import 'package:foodapp/pages/order.dart';
import 'package:foodapp/pages/about.dart';

class HomePage extends StatefulWidget {
  final String username;
  const HomePage({Key? key, required this.username}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        titleTextStyle: TextStyle(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Hai ${widget.username}\n',
                style: TextStyle(fontSize: 16),
              ),
              TextSpan(
                text: 'Mau Pesan Apa Hari Ini?',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/piring.jfif'),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Daftar Menu :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: GridView.count(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                  children:
                      menuItems.map((item) {
                        return MenuCard(
                          name: item.name,
                          price: 'Rp. ${item.price}',
                        );
                      }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AboutPage()),
          );
        },
        child: Icon(Icons.info),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String name;
  final String price;

  const MenuCard({Key? key, required this.name, required this.price})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.asset(
              'assets/images/piring.jfif',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(price, style: const TextStyle(color: Colors.green)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderPage(name: name, price: price),
                  ),
                );
              },
              child: const Text('Pesan'),
            ),
          ),
        ],
      ),
    );
  }
}
