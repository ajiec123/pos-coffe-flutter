import 'package:flutter/material.dart';
import 'package:pos_coffe/utils/reusable_textwidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.white,
        title: const Text(
          "Menu",
          style: TextStyle(
              color: TextColors.bigTextColor,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto'),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: ColorsApp.primaryColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: 'Cari di sini',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 80,
                width: 80,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(2.0, 2.1),
                        blurRadius: 6.0)
                  ],
                  // color: Colors.white54,
                  // border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 80,
                width: 80,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.no_drinks,
                      color: ColorsApp.primaryColor,
                    ),
                    Center(
                      child: Row(),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 80,
                width: 80,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                height: 80,
                width: 80,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
