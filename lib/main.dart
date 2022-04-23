import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:inventori/home.dart';
import 'package:inventori/product.dart';
import 'package:inventori/transaction.dart';
import 'package:inventori/product_add.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Inventori',
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Transactions',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return Home();
          // break;
          case 1:
            return Product();
          // break;
          case 2:
            return Product_Add();
          // break;
          case 3:
            return Transaction();
          // break;
          default:
            return Home();
        }
      },
    );
  }
}
