import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pos_coffe/utils/reusable_textwidget.dart';

class CatagoryMenu extends StatefulWidget {
  const CatagoryMenu({super.key});

  @override
  State<CatagoryMenu> createState() => _CatagoryMenuState();
}

class _CatagoryMenuState extends State<CatagoryMenu> {
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
