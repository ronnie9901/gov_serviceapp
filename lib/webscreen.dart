import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gov_serviceapp/search.dart';
import 'package:gov_serviceapp/webpage.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var control =Get.put(Controller());
    return Container(
      color: Colors.grey.shade100,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          SizedBox(height: 50,),
            TextField(
              onSubmitted: (value) {
                if (value.isNotEmpty) {
                  control.change(value);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => WebViewPage(url: url),
                    ),

                  );
                }
                control.serch.close();
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: ' Search',
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search)
              ),
            ),
            SizedBox(height: 20),
            GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 3 / 2.7,
              ),
              children: [
                buildGridItem(
                  'assets/Umang_Preview.png',
                  "https://web.umang.gov.in/landing/",
                  context,
                ),
                buildGridItem(
                  'assets/images.jpeg',
                  "https://passportindia.gov.in/AppOnlineProject/user/mPassportSevaDownload/",
                  context,
                ),
                buildGridItem(
                  'assets/panjab.png',
                  "https://mseva.lgpunjab.gov.in/common-screen",
                  context,
                ),
                buildGridItem(
                  'assets/ksrtc.webp',
                  "https://awatar4.ksrtc.in/",
                  context,
                ),
                buildGridItem(
                  'assets/incometax.png',
                  "https://www.incometax.gov.in/iec/foportal/",
                  context,
                ),
                buildGridItem(
                  'assets/unnamed.png',
                  "https://aranya.gov.in/",
                  context,
                ),
                buildGridItem(
                  'assets/download.jpeg',
                  "https://apps.karnataka.gov.in/app/50/en",
                  context,
                ),
                buildGridItem(
                  'assets/gst.webp',
                  "https://mahagst.gov.in/en/gst-rate-finder-mobile-app",
                  context,
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}
String url='';
Widget buildGridItem(String imagePath, String url, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => WebViewPage(url: url),
        ),
      );
    },
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    ),
  );
}
class Controller extends GetxController {
  var serch = ''.obs;

  void change(String? value) {
    url = 'https://www.google.com/search?q=$value'; // Update search URL
  }
}