import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttershop/providers/product_provider.dart';
import 'package:provider/provider.dart';
import '../theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    getInit();
    super.initState();
  }

  getInit() async {
    await Provider.of<ProductProvider>(context, listen: false).getProducts();
    Navigator.pushReplacementNamed(context, '/signin');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor1,
        body: Center(
          child: Container(
            width: 130,
            height: 150,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/logoyaser.png'))),
          ),
        ),
      ),
    );
  }
}
