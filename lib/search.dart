import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    InAppWebViewController? inAppWebViewController;
    return Scaffold(
      appBar: AppBar(
          bottom: PreferredSize(
        preferredSize: Size.fromRadius(10),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (value) {
              if (value.isNotEmpty) {


              }
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: ' Search',
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search)),
          ),
        ),
      )),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: InAppWebView(
          initialUrlRequest: URLRequest(
            url: WebUri('https://www.google.com'),
          ),
          onWebViewCreated: (controller) {
            inAppWebViewController = controller;
          },
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
//
// class WebViewPage1 extends StatelessWidget {
//   final String url; // This can be either a fixed URL or a search URL
//
//   WebViewPage1({required this.url});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: InAppWebView(
//         initialUrlRequest: URLRequest(url:WebUri( url)), // Load the URL
//       ),
//     );
//   }
// }


