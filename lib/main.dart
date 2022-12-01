import 'package:flutter/material.dart';
import 'package:fluttershop/pages/cart_page.dart';
import 'package:fluttershop/pages/checkout_page.dart';
import 'package:fluttershop/pages/checkout_success_page.dart';
import 'package:fluttershop/pages/detail_chat_page.dart';
import 'package:fluttershop/pages/edit_profile_page.dart';
import 'package:fluttershop/pages/home/main_page.dart';
import 'package:fluttershop/pages/product_page.dart';
import 'package:fluttershop/pages/signin_page.dart';
import 'package:fluttershop/pages/signup_page.dart';
import 'package:fluttershop/pages/splash_page.dart';
import 'package:fluttershop/providers/auth_provider.dart';
import 'package:fluttershop/providers/product_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/signin': (context) => SignInPage(),
          '/signup': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile-page': (context) => EditProfilePage(),
          '/product': (context) => ProductPage(),
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
