import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pos_coffe/utils/reusable_textwidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List info = [];

  _initData() {
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
      info = jsonDecode(value);
    });
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

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
          ),
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
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.only(left: 18),
                scrollDirection: Axis.horizontal,
                itemCount: info.length,
                itemBuilder: (_, i) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 12),
                        padding: const EdgeInsets.only(bottom: 3),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage(info[i]['img']),
                          ),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 3,
                              offset: Offset(-0.1, 0.5),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              info[i]["title"],
                              style: const TextStyle(
                                  color: TextColors.mainTextColor),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
