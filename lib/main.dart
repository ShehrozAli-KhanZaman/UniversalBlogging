// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Universal  Blogging',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 77, 17, 180)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Universal Blogging"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int progress = 0;
  late InAppWebViewController inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Universal Blogging',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 13, 1, 49),
      ),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
                url: Uri.parse(
                    "https://www.universalblogging.com/")), //https://techanzy.com/
            // onWebViewCreated: (InAppWebViewController controller {
            //   inAppWebViewController = controller;
            //}),
            onProgressChanged:
                (InAppWebViewController controller, int progress) =>
                    {progress = (progress / 100) as int},
          )
        ],
      ),
    );
  }
}
