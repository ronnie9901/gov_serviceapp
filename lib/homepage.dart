import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:gov_serviceapp/webscreen.dart';
class ConnectivityScreen extends StatelessWidget {
  const ConnectivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: StreamBuilder(
            stream: Connectivity().onConnectivityChanged,
            builder: (context, snapshot) {
              if (snapshot.data!.contains(ConnectivityResult.mobile) ||
                  snapshot.data!.contains(ConnectivityResult.wifi)) {
                return WebScreen();
              }
              else {
                return SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 215,
                        child: Image.asset('assets/no.png'
                            ''),
                      ),
                      const Text(
                        "It seems you're offline",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      const Text(
                        "Check your internet connection",
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                );
              }
            },
            ),
       );
  }
}

