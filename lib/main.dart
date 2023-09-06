import 'package:flutter/material.dart';
import 'package:storeapp/screens/home_page.dart';
import 'package:storeapp/screens/product_screen.dart';
import 'package:storeapp/screens/update_product_page.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => HomePage(),
        // UpdateProductPage.id: (context) => UpdateProductPage(),
        ProductScreen.id: (context) => ProductScreen(),
      },
      initialRoute: HomePage.id,
    );
  }
}
